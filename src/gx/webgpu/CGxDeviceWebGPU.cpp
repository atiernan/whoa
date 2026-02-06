#include "gx/webgpu/CGxDeviceWebGPU.hpp"
#include "gx/CGxBatch.hpp"
#include "gx/Buffer.hpp"
#include "gx/buffer/Types.hpp"
#include "gx/Types.hpp"
#include "gx/texture/CGxTex.hpp"
#include "gx/shader/CGxShader.hpp"
#include <storm/Memory.hpp>
#include "math/Utils.hpp"
#include <algorithm>
#include <cmath>
#include <cstring>
#include <fstream>
#include <string>
#include <emscripten/emscripten.h>
#include <emscripten/html5.h>
#include <webgpu/webgpu.h>

// Format mapping: GxTex format → WGPUTextureFormat
// DXT formats map to RGBA8Unorm (decompressed on GPU via compute shader)
// 16-bit formats map to RGBA8Unorm (converted on CPU during upload)
static WGPUTextureFormat s_gxTexFmtToWGPUFmt[] = {
    WGPUTextureFormat_Undefined,   // GxTex_Unknown
    WGPUTextureFormat_RGBA8Unorm,  // GxTex_Abgr8888
    WGPUTextureFormat_BGRA8Unorm,  // GxTex_Argb8888
    WGPUTextureFormat_RGBA8Unorm,  // GxTex_Argb4444 (CPU convert)
    WGPUTextureFormat_RGBA8Unorm,  // GxTex_Argb1555 (CPU convert)
    WGPUTextureFormat_RGBA8Unorm,  // GxTex_Rgb565   (CPU convert)
    WGPUTextureFormat_RGBA8Unorm,  // GxTex_Dxt1     (GPU decompress)
    WGPUTextureFormat_RGBA8Unorm,  // GxTex_Dxt3     (GPU decompress)
    WGPUTextureFormat_RGBA8Unorm,  // GxTex_Dxt5     (GPU decompress)
    WGPUTextureFormat_RG8Unorm,    // GxTex_Uv88
    WGPUTextureFormat_RG16Float,   // GxTex_Gr1616F
    WGPUTextureFormat_R32Float,    // GxTex_R32F
    WGPUTextureFormat_Depth24Plus, // GxTex_D24X8
};

// WGSL compute shader for DXT (BC1/BC2/BC3) decompression
static const char* s_dxtDecompressShader = R"(
struct Params {
    mode: u32,
    width: u32,
    height: u32,
    blocksPerRow: u32,
};

@group(0) @binding(0) var<uniform> params: Params;
@group(0) @binding(1) var<storage, read> data: array<u32>;
@group(0) @binding(2) var outputTex: texture_storage_2d<rgba8unorm, write>;

fn rgb565(c: u32) -> vec3<f32> {
    return vec3<f32>(
        f32((c >> 11u) & 0x1Fu) / 31.0,
        f32((c >> 5u) & 0x3Fu) / 63.0,
        f32(c & 0x1Fu) / 31.0
    );
}

fn bc3AlphaIdx(w0: u32, w1: u32, idx: u32) -> u32 {
    let bp = 16u + idx * 3u;
    if (bp >= 32u) {
        return (w1 >> (bp - 32u)) & 7u;
    }
    let v = w0 >> bp;
    if (bp + 3u > 32u) {
        let lb = 32u - bp;
        return ((v & ((1u << lb) - 1u)) | (w1 << lb)) & 7u;
    }
    return v & 7u;
}

fn bc1Color(c0v: u32, c1v: u32, bits: u32) -> vec4<f32> {
    let c0 = rgb565(c0v);
    let c1 = rgb565(c1v);
    if (c0v > c1v) {
        switch (bits) {
            case 0u: { return vec4<f32>(c0, 1.0); }
            case 1u: { return vec4<f32>(c1, 1.0); }
            case 2u: { return vec4<f32>(c0 * (2.0/3.0) + c1 * (1.0/3.0), 1.0); }
            default: { return vec4<f32>(c0 * (1.0/3.0) + c1 * (2.0/3.0), 1.0); }
        }
    } else {
        switch (bits) {
            case 0u: { return vec4<f32>(c0, 1.0); }
            case 1u: { return vec4<f32>(c1, 1.0); }
            case 2u: { return vec4<f32>((c0 + c1) * 0.5, 1.0); }
            default: { return vec4<f32>(0.0, 0.0, 0.0, 0.0); }
        }
    }
}

fn bc1Rgb(c0v: u32, c1v: u32, bits: u32) -> vec3<f32> {
    let c0 = rgb565(c0v);
    let c1 = rgb565(c1v);
    switch (bits) {
        case 0u: { return c0; }
        case 1u: { return c1; }
        case 2u: { return c0 * (2.0/3.0) + c1 * (1.0/3.0); }
        default: { return c0 * (1.0/3.0) + c1 * (2.0/3.0); }
    }
}

@compute @workgroup_size(4, 4, 1)
fn main(
    @builtin(workgroup_id) bid: vec3<u32>,
    @builtin(local_invocation_id) lid: vec3<u32>,
) {
    let px = bid.x * 4u + lid.x;
    let py = bid.y * 4u + lid.y;
    if (px >= params.width || py >= params.height) { return; }

    let bi = bid.y * params.blocksPerRow + bid.x;
    let pi = lid.y * 4u + lid.x;
    var color: vec4<f32>;

    if (params.mode == 0u) {
        // BC1 (DXT1): 8 bytes = 2 u32s per block
        let off = bi * 2u;
        let w0 = data[off];
        let w1 = data[off + 1u];
        color = bc1Color(w0 & 0xFFFFu, (w0 >> 16u) & 0xFFFFu, (w1 >> (pi * 2u)) & 3u);

    } else if (params.mode == 1u) {
        // BC2 (DXT3): 16 bytes = 4 u32s per block
        let off = bi * 4u;
        let aw0 = data[off];
        let aw1 = data[off + 1u];
        let cw0 = data[off + 2u];
        let cw1 = data[off + 3u];

        // 4-bit explicit alpha
        var av: u32;
        if (pi < 8u) {
            av = (aw0 >> (pi * 4u)) & 0xFu;
        } else {
            av = (aw1 >> ((pi - 8u) * 4u)) & 0xFu;
        }

        let rgb = bc1Rgb(cw0 & 0xFFFFu, (cw0 >> 16u) & 0xFFFFu, (cw1 >> (pi * 2u)) & 3u);
        color = vec4<f32>(rgb, f32(av) / 15.0);

    } else {
        // BC3 (DXT5): 16 bytes = 4 u32s per block
        let off = bi * 4u;
        let aw0 = data[off];
        let aw1 = data[off + 1u];
        let cw0 = data[off + 2u];
        let cw1 = data[off + 3u];

        // Interpolated alpha
        let a0 = f32(aw0 & 0xFFu);
        let a1 = f32((aw0 >> 8u) & 0xFFu);
        let ai = bc3AlphaIdx(aw0, aw1, pi);

        var alpha: f32;
        if (u32(a0) > u32(a1)) {
            switch (ai) {
                case 0u: { alpha = a0; }
                case 1u: { alpha = a1; }
                case 2u: { alpha = (6.0 * a0 + a1) / 7.0; }
                case 3u: { alpha = (5.0 * a0 + 2.0 * a1) / 7.0; }
                case 4u: { alpha = (4.0 * a0 + 3.0 * a1) / 7.0; }
                case 5u: { alpha = (3.0 * a0 + 4.0 * a1) / 7.0; }
                case 6u: { alpha = (2.0 * a0 + 5.0 * a1) / 7.0; }
                default: { alpha = (a0 + 6.0 * a1) / 7.0; }
            }
        } else {
            switch (ai) {
                case 0u: { alpha = a0; }
                case 1u: { alpha = a1; }
                case 2u: { alpha = (4.0 * a0 + a1) / 5.0; }
                case 3u: { alpha = (3.0 * a0 + 2.0 * a1) / 5.0; }
                case 4u: { alpha = (2.0 * a0 + 3.0 * a1) / 5.0; }
                case 5u: { alpha = (a0 + 4.0 * a1) / 5.0; }
                case 6u: { alpha = 0.0; }
                default: { alpha = 255.0; }
            }
        }

        let rgb = bc1Rgb(cw0 & 0xFFFFu, (cw0 >> 16u) & 0xFFFFu, (cw1 >> (pi * 2u)) & 3u);
        color = vec4<f32>(rgb, alpha / 255.0);
    }

    textureStore(outputTex, vec2<i32>(i32(px), i32(py)), color);
}
)";
// Blend factor tables (indexed by EGxBlend)
static WGPUBlendFactor s_srcBlend[] = {
    WGPUBlendFactor_One,              // GxBlend_Opaque
    WGPUBlendFactor_One,              // GxBlend_AlphaKey
    WGPUBlendFactor_SrcAlpha,         // GxBlend_Alpha
    WGPUBlendFactor_SrcAlpha,         // GxBlend_Add
    WGPUBlendFactor_Dst,              // GxBlend_Mod
    WGPUBlendFactor_Dst,              // GxBlend_Mod2x
    WGPUBlendFactor_Dst,              // GxBlend_ModAdd
    WGPUBlendFactor_OneMinusSrcAlpha, // GxBlend_InvSrcAlphaAdd
    WGPUBlendFactor_OneMinusSrcAlpha, // GxBlend_InvSrcAlphaOpaque
    WGPUBlendFactor_SrcAlpha,         // GxBlend_SrcAlphaOpaque
    WGPUBlendFactor_One,              // GxBlend_NoAlphaAdd
    WGPUBlendFactor_Constant,         // GxBlend_ConstantAlpha
};

static WGPUBlendFactor s_dstBlend[] = {
    WGPUBlendFactor_Zero,             // GxBlend_Opaque
    WGPUBlendFactor_Zero,             // GxBlend_AlphaKey
    WGPUBlendFactor_OneMinusSrcAlpha, // GxBlend_Alpha
    WGPUBlendFactor_One,              // GxBlend_Add
    WGPUBlendFactor_Zero,             // GxBlend_Mod
    WGPUBlendFactor_Src,              // GxBlend_Mod2x
    WGPUBlendFactor_One,              // GxBlend_ModAdd
    WGPUBlendFactor_One,              // GxBlend_InvSrcAlphaAdd
    WGPUBlendFactor_Zero,             // GxBlend_InvSrcAlphaOpaque
    WGPUBlendFactor_Zero,             // GxBlend_SrcAlphaOpaque
    WGPUBlendFactor_One,              // GxBlend_NoAlphaAdd
    WGPUBlendFactor_OneMinusConstant, // GxBlend_ConstantAlpha
};

static WGPUCompareFunction s_depthCompare[] = {
    WGPUCompareFunction_LessEqual,    // 0
    WGPUCompareFunction_Equal,        // 1
    WGPUCompareFunction_GreaterEqual, // 2
    WGPUCompareFunction_Less,         // 3
};

static WGPUPrimitiveTopology s_primTopology[] = {
    WGPUPrimitiveTopology_PointList,    // GxPrim_Points
    WGPUPrimitiveTopology_LineList,     // GxPrim_Lines
    WGPUPrimitiveTopology_LineStrip,    // GxPrim_LineStrip
    WGPUPrimitiveTopology_TriangleList, // GxPrim_Triangles
    WGPUPrimitiveTopology_TriangleStrip,// GxPrim_TriangleStrip
    WGPUPrimitiveTopology_TriangleList, // GxPrim_TriangleFan (converted)
};

// Per-format vertex attribute layouts for pipeline creation
// Each entry maps GxVertexAttrib to WGPUVertexFormat and shader location
struct VertexFormatDesc {
    const char* vsEntry;
    uint32_t attribCount;
    struct {
        uint32_t shaderLocation;
        WGPUVertexFormat format;
        EGxVertexAttrib attrib;
    } attribs[6]; // max 6 attributes per format
    uint32_t stride;
};

static VertexFormatDesc s_vertexFormatDescs[] = {
    // Location numbers use GxVA_ enum values so that BLS shaders (which assign
    // locations based on DX usage semantics) match the vertex buffer layout.
    //   Position=0, BlendWeight=1, BlendIndices=2, Normal=3,
    //   Color0=4, Color1=5, TexCoord0=6, TexCoord1=7, ...

    // GxVBF_P (0)
    { "vs_p", 1, {
        { GxVA_Position, WGPUVertexFormat_Float32x3, GxVA_Position },
    }, 12 },
    // GxVBF_PN (1)
    { "vs_pn", 2, {
        { GxVA_Position, WGPUVertexFormat_Float32x3, GxVA_Position },
        { GxVA_Normal,   WGPUVertexFormat_Float32x3, GxVA_Normal },
    }, 24 },
    // GxVBF_PNC (2)
    { "vs_pnc", 3, {
        { GxVA_Position, WGPUVertexFormat_Float32x3, GxVA_Position },
        { GxVA_Normal,   WGPUVertexFormat_Float32x3, GxVA_Normal },
        { GxVA_Color0,   WGPUVertexFormat_Unorm8x4,  GxVA_Color0 },
    }, 28 },
    // GxVBF_PNT (3)
    { "vs_pnt", 3, {
        { GxVA_Position,  WGPUVertexFormat_Float32x3, GxVA_Position },
        { GxVA_Normal,    WGPUVertexFormat_Float32x3, GxVA_Normal },
        { GxVA_TexCoord0, WGPUVertexFormat_Float32x2, GxVA_TexCoord0 },
    }, 32 },
    // GxVBF_PNCT (4)
    { "vs_pnct", 4, {
        { GxVA_Position,  WGPUVertexFormat_Float32x3, GxVA_Position },
        { GxVA_Normal,    WGPUVertexFormat_Float32x3, GxVA_Normal },
        { GxVA_Color0,    WGPUVertexFormat_Unorm8x4,  GxVA_Color0 },
        { GxVA_TexCoord0, WGPUVertexFormat_Float32x2, GxVA_TexCoord0 },
    }, 36 },
    // GxVBF_PNT2 (5)
    { "vs_pnt2", 4, {
        { GxVA_Position,  WGPUVertexFormat_Float32x3, GxVA_Position },
        { GxVA_Normal,    WGPUVertexFormat_Float32x3, GxVA_Normal },
        { GxVA_TexCoord0, WGPUVertexFormat_Float32x2, GxVA_TexCoord0 },
        { GxVA_TexCoord1, WGPUVertexFormat_Float32x2, GxVA_TexCoord1 },
    }, 40 },
    // GxVBF_PNCT2 (6)
    { "vs_pnct2", 5, {
        { GxVA_Position,  WGPUVertexFormat_Float32x3, GxVA_Position },
        { GxVA_Normal,    WGPUVertexFormat_Float32x3, GxVA_Normal },
        { GxVA_Color0,    WGPUVertexFormat_Unorm8x4,  GxVA_Color0 },
        { GxVA_TexCoord0, WGPUVertexFormat_Float32x2, GxVA_TexCoord0 },
        { GxVA_TexCoord1, WGPUVertexFormat_Float32x2, GxVA_TexCoord1 },
    }, 44 },
    // GxVBF_PC (7)
    { "vs_pc", 2, {
        { GxVA_Position, WGPUVertexFormat_Float32x3, GxVA_Position },
        { GxVA_Color0,   WGPUVertexFormat_Unorm8x4,  GxVA_Color0 },
    }, 16 },
    // GxVBF_PCT (8)
    { "vs_pct", 3, {
        { GxVA_Position,  WGPUVertexFormat_Float32x3, GxVA_Position },
        { GxVA_Color0,    WGPUVertexFormat_Unorm8x4,  GxVA_Color0 },
        { GxVA_TexCoord0, WGPUVertexFormat_Float32x2, GxVA_TexCoord0 },
    }, 24 },
    // GxVBF_PCT2 (9)
    { "vs_pct2", 4, {
        { GxVA_Position,  WGPUVertexFormat_Float32x3, GxVA_Position },
        { GxVA_Color0,    WGPUVertexFormat_Unorm8x4,  GxVA_Color0 },
        { GxVA_TexCoord0, WGPUVertexFormat_Float32x2, GxVA_TexCoord0 },
        { GxVA_TexCoord1, WGPUVertexFormat_Float32x2, GxVA_TexCoord1 },
    }, 32 },
    // GxVBF_PT (10)
    { "vs_pt", 2, {
        { GxVA_Position,  WGPUVertexFormat_Float32x3, GxVA_Position },
        { GxVA_TexCoord0, WGPUVertexFormat_Float32x2, GxVA_TexCoord0 },
    }, 20 },
    // GxVBF_PT2 (11)
    { "vs_pt2", 3, {
        { GxVA_Position,  WGPUVertexFormat_Float32x3, GxVA_Position },
        { GxVA_TexCoord0, WGPUVertexFormat_Float32x2, GxVA_TexCoord0 },
        { GxVA_TexCoord1, WGPUVertexFormat_Float32x2, GxVA_TexCoord1 },
    }, 28 },
    // GxVBF_PBNT2 (12)
    { "vs_pbnt2", 6, {
        { GxVA_Position,     WGPUVertexFormat_Float32x3, GxVA_Position },
        { GxVA_BlendWeight,  WGPUVertexFormat_Unorm8x4,  GxVA_BlendWeight },
        { GxVA_BlendIndices, WGPUVertexFormat_Uint8x4,   GxVA_BlendIndices },
        { GxVA_Normal,       WGPUVertexFormat_Float32x3,  GxVA_Normal },
        { GxVA_TexCoord0,    WGPUVertexFormat_Float32x2,  GxVA_TexCoord0 },
        { GxVA_TexCoord1,    WGPUVertexFormat_Float32x2,  GxVA_TexCoord1 },
    }, 48 },
    // GxVBF_PNC2T2 (13)
    { "vs_pnc2t2", 6, {
        { GxVA_Position,  WGPUVertexFormat_Float32x3, GxVA_Position },
        { GxVA_Normal,    WGPUVertexFormat_Float32x3, GxVA_Normal },
        { GxVA_Color0,    WGPUVertexFormat_Unorm8x4,  GxVA_Color0 },
        { GxVA_Color1,    WGPUVertexFormat_Unorm8x4,  GxVA_Color1 },
        { GxVA_TexCoord0, WGPUVertexFormat_Float32x2, GxVA_TexCoord0 },
        { GxVA_TexCoord1, WGPUVertexFormat_Float32x2, GxVA_TexCoord1 },
    }, 48 },
};

// Factory
CGxDevice* CGxDevice::NewWebGPU() {
    return new CGxDeviceWebGPU();
}

// Constructor / Destructor

CGxDeviceWebGPU::CGxDeviceWebGPU() {
    this->m_api = GxApi_WebGPU;
}

CGxDeviceWebGPU::~CGxDeviceWebGPU() {
    IDestroyRenderPipeline();
    IDestroyDepthTexture();

    if (this->m_dxtPipeline) {
        wgpuComputePipelineRelease(this->m_dxtPipeline);
    }
    if (this->m_dxtBindGroupLayout) {
        wgpuBindGroupLayoutRelease(this->m_dxtBindGroupLayout);
    }
    if (this->m_dxtShaderModule) {
        wgpuShaderModuleRelease(this->m_dxtShaderModule);
    }
    if (this->m_queue) {
        wgpuQueueRelease(this->m_queue);
    }
    if (this->m_device) {
        wgpuDeviceRelease(this->m_device);
    }
    if (this->m_adapter) {
        wgpuAdapterRelease(this->m_adapter);
    }
    if (this->m_surface) {
        wgpuSurfaceRelease(this->m_surface);
    }
    if (this->m_instance) {
        wgpuInstanceRelease(this->m_instance);
    }
}

// Device creation

int32_t CGxDeviceWebGPU::DeviceCreate(int32_t (*windowProc)(void* window, uint32_t message, uintptr_t wparam, intptr_t lparam), const CGxFormat& format) {
    CGxDevice::DeviceCreate(windowProc, format);

    // Get canvas dimensions
    double cssWidth, cssHeight;
    emscripten_get_element_css_size("#canvas", &cssWidth, &cssHeight);
    this->m_canvasWidth = static_cast<uint32_t>(cssWidth);
    this->m_canvasHeight = static_cast<uint32_t>(cssHeight);

    // Create instance
    this->m_instance = wgpuCreateInstance(nullptr);
    if (!this->m_instance) {
        CGxDevice::Log("WebGPU: Failed to create instance");
        return 0;
    }

    // Create surface from canvas
    WGPUEmscriptenSurfaceSourceCanvasHTMLSelector canvasDesc = {};
    canvasDesc.chain.sType = WGPUSType_EmscriptenSurfaceSourceCanvasHTMLSelector;
    canvasDesc.selector.data = "#canvas";
    canvasDesc.selector.length = 7;

    WGPUSurfaceDescriptor surfaceDesc = {};
    surfaceDesc.nextInChain = &canvasDesc.chain;

    this->m_surface = wgpuInstanceCreateSurface(this->m_instance, &surfaceDesc);
    if (!this->m_surface) {
        CGxDevice::Log("WebGPU: Failed to create surface");
        return 0;
    }

    // Request adapter (synchronous wait via emscripten_sleep)
    WGPURequestAdapterOptions adapterOpts = {};
    adapterOpts.powerPreference = WGPUPowerPreference_HighPerformance;
    adapterOpts.compatibleSurface = this->m_surface;

    struct AdapterReq { CGxDeviceWebGPU* self; bool done; } adapterReq = { this, false };

    WGPURequestAdapterCallbackInfo adapterCb = {};
    adapterCb.mode = WGPUCallbackMode_AllowSpontaneous;
    adapterCb.callback = [](WGPURequestAdapterStatus status, WGPUAdapter adapter, WGPUStringView message, void* ud1, void* ud2) {
        auto* req = static_cast<AdapterReq*>(ud1);
        if (status == WGPURequestAdapterStatus_Success) {
            req->self->m_adapter = adapter;
        }
        req->done = true;
    };
    adapterCb.userdata1 = &adapterReq;

    wgpuInstanceRequestAdapter(this->m_instance, &adapterOpts, adapterCb);
    while (!adapterReq.done) {
        wgpuInstanceProcessEvents(this->m_instance);
        emscripten_sleep(10);
    }

    if (!this->m_adapter) {
        CGxDevice::Log("WebGPU: Failed to get adapter");
        return 0;
    }

    // Request device
    WGPUDeviceDescriptor deviceDesc = {};
    WGPUStringView deviceLabel = { "Whoa WebGPU Device", WGPU_STRLEN };
    deviceDesc.label = deviceLabel;

    // Error callback to catch silent shader/pipeline errors
    deviceDesc.uncapturedErrorCallbackInfo.callback = [](WGPUDevice const* device, WGPUErrorType type, WGPUStringView message, void* ud1, void* ud2) {
        CGxDevice::Log("WebGPU ERROR type=%d: %.*s", static_cast<int>(type), static_cast<int>(message.length), message.data);
    };

    struct DeviceReq { CGxDeviceWebGPU* self; bool done; } deviceReq = { this, false };

    WGPURequestDeviceCallbackInfo deviceCb = {};
    deviceCb.mode = WGPUCallbackMode_AllowSpontaneous;
    deviceCb.callback = [](WGPURequestDeviceStatus status, WGPUDevice device, WGPUStringView message, void* ud1, void* ud2) {
        auto* req = static_cast<DeviceReq*>(ud1);
        if (status == WGPURequestDeviceStatus_Success) {
            req->self->m_device = device;
        }
        req->done = true;
    };
    deviceCb.userdata1 = &deviceReq;

    wgpuAdapterRequestDevice(this->m_adapter, &deviceDesc, deviceCb);
    while (!deviceReq.done) {
        wgpuInstanceProcessEvents(this->m_instance);
        emscripten_sleep(10);
    }

    if (!this->m_device) {
        CGxDevice::Log("WebGPU: Failed to get device");
        return 0;
    }

    // Get queue
    this->m_queue = wgpuDeviceGetQueue(this->m_device);

    // Configure surface
    WGPUSurfaceConfiguration surfaceConfig = {};
    surfaceConfig.device = this->m_device;
    surfaceConfig.format = this->m_surfaceFormat;
    surfaceConfig.usage = WGPUTextureUsage_RenderAttachment;
    surfaceConfig.width = this->m_canvasWidth;
    surfaceConfig.height = this->m_canvasHeight;
    surfaceConfig.presentMode = WGPUPresentMode_Fifo;
    surfaceConfig.alphaMode = WGPUCompositeAlphaMode_Opaque;

    wgpuSurfaceConfigure(this->m_surface, &surfaceConfig);

    // Create depth texture
    ICreateDepthTexture();

    // Set capabilities
    ISetCaps(format);

    // Create buffer pools and stream buffers
    this->DeviceCreatePools();
    this->DeviceCreateStreamBufs();

    // Initialize render states
    this->IRsInit();

    // Set window rect
    CRect windowRect = { 0.0f, 0.0f, static_cast<float>(this->m_canvasHeight), static_cast<float>(this->m_canvasWidth) };
    this->DeviceSetDefWindow(windowRect);
    this->DeviceSetCurWindow(windowRect);

    this->m_context = 1;

    return 1;
}

int32_t CGxDeviceWebGPU::DeviceSetFormat(const CGxFormat& format) {
    return CGxDevice::DeviceSetFormat(format);
}

// Window

void* CGxDeviceWebGPU::DeviceWindow() {
    return nullptr;
}

void CGxDeviceWebGPU::DeviceWM(EGxWM wm, uintptr_t param1, uintptr_t param2) {
    if (wm == GxWM_Size) {
        this->m_canvasWidth = static_cast<uint32_t>(param1);
        this->m_canvasHeight = static_cast<uint32_t>(param2);

        if (this->m_surface && this->m_device) {
            WGPUSurfaceConfiguration surfaceConfig = {};
            surfaceConfig.device = this->m_device;
            surfaceConfig.format = this->m_surfaceFormat;
            surfaceConfig.usage = WGPUTextureUsage_RenderAttachment;
            surfaceConfig.width = this->m_canvasWidth;
            surfaceConfig.height = this->m_canvasHeight;
            surfaceConfig.presentMode = WGPUPresentMode_Fifo;
            surfaceConfig.alphaMode = WGPUCompositeAlphaMode_Opaque;

            wgpuSurfaceConfigure(this->m_surface, &surfaceConfig);

            IDestroyDepthTexture();
            ICreateDepthTexture();
        }

        CRect windowRect = { 0.0f, 0.0f, static_cast<float>(this->m_canvasHeight), static_cast<float>(this->m_canvasWidth) };
        this->DeviceSetCurWindow(windowRect);
    }
}

void CGxDeviceWebGPU::CapsWindowSize(CRect& rect) {
    rect.minX = 0.0f;
    rect.minY = 0.0f;
    rect.maxX = static_cast<float>(this->m_canvasWidth);
    rect.maxY = static_cast<float>(this->m_canvasHeight);
}

void CGxDeviceWebGPU::CapsWindowSizeInScreenCoords(CRect& dst) {
    CapsWindowSize(dst);
}

// Capabilities

void CGxDeviceWebGPU::ISetCaps(const CGxFormat& format) {
    this->m_caps.m_colorFormat = GxCF_rgba;
    this->m_caps.m_texFilterAnisotropic = 1;
    this->m_caps.m_maxTexAnisotropy = 16;
    this->m_caps.m_pixelCenterOnEdge = 1;

    // Advertise shader support so CShaderEffect::s_enableShaders gets set,
    // which gates 3D model rendering (CM2SceneRender::DrawBatch).
    this->m_caps.m_shaderTargets[GxSh_Vertex] = GxShVS_wgsl;
    this->m_caps.m_shaderTargets[GxSh_Pixel] = GxShPS_wgsl;

    for (int i = 0; i < GxTexTargets_Last; i++) {
        this->m_caps.m_texMaxSize[i] = 8192;
        this->m_caps.m_texTarget[i] = 1;
    }

    this->m_caps.m_texFmt[GxTex_Argb8888] = 1;
    this->m_caps.m_texFmt[GxTex_Argb4444] = 1;
    this->m_caps.m_texFmt[GxTex_Argb1555] = 1;
    this->m_caps.m_texFmt[GxTex_Rgb565] = 1;
    this->m_caps.m_texFmt[GxTex_Dxt1] = 1;
    this->m_caps.m_texFmt[GxTex_Dxt3] = 1;
    this->m_caps.m_texFmt[GxTex_Dxt5] = 1;
}

// Depth texture

void CGxDeviceWebGPU::ICreateDepthTexture() {
    if (this->m_canvasWidth == 0 || this->m_canvasHeight == 0) {
        return;
    }

    WGPUTextureDescriptor depthDesc = {};
    WGPUStringView depthLabel = { "Depth Texture", WGPU_STRLEN };
    depthDesc.label = depthLabel;
    depthDesc.usage = WGPUTextureUsage_RenderAttachment;
    depthDesc.dimension = WGPUTextureDimension_2D;
    depthDesc.size = { this->m_canvasWidth, this->m_canvasHeight, 1 };
    depthDesc.format = WGPUTextureFormat_Depth24Plus;
    depthDesc.mipLevelCount = 1;
    depthDesc.sampleCount = 1;

    this->m_depthTexture = wgpuDeviceCreateTexture(this->m_device, &depthDesc);

    WGPUTextureViewDescriptor viewDesc = {};
    viewDesc.format = WGPUTextureFormat_Depth24Plus;
    viewDesc.dimension = WGPUTextureViewDimension_2D;
    viewDesc.mipLevelCount = 1;
    viewDesc.arrayLayerCount = 1;

    this->m_depthTextureView = wgpuTextureCreateView(this->m_depthTexture, &viewDesc);
}

void CGxDeviceWebGPU::IDestroyDepthTexture() {
    if (this->m_depthTextureView) {
        wgpuTextureViewRelease(this->m_depthTextureView);
        this->m_depthTextureView = nullptr;
    }
    if (this->m_depthTexture) {
        wgpuTextureDestroy(this->m_depthTexture);
        wgpuTextureRelease(this->m_depthTexture);
        this->m_depthTexture = nullptr;
    }
}

// Frame lifecycle

void CGxDeviceWebGPU::SceneClear(uint32_t mask, CImVector color) {
    // Clear shader constants to match D3D/GLL ISceneBegin behavior
    this->ShaderConstantsClear();

    // End any existing render pass
    if (this->m_currentRenderPass) {
        wgpuRenderPassEncoderEnd(this->m_currentRenderPass);
        wgpuRenderPassEncoderRelease(this->m_currentRenderPass);
        this->m_currentRenderPass = nullptr;
    }

    if (this->m_currentTargetView) {
        wgpuTextureViewRelease(this->m_currentTargetView);
        this->m_currentTargetView = nullptr;
    }

    // Get surface texture
    WGPUSurfaceTexture surfaceTexture;
    wgpuSurfaceGetCurrentTexture(this->m_surface, &surfaceTexture);

    if (surfaceTexture.status != WGPUSurfaceGetCurrentTextureStatus_SuccessOptimal &&
        surfaceTexture.status != WGPUSurfaceGetCurrentTextureStatus_SuccessSuboptimal) {
        return;
    }

    WGPUTextureView targetView = wgpuTextureCreateView(surfaceTexture.texture, nullptr);
    wgpuTextureRelease(surfaceTexture.texture);

    // Create command encoder
    if (!this->m_currentCommandEncoder) {
        WGPUCommandEncoderDescriptor encoderDesc = {};
        this->m_currentCommandEncoder = wgpuDeviceCreateCommandEncoder(this->m_device, &encoderDesc);
    }

    // Respect mask flags: bit 0 = clear color, bit 1 = clear depth
    bool clearColor = (mask & 0x1) != 0;
    bool clearDepth = (mask & 0x2) != 0;

    WGPURenderPassColorAttachment colorAttachment = {};
    colorAttachment.view = targetView;
    colorAttachment.depthSlice = WGPU_DEPTH_SLICE_UNDEFINED;
    colorAttachment.loadOp = clearColor ? WGPULoadOp_Clear : WGPULoadOp_Load;
    colorAttachment.storeOp = WGPUStoreOp_Store;
    colorAttachment.clearValue = {
        static_cast<double>(color.r) / 255.0,
        static_cast<double>(color.g) / 255.0,
        static_cast<double>(color.b) / 255.0,
        static_cast<double>(color.a) / 255.0
    };

    WGPURenderPassDepthStencilAttachment depthAttachment = {};
    depthAttachment.view = this->m_depthTextureView;
    depthAttachment.depthLoadOp = clearDepth ? WGPULoadOp_Clear : WGPULoadOp_Load;
    depthAttachment.depthStoreOp = WGPUStoreOp_Store;
    depthAttachment.depthClearValue = 1.0f;
    depthAttachment.stencilLoadOp = WGPULoadOp_Undefined;
    depthAttachment.stencilStoreOp = WGPUStoreOp_Undefined;

    WGPURenderPassDescriptor renderPassDesc = {};
    renderPassDesc.colorAttachmentCount = 1;
    renderPassDesc.colorAttachments = &colorAttachment;
    renderPassDesc.depthStencilAttachment = this->m_depthTextureView ? &depthAttachment : nullptr;

    this->m_currentRenderPass = wgpuCommandEncoderBeginRenderPass(this->m_currentCommandEncoder, &renderPassDesc);
    this->m_currentTargetView = targetView;
}

void CGxDeviceWebGPU::ScenePresent() {
    // End render pass
    if (this->m_currentRenderPass) {
        wgpuRenderPassEncoderEnd(this->m_currentRenderPass);
        wgpuRenderPassEncoderRelease(this->m_currentRenderPass);
        this->m_currentRenderPass = nullptr;
    }

    // Submit command buffer
    if (this->m_currentCommandEncoder) {
        WGPUCommandBufferDescriptor cmdDesc = {};
        WGPUCommandBuffer cmdBuffer = wgpuCommandEncoderFinish(this->m_currentCommandEncoder, &cmdDesc);
        wgpuQueueSubmit(this->m_queue, 1, &cmdBuffer);
        wgpuCommandBufferRelease(cmdBuffer);
        wgpuCommandEncoderRelease(this->m_currentCommandEncoder);
        this->m_currentCommandEncoder = nullptr;
    }

    // Release target view
    if (this->m_currentTargetView) {
        wgpuTextureViewRelease(this->m_currentTargetView);
        this->m_currentTargetView = nullptr;
    }

    // Reset BLS uniform ring buffer offsets AFTER command buffer submission.
    // This ensures draw commands from all render passes in the frame
    // reference valid uniform data (not overwritten by later passes).
    this->m_blsVsRingOffset = 0;
    this->m_blsPsRingOffset = 0;

#ifndef __EMSCRIPTEN__
    wgpuSurfacePresent(this->m_surface);
#endif
}

// Transforms (delegate to base)

void CGxDeviceWebGPU::XformSetProjection(const C44Matrix& matrix) {
    CGxDevice::XformSetProjection(matrix);

    // Transform projection matrix for WebGPU clip space:
    // Input uses OpenGL convention (Z in [-1, 1])
    // WebGPU uses D3D convention (Z in [0, 1])
    // C44Matrix member mapping: c2=_33, c3=_34, d2=_43, d3=_44
    C44Matrix projNative = matrix;

    // Normalize by c3 if it's not 1.0 or 0.0
    if (NotEqual(projNative.c3, 1.0f, WHOA_EPSILON_1) && NotEqual(projNative.c3, 0.0f, WHOA_EPSILON_1)) {
        float inv = 1.0f / projNative.c3;
        projNative.a0 *= inv; projNative.a1 *= inv; projNative.a2 *= inv; projNative.a3 *= inv;
        projNative.b0 *= inv; projNative.b1 *= inv; projNative.b2 *= inv; projNative.b3 *= inv;
        projNative.c0 *= inv; projNative.c1 *= inv; projNative.c2 *= inv; projNative.c3 *= inv;
        projNative.d0 *= inv; projNative.d1 *= inv; projNative.d2 *= inv; projNative.d3 *= inv;
    }

    // Remap Z depth range from [-1, 1] to [0, 1]
    // z_ndc_new = (z_ndc_old + 1) / 2 = (z_clip + w_clip) / (2 * w_clip)
    // Keeping w_clip unchanged (column 3), new z_clip = (old_z_clip + w_clip) / 2
    // z_clip uses column 2: c2*z + d2*w,  w_clip uses column 3: c3*z + d3*w
    // new column 2 = (column 2 + column 3) / 2
    float old_c2 = projNative.c2;
    float old_d2 = projNative.d2;
    projNative.c2 = (old_c2 + projNative.c3) * 0.5f;
    projNative.d2 = (old_d2 + projNative.d3) * 0.5f;

    // Apply shrink for non-normal projection (e.g. culling volumes)
    if (!this->MasterEnable(GxMasterEnable_NormalProjection) && projNative.d3 != 1.0f) {
        C44Matrix shrink = {
            0.2f, 0.0f, 0.0f, 0.0f,
            0.0f, 0.2f, 0.0f, 0.0f,
            0.0f, 0.0f, 0.2f, 0.0f,
            0.0f, 0.0f, 0.0f, 1.0f
        };
        projNative = projNative * shrink;
    }

    this->m_projNative = projNative;
}

void CGxDeviceWebGPU::XformSetView(const C44Matrix& matrix) {
    CGxDevice::XformSetView(matrix);
}

// Stubs

void CGxDeviceWebGPU::ITexMarkAsUpdated(CGxTex* tex) {
    if (!tex->m_needsUpdate) {
        return;
    }

    if (tex->m_needsCreation || !tex->m_apiSpecificData) {
        this->ITexCreate(tex);
    }

    if (!tex->m_needsCreation && tex->m_apiSpecificData) {
        if (tex->m_userFunc) {
            this->ITexUpload(tex);
        }

        CGxDevice::ITexMarkAsUpdated(tex);
    }
}

void CGxDeviceWebGPU::IRsSendToHw(EGxRenderState state) {
    if (state >= GxRs_Texture0 && state <= GxRs_Texture15) {
        CGxTex* tex = static_cast<CGxTex*>(this->m_appRenderStates[state].m_value.m_data.p);
        if (tex) {
            this->ITexMarkAsUpdated(tex);
        }
    }

    // Lazy-create shader modules when BLS shaders are bound
    if (state == GxRs_VertexShader || state == GxRs_PixelShader) {
        auto shader = static_cast<CGxShader*>(this->m_appRenderStates[state].m_value.m_data.p);
        if (shader && !shader->loaded) {
            this->IShaderCreate(shader);
        }
    }
}

void CGxDeviceWebGPU::Draw(CGxBatch* batch, int32_t indexed) {
    if (!this->m_device || !this->m_currentRenderPass) {
        return;
    }

    // Lazy init shared render resources (default textures/sampler)
    if (!this->m_whiteTexture) {
        this->IInitRenderPipeline();
        if (!this->m_whiteTexture) {
            return;
        }
    }

    // Sync dirty render states
    this->IRsSync(0);

    auto vsShader = static_cast<CGxShader*>(this->m_appRenderStates[GxRs_VertexShader].m_value.m_data.p);
    auto psShader = static_cast<CGxShader*>(this->m_appRenderStates[GxRs_PixelShader].m_value.m_data.p);

    this->DrawBLS(batch, indexed, vsShader, psShader);
}

void CGxDeviceWebGPU::DrawBLS(CGxBatch* batch, int32_t indexed, CGxShader* vs, CGxShader* ps) {
    // Must have valid vertex buffer and format
    if (!this->m_primVertexBuf || this->m_primVertexFormat >= GxVertexBufferFormats_Last) {
        return;
    }

    CGxBuf* vbuf = this->m_primVertexBuf;
    CGxPool* vpool = vbuf->m_pool;
    if (!vpool || !vpool->m_apiSpecific || !vpool->m_mem) {
        return;
    }

    WGPUBuffer vGpuBuf = static_cast<WGPUBuffer>(vpool->m_apiSpecific);
    if (!vGpuBuf) {
        return;
    }

    // Lazy init BLS pipeline resources
    if (!this->m_blsUniformBGL) {
        this->IInitBLSPipeline();
        if (!this->m_blsUniformBGL) {
            return;
        }
    }

    // Get/create pipeline for this shader pair + render state
    WGPURenderPipeline pipeline = this->IGetBLSPipeline(batch, vs, ps);
    if (!pipeline) {
        return;
    }

    // Allocate ring buffer slots
    if (this->m_blsVsRingOffset + BLS_VS_UNIFORM_ALIGN > BLS_VS_RING_SIZE) {
        return;
    }
    if (this->m_blsPsRingOffset + BLS_PS_UNIFORM_ALIGN > BLS_PS_RING_SIZE) {
        return;
    }
    uint32_t vsOffset = this->m_blsVsRingOffset;
    uint32_t psOffset = this->m_blsPsRingOffset;
    this->IUploadBLSVSUniforms();
    this->IUploadBLSPSUniforms();
    this->m_blsVsRingOffset += BLS_VS_UNIFORM_ALIGN;
    this->m_blsPsRingOffset += BLS_PS_UNIFORM_ALIGN;

    // Create texture bind group (BLS-specific interleaved layout)
    WGPUBindGroup texBG = this->ICreateBLSTextureBindGroup();
    if (!texBG) {
        return;
    }

    // Set viewport
    if (this->intF6C) {
        double canvasW = static_cast<double>(this->m_canvasWidth);
        double canvasH = static_cast<double>(this->m_canvasHeight);
        float vx = static_cast<float>(this->m_viewport.x.l * canvasW);
        float vy = static_cast<float>((1.0 - this->m_viewport.y.h) * canvasH);
        float vw = static_cast<float>(this->m_viewport.x.h * canvasW) - vx;
        float vh = static_cast<float>((1.0 - this->m_viewport.y.l) * canvasH) - vy;
        if (vw < 0.0f) vw = 0.0f;
        if (vh < 0.0f) vh = 0.0f;
        wgpuRenderPassEncoderSetViewport(this->m_currentRenderPass, vx, vy, vw, vh,
            this->m_viewport.z.l, this->m_viewport.z.h);
        this->intF6C = 0;
    }

    // Set pipeline and bind groups (BLS uniform bind group with dynamic offsets)
    wgpuRenderPassEncoderSetPipeline(this->m_currentRenderPass, pipeline);
    uint32_t dynamicOffsets[2] = { vsOffset, psOffset };
    wgpuRenderPassEncoderSetBindGroup(this->m_currentRenderPass, 0, this->m_blsUniformBindGroup, 2, dynamicOffsets);
    wgpuRenderPassEncoderSetBindGroup(this->m_currentRenderPass, 1, texBG, 0, nullptr);

    // Bind vertex buffer
    uint32_t vGpuBufSize = (static_cast<uint32_t>(vpool->m_size) + 3) & ~3u;
    uint32_t vbBindSize = vGpuBufSize - vbuf->m_index;
    wgpuRenderPassEncoderSetVertexBuffer(this->m_currentRenderPass, 0, vGpuBuf, vbuf->m_index, vbBindSize);

    // Issue draw commands (same logic as uber-shader path)
    if (batch->m_primType == GxPrim_TriangleFan) {
        if (batch->m_count < 3) {
            wgpuBindGroupRelease(texBG);
            return;
        }

        uint32_t triCount = batch->m_count - 2;
        uint32_t indexCount = triCount * 3;
        uint32_t ibSize = indexCount * sizeof(uint16_t);
        ibSize = (ibSize + 3) & ~3u;

        if (!this->m_fanIB || ibSize > this->m_fanIBSize) {
            if (this->m_fanIB) {
                wgpuBufferDestroy(this->m_fanIB);
                wgpuBufferRelease(this->m_fanIB);
            }
            WGPUBufferDescriptor ibDesc = {};
            ibDesc.usage = WGPUBufferUsage_Index | WGPUBufferUsage_CopyDst;
            ibDesc.size = ibSize;
            this->m_fanIB = wgpuDeviceCreateBuffer(this->m_device, &ibDesc);
            this->m_fanIBSize = ibSize;
        }

        uint16_t* fanIndices = new uint16_t[indexCount];

        if (indexed && this->m_primIndexBuf) {
            CGxBuf* ibuf = this->m_primIndexBuf;
            CGxPool* ipool = ibuf->m_pool;
            if (ipool && ipool->m_mem) {
                const uint16_t* srcIdx = reinterpret_cast<const uint16_t*>(
                    static_cast<const char*>(ipool->m_mem) + ibuf->m_index);
                uint16_t center = srcIdx[batch->m_start];
                for (uint32_t i = 0; i < triCount; i++) {
                    fanIndices[i * 3 + 0] = center;
                    fanIndices[i * 3 + 1] = srcIdx[batch->m_start + i + 1];
                    fanIndices[i * 3 + 2] = srcIdx[batch->m_start + i + 2];
                }
            }
        } else {
            uint16_t center = static_cast<uint16_t>(batch->m_start);
            for (uint32_t i = 0; i < triCount; i++) {
                fanIndices[i * 3 + 0] = center;
                fanIndices[i * 3 + 1] = static_cast<uint16_t>(batch->m_start + i + 1);
                fanIndices[i * 3 + 2] = static_cast<uint16_t>(batch->m_start + i + 2);
            }
        }

        wgpuQueueWriteBuffer(this->m_queue, this->m_fanIB, 0, fanIndices, ibSize);
        delete[] fanIndices;

        wgpuRenderPassEncoderSetIndexBuffer(this->m_currentRenderPass, this->m_fanIB, WGPUIndexFormat_Uint16, 0, ibSize);
        wgpuRenderPassEncoderDrawIndexed(this->m_currentRenderPass, indexCount, 1, 0, 0, 0);
    } else if (indexed && this->m_primIndexBuf) {
        CGxBuf* ibuf = this->m_primIndexBuf;
        CGxPool* ipool = ibuf->m_pool;
        if (!ipool || !ipool->m_apiSpecific) {
            wgpuBindGroupRelease(texBG);
            return;
        }

        WGPUBuffer iGpuBuf = static_cast<WGPUBuffer>(ipool->m_apiSpecific);
        if (!iGpuBuf) {
            wgpuBindGroupRelease(texBG);
            return;
        }

        uint32_t iGpuBufSize = (static_cast<uint32_t>(ipool->m_size) + 3) & ~3u;
        uint32_t ibBindOffset = ibuf->m_index;
        uint32_t ibBindSize = iGpuBufSize - ibBindOffset;

        wgpuRenderPassEncoderSetIndexBuffer(this->m_currentRenderPass, iGpuBuf, WGPUIndexFormat_Uint16, ibBindOffset, ibBindSize);
        wgpuRenderPassEncoderDrawIndexed(this->m_currentRenderPass, batch->m_count, 1, batch->m_start, 0, 0);
    } else {
        wgpuRenderPassEncoderDraw(this->m_currentRenderPass, batch->m_count, 1, batch->m_start, 0);
    }

    wgpuBindGroupRelease(texBG);
}

// Shared render resource initialization (default textures / sampler)

void CGxDeviceWebGPU::IInitRenderPipeline() {
    // Default white 1x1 texture
    WGPUTextureDescriptor whiteTexDesc = {};
    whiteTexDesc.usage = WGPUTextureUsage_TextureBinding | WGPUTextureUsage_CopyDst;
    whiteTexDesc.dimension = WGPUTextureDimension_2D;
    whiteTexDesc.size = { 1, 1, 1 };
    whiteTexDesc.format = WGPUTextureFormat_RGBA8Unorm;
    whiteTexDesc.mipLevelCount = 1;
    whiteTexDesc.sampleCount = 1;

    this->m_whiteTexture = wgpuDeviceCreateTexture(this->m_device, &whiteTexDesc);

    WGPUTextureViewDescriptor whiteViewDesc = {};
    whiteViewDesc.format = WGPUTextureFormat_RGBA8Unorm;
    whiteViewDesc.dimension = WGPUTextureViewDimension_2D;
    whiteViewDesc.mipLevelCount = 1;
    whiteViewDesc.arrayLayerCount = 1;

    this->m_whiteTextureView = wgpuTextureCreateView(this->m_whiteTexture, &whiteViewDesc);

    uint8_t whitePixel[4] = { 255, 255, 255, 255 };
    WGPUTexelCopyTextureInfo whiteDest = {};
    whiteDest.texture = this->m_whiteTexture;
    whiteDest.aspect = WGPUTextureAspect_All;

    WGPUTexelCopyBufferLayout whiteLayout = {};
    whiteLayout.bytesPerRow = 4;
    whiteLayout.rowsPerImage = 1;

    WGPUExtent3D whiteSize = { 1, 1, 1 };
    wgpuQueueWriteTexture(this->m_queue, &whiteDest, whitePixel, 4, &whiteLayout, &whiteSize);

    // Default sampler
    WGPUSamplerDescriptor defSampDesc = {};
    defSampDesc.magFilter = WGPUFilterMode_Linear;
    defSampDesc.minFilter = WGPUFilterMode_Linear;
    defSampDesc.mipmapFilter = WGPUMipmapFilterMode_Linear;
    defSampDesc.addressModeU = WGPUAddressMode_ClampToEdge;
    defSampDesc.addressModeV = WGPUAddressMode_ClampToEdge;
    defSampDesc.addressModeW = WGPUAddressMode_ClampToEdge;
    defSampDesc.maxAnisotropy = 1;

    this->m_defaultSampler = wgpuDeviceCreateSampler(this->m_device, &defSampDesc);
}

void CGxDeviceWebGPU::IDestroyRenderPipeline() {
    this->IDestroyBLSPipeline();

    if (this->m_fanIB) {
        wgpuBufferDestroy(this->m_fanIB);
        wgpuBufferRelease(this->m_fanIB);
        this->m_fanIB = nullptr;
        this->m_fanIBSize = 0;
    }
    if (this->m_defaultSampler) {
        wgpuSamplerRelease(this->m_defaultSampler);
        this->m_defaultSampler = nullptr;
    }
    if (this->m_whiteTextureView) {
        wgpuTextureViewRelease(this->m_whiteTextureView);
        this->m_whiteTextureView = nullptr;
    }
    if (this->m_whiteTexture) {
        wgpuTextureDestroy(this->m_whiteTexture);
        wgpuTextureRelease(this->m_whiteTexture);
        this->m_whiteTexture = nullptr;
    }
}

// BLS shader pipeline (per-permutation WGSL from translated BLS files)

void CGxDeviceWebGPU::IInitBLSPipeline() {
    // Uniform bind group layout (group 0): VS flat vec4 array + PS flat vec4 array
    WGPUBindGroupLayoutEntry uniformEntries[2] = {};

    uniformEntries[0].binding = 0;
    uniformEntries[0].visibility = WGPUShaderStage_Vertex;
    uniformEntries[0].buffer.type = WGPUBufferBindingType_Uniform;
    uniformEntries[0].buffer.hasDynamicOffset = true;
    uniformEntries[0].buffer.minBindingSize = BLS_VS_UNIFORM_SIZE;

    uniformEntries[1].binding = 1;
    uniformEntries[1].visibility = WGPUShaderStage_Fragment;
    uniformEntries[1].buffer.type = WGPUBufferBindingType_Uniform;
    uniformEntries[1].buffer.hasDynamicOffset = true;
    uniformEntries[1].buffer.minBindingSize = BLS_PS_UNIFORM_SIZE;

    WGPUBindGroupLayoutDescriptor uniformBGLDesc = {};
    uniformBGLDesc.entryCount = 2;
    uniformBGLDesc.entries = uniformEntries;

    this->m_blsUniformBGL = wgpuDeviceCreateBindGroupLayout(this->m_device, &uniformBGLDesc);

    // Texture bind group layout (group 1): 8 interleaved sampler+texture pairs
    // Binding 2*N = sampler N, binding 2*N+1 = texture N (matches shader-translate output)
    WGPUBindGroupLayoutEntry texEntries[16] = {};
    for (uint32_t i = 0; i < 8; i++) {
        texEntries[i * 2].binding = i * 2;
        texEntries[i * 2].visibility = WGPUShaderStage_Fragment;
        texEntries[i * 2].sampler.type = WGPUSamplerBindingType_Filtering;

        texEntries[i * 2 + 1].binding = i * 2 + 1;
        texEntries[i * 2 + 1].visibility = WGPUShaderStage_Fragment;
        texEntries[i * 2 + 1].texture.sampleType = WGPUTextureSampleType_Float;
        texEntries[i * 2 + 1].texture.viewDimension = WGPUTextureViewDimension_2D;
    }

    WGPUBindGroupLayoutDescriptor texBGLDesc = {};
    texBGLDesc.entryCount = 16;
    texBGLDesc.entries = texEntries;

    this->m_blsTextureBGL = wgpuDeviceCreateBindGroupLayout(this->m_device, &texBGLDesc);

    // Pipeline layout: group 0 = BLS uniforms, group 1 = BLS textures (interleaved)
    WGPUBindGroupLayout bgls[2] = { this->m_blsUniformBGL, this->m_blsTextureBGL };

    WGPUPipelineLayoutDescriptor plDesc = {};
    plDesc.bindGroupLayoutCount = 2;
    plDesc.bindGroupLayouts = bgls;

    this->m_blsPipelineLayout = wgpuDeviceCreatePipelineLayout(this->m_device, &plDesc);

    // VS uniform ring buffer (256 DX constant registers = 4096 bytes)
    WGPUBufferDescriptor vsBufDesc = {};
    vsBufDesc.usage = WGPUBufferUsage_Uniform | WGPUBufferUsage_CopyDst;
    vsBufDesc.size = BLS_VS_RING_SIZE;
    this->m_blsVsUniformBuf = wgpuDeviceCreateBuffer(this->m_device, &vsBufDesc);

    // PS uniform ring buffer
    WGPUBufferDescriptor psBufDesc = {};
    psBufDesc.usage = WGPUBufferUsage_Uniform | WGPUBufferUsage_CopyDst;
    psBufDesc.size = BLS_PS_RING_SIZE;
    this->m_blsPsUniformBuf = wgpuDeviceCreateBuffer(this->m_device, &psBufDesc);

    // Uniform bind group (dynamic offsets applied per draw call)
    WGPUBindGroupEntry ubgEntries[2] = {};
    ubgEntries[0].binding = 0;
    ubgEntries[0].buffer = this->m_blsVsUniformBuf;
    ubgEntries[0].offset = 0;
    ubgEntries[0].size = BLS_VS_UNIFORM_ALIGN;

    ubgEntries[1].binding = 1;
    ubgEntries[1].buffer = this->m_blsPsUniformBuf;
    ubgEntries[1].offset = 0;
    ubgEntries[1].size = BLS_PS_UNIFORM_ALIGN;

    WGPUBindGroupDescriptor ubgDesc = {};
    ubgDesc.layout = this->m_blsUniformBGL;
    ubgDesc.entryCount = 2;
    ubgDesc.entries = ubgEntries;

    this->m_blsUniformBindGroup = wgpuDeviceCreateBindGroup(this->m_device, &ubgDesc);
}

void CGxDeviceWebGPU::IDestroyBLSPipeline() {
    for (auto& pair : this->m_blsPipelineCache) {
        wgpuRenderPipelineRelease(pair.second);
    }
    this->m_blsPipelineCache.clear();

    if (this->m_blsUniformBindGroup) {
        wgpuBindGroupRelease(this->m_blsUniformBindGroup);
        this->m_blsUniformBindGroup = nullptr;
    }
    if (this->m_blsPsUniformBuf) {
        wgpuBufferDestroy(this->m_blsPsUniformBuf);
        wgpuBufferRelease(this->m_blsPsUniformBuf);
        this->m_blsPsUniformBuf = nullptr;
    }
    if (this->m_blsVsUniformBuf) {
        wgpuBufferDestroy(this->m_blsVsUniformBuf);
        wgpuBufferRelease(this->m_blsVsUniformBuf);
        this->m_blsVsUniformBuf = nullptr;
    }
    if (this->m_blsPipelineLayout) {
        wgpuPipelineLayoutRelease(this->m_blsPipelineLayout);
        this->m_blsPipelineLayout = nullptr;
    }
    if (this->m_blsTextureBGL) {
        wgpuBindGroupLayoutRelease(this->m_blsTextureBGL);
        this->m_blsTextureBGL = nullptr;
    }
    if (this->m_blsUniformBGL) {
        wgpuBindGroupLayoutRelease(this->m_blsUniformBGL);
        this->m_blsUniformBGL = nullptr;
    }
}

// BLS uniform upload: raw shadow constants as flat vec4 arrays

void CGxDeviceWebGPU::IUploadBLSVSUniforms() {
    const C4Vector* vsConst = CGxDevice::s_shadowConstants[1].constants;

    // Copy uniforms and sanitize bone matrix region (indices 31-255)
    // Replace FLT_MAX sentinel values with identity matrices to prevent
    // vertices with out-of-range bone indices from stretching to infinity
    C4Vector sanitized[256];
    std::memcpy(sanitized, vsConst, sizeof(sanitized));

    // Replace FLT_MAX sentinel values (from ShaderConstantsClear) with identity
    // matrices to prevent vertices from stretching to infinity when bone slots
    // were never written by the game engine
    constexpr uint32_t BONE_START_INDEX = 31;
    for (uint32_t i = BONE_START_INDEX; i < 256; i++) {
        if (sanitized[i].x == std::numeric_limits<float>::max()) {
            uint32_t rowInBone = (i - BONE_START_INDEX) % 3;
            if (rowInBone == 0) {
                sanitized[i] = {1.0f, 0.0f, 0.0f, 0.0f};
            } else if (rowInBone == 1) {
                sanitized[i] = {0.0f, 1.0f, 0.0f, 0.0f};
            } else {
                sanitized[i] = {0.0f, 0.0f, 1.0f, 0.0f};
            }
        }
    }

    wgpuQueueWriteBuffer(this->m_queue, this->m_blsVsUniformBuf,
                         this->m_blsVsRingOffset, sanitized, BLS_VS_UNIFORM_SIZE);
}

void CGxDeviceWebGPU::IUploadBLSPSUniforms() {
    const C4Vector* psConst = CGxDevice::s_shadowConstants[0].constants;
    wgpuQueueWriteBuffer(this->m_queue, this->m_blsPsUniformBuf,
                         this->m_blsPsRingOffset, psConst, BLS_PS_UNIFORM_SIZE);
}

// BLS pipeline cache

uint64_t CGxDeviceWebGPU::IBuildBLSPipelineKey(CGxBatch* batch, CGxShader* vs, CGxShader* ps) {
    uint32_t renderKey = this->IBuildPipelineKey(batch);

    // Combine shader identities into upper 32 bits
    uint32_t vsId = static_cast<uint32_t>(reinterpret_cast<uintptr_t>(vs));
    uint32_t psId = static_cast<uint32_t>(reinterpret_cast<uintptr_t>(ps));
    uint32_t shaderKey = vsId ^ (psId * 2654435761u); // Knuth multiplicative hash

    return (static_cast<uint64_t>(shaderKey) << 32) | renderKey;
}

WGPURenderPipeline CGxDeviceWebGPU::IGetBLSPipeline(CGxBatch* batch, CGxShader* vs, CGxShader* ps) {
    uint64_t key = this->IBuildBLSPipelineKey(batch, vs, ps);

    auto it = this->m_blsPipelineCache.find(key);
    if (it != this->m_blsPipelineCache.end()) {
        return it->second;
    }

    // Decode render state from lower 32 bits
    uint32_t renderKey = static_cast<uint32_t>(key);
    uint32_t format = renderKey & 0xF;
    uint32_t blend = (renderKey >> 4) & 0xF;
    uint32_t depthTest = (renderKey >> 8) & 0x1;
    uint32_t depthWrite = (renderKey >> 9) & 0x1;
    uint32_t depthFunc = (renderKey >> 10) & 0x3;
    uint32_t cull = (renderKey >> 12) & 0x3;
    uint32_t topo = (renderKey >> 16) & 0x7;

    if (format >= 14) {
        return nullptr;
    }

    WGPUShaderModule vsModule = static_cast<WGPUShaderModule>(vs->apiSpecific);
    WGPUShaderModule psModule = static_cast<WGPUShaderModule>(ps->apiSpecific);
    if (!vsModule || !psModule) {
        return nullptr;
    }

    const VertexFormatDesc& vfd = s_vertexFormatDescs[format];

    // Build vertex attributes from format descriptor
    WGPUVertexAttribute attrs[6];
    for (uint32_t i = 0; i < vfd.attribCount; i++) {
        attrs[i].shaderLocation = vfd.attribs[i].shaderLocation;
        attrs[i].format = vfd.attribs[i].format;
        int32_t offset = Buffer::s_vertexBufOffset[format][vfd.attribs[i].attrib];
        attrs[i].offset = static_cast<uint64_t>(offset >= 0 ? offset : 0);
    }

    WGPUVertexBufferLayout vertexLayout = {};
    vertexLayout.arrayStride = vfd.stride;
    vertexLayout.stepMode = WGPUVertexStepMode_Vertex;
    vertexLayout.attributeCount = vfd.attribCount;
    vertexLayout.attributes = attrs;

    // Blend state
    WGPUBlendComponent colorBlend = {};
    WGPUBlendComponent alphaBlend = {};

    if (blend < 12) {
        colorBlend.srcFactor = s_srcBlend[blend];
        colorBlend.dstFactor = s_dstBlend[blend];
        colorBlend.operation = WGPUBlendOperation_Add;
        alphaBlend.srcFactor = s_srcBlend[blend];
        alphaBlend.dstFactor = s_dstBlend[blend];
        alphaBlend.operation = WGPUBlendOperation_Add;
    } else {
        colorBlend.srcFactor = WGPUBlendFactor_One;
        colorBlend.dstFactor = WGPUBlendFactor_Zero;
        colorBlend.operation = WGPUBlendOperation_Add;
        alphaBlend = colorBlend;
    }

    WGPUBlendState blendState = {};
    blendState.color = colorBlend;
    blendState.alpha = alphaBlend;

    // Color target
    WGPUColorTargetState colorTarget = {};
    colorTarget.format = this->m_surfaceFormat;
    colorTarget.blend = &blendState;
    colorTarget.writeMask = WGPUColorWriteMask_All;

    // Fragment state
    WGPUFragmentState fragState = {};
    fragState.module = psModule;
    fragState.entryPoint = { "main", WGPU_STRLEN };
    fragState.targetCount = 1;
    fragState.targets = &colorTarget;

    // Depth stencil state
    WGPUDepthStencilState depthStencilState = {};
    depthStencilState.format = WGPUTextureFormat_Depth24Plus;
    depthStencilState.depthWriteEnabled = depthWrite ? WGPUOptionalBool_True : WGPUOptionalBool_False;
    depthStencilState.depthCompare = depthTest ? s_depthCompare[depthFunc] : WGPUCompareFunction_Always;

    // Pipeline descriptor
    std::string pipelineLabel = std::string(vs->m_key.GetString()) + " | " + ps->m_key.GetString();
    WGPURenderPipelineDescriptor pipelineDesc = {};
    pipelineDesc.label = { pipelineLabel.c_str(), WGPU_STRLEN };
    pipelineDesc.layout = this->m_blsPipelineLayout;

    pipelineDesc.vertex.module = vsModule;
    pipelineDesc.vertex.entryPoint = { "main", WGPU_STRLEN };
    pipelineDesc.vertex.bufferCount = 1;
    pipelineDesc.vertex.buffers = &vertexLayout;

    pipelineDesc.fragment = &fragState;

    pipelineDesc.primitive.topology = s_primTopology[topo < 6 ? topo : 0];

    // Match Metal/D3D9/GLL culling convention:
    // - CullMode 0: no culling
    // - CullMode 1: cull CW faces (front = CCW)
    // - CullMode 2: cull CCW faces (front = CW)
    if (cull == 0) {
        pipelineDesc.primitive.cullMode = WGPUCullMode_None;
        pipelineDesc.primitive.frontFace = WGPUFrontFace_CCW;
    } else {
        pipelineDesc.primitive.cullMode = WGPUCullMode_Back;
        pipelineDesc.primitive.frontFace = (cull == 1) ? WGPUFrontFace_CCW : WGPUFrontFace_CW;
    }

    if (pipelineDesc.primitive.topology == WGPUPrimitiveTopology_TriangleStrip ||
        pipelineDesc.primitive.topology == WGPUPrimitiveTopology_LineStrip) {
        pipelineDesc.primitive.stripIndexFormat = WGPUIndexFormat_Uint16;
    }

    pipelineDesc.depthStencil = &depthStencilState;
    pipelineDesc.multisample.count = 1;
    pipelineDesc.multisample.mask = 0xFFFFFFFF;

    WGPURenderPipeline pipeline = wgpuDeviceCreateRenderPipeline(this->m_device, &pipelineDesc);
    if (pipeline) {
        this->m_blsPipelineCache[key] = pipeline;
    }

    return pipeline;
}

uint32_t CGxDeviceWebGPU::IBuildPipelineKey(CGxBatch* batch) {
    uint32_t format = static_cast<uint32_t>(this->m_primVertexFormat) & 0xF;

    int32_t blendMode = this->m_appRenderStates[GxRs_BlendingMode].m_value.m_data.i[0];
    uint32_t blend = static_cast<uint32_t>(blendMode) & 0xF;

    int32_t depthTestRS = this->m_appRenderStates[GxRs_DepthTest].m_value.m_data.i[0];
    uint32_t depthTest = (depthTestRS && this->MasterEnable(GxMasterEnable_DepthTest)) ? 1u : 0u;

    int32_t depthWriteRS = this->m_appRenderStates[GxRs_DepthWrite].m_value.m_data.i[0];
    uint32_t depthWrite = (depthWriteRS && this->MasterEnable(GxMasterEnable_DepthWrite)) ? 1u : 0u;

    int32_t depthFuncRS = this->m_appRenderStates[GxRs_DepthFunc].m_value.m_data.i[0];
    uint32_t depthFunc = static_cast<uint32_t>(depthFuncRS) & 0x3;

    int32_t cullRS = this->m_appRenderStates[GxRs_Culling].m_value.m_data.i[0];
    uint32_t cull = (this->MasterEnable(GxMasterEnable_Culling) && cullRS) ?
        (static_cast<uint32_t>(cullRS) & 0x3) : 0u;

    // Count active textures (0, 1, or 2), capped by format's texcoord count
    uint32_t texCount = 0;
    if (this->m_appRenderStates[GxRs_Texture0].m_value.m_data.p != nullptr) {
        texCount = 1;
        if (this->m_appRenderStates[GxRs_Texture1].m_value.m_data.p != nullptr) {
            texCount = 2;
        }
    }

    // Cap texture count by format's texcoord availability
    uint32_t maxTC = 0;
    uint32_t fmtMask = Buffer::s_vertexBufDesc[format].mask;
    if (fmtMask & GxPrim_TexCoord0) maxTC = 1;
    if (fmtMask & GxPrim_TexCoord1) maxTC = 2;
    if (texCount > maxTC) texCount = maxTC;

    uint32_t topo = static_cast<uint32_t>(batch->m_primType) & 0x7;

    return (format) | (blend << 4) | (depthTest << 8) | (depthWrite << 9) |
           (depthFunc << 10) | (cull << 12) | (texCount << 14) | (topo << 16);
}

WGPUBindGroup CGxDeviceWebGPU::ICreateBLSTextureBindGroup() {
    // BLS shaders use interleaved bindings: sampler N at 2*N, texture N at 2*N+1
    // Fill all 8 texture unit slots; unused slots get default white texture + sampler
    WGPUBindGroupEntry entries[16] = {};

    for (uint32_t i = 0; i < 8; i++) {
        WGPUTextureView view = this->m_whiteTextureView;
        WGPUSampler sampler = this->m_defaultSampler;

        // GxRs_Texture0 through GxRs_Texture7
        EGxRenderState texRS = static_cast<EGxRenderState>(GxRs_Texture0 + i);
        CGxTex* tex = static_cast<CGxTex*>(this->m_appRenderStates[texRS].m_value.m_data.p);
        if (tex && tex->m_apiSpecificData) {
            WebGPUTextureData* td = static_cast<WebGPUTextureData*>(tex->m_apiSpecificData);
            if (td->view) view = td->view;
            if (td->sampler) sampler = td->sampler;
        }

        entries[i * 2].binding = i * 2;
        entries[i * 2].sampler = sampler;

        entries[i * 2 + 1].binding = i * 2 + 1;
        entries[i * 2 + 1].textureView = view;
    }

    WGPUBindGroupDescriptor bgDesc = {};
    bgDesc.layout = this->m_blsTextureBGL;
    bgDesc.entryCount = 16;
    bgDesc.entries = entries;

    return wgpuDeviceCreateBindGroup(this->m_device, &bgDesc);
}

// Buffer management

void CGxDeviceWebGPU::PoolSizeSet(CGxPool* pool, uint32_t size) {
    // Preserve existing CPU data so that static pools (M2 model vertex/index
    // buffers, etc.) don't lose data when the GPU buffer is recreated.
    void* oldMem = nullptr;
    uint32_t oldSize = 0;

    if (pool->m_apiSpecific) {
        // Pool was previously initialized — save CPU data before cleanup
        oldMem = pool->m_mem;
        oldSize = pool->m_size;
        pool->m_mem = nullptr;

        WGPUBuffer oldBuf = static_cast<WGPUBuffer>(pool->m_apiSpecific);
        wgpuBufferDestroy(oldBuf);
        wgpuBufferRelease(oldBuf);
    } else if (pool->m_mem) {
        // m_apiSpecific is null but m_mem was allocated (e.g., the GPU device
        // wasn't ready when the pool was first initialized via BufLock).
        // Preserve the CPU data so it can be uploaded to the new GPU buffer.
        oldMem = pool->m_mem;
        oldSize = pool->m_size;
        pool->m_mem = nullptr;
    }

    pool->m_apiSpecific = nullptr;
    pool->m_mem = nullptr;
    pool->m_size = size;

    if (size > 0) {
        // Allocate CPU memory (4-byte aligned size for safe GPU upload)
        uint32_t alignedSize = (size + 3) & ~3u;
        pool->m_mem = SMemAlloc(alignedSize, __FILE__, __LINE__, 0x0);
        memset(pool->m_mem, 0, alignedSize);

        // Restore previously-written data into the new allocation
        if (oldMem && oldSize > 0) {
            uint32_t copySize = (static_cast<uint32_t>(oldSize) < size)
                ? static_cast<uint32_t>(oldSize) : size;
            memcpy(pool->m_mem, oldMem, copySize);
        }

        // Create GPU buffer for this pool
        if (this->m_device) {
            WGPUBufferDescriptor desc = {};
            desc.usage = WGPUBufferUsage_Vertex | WGPUBufferUsage_Index | WGPUBufferUsage_CopyDst;
            desc.size = alignedSize;
            WGPUBuffer gpuBuf = wgpuDeviceCreateBuffer(this->m_device, &desc);
            pool->m_apiSpecific = static_cast<void*>(gpuBuf);

            // Upload preserved data to the new GPU buffer so static pools
            // that were filled during loading don't appear empty.
            if (oldMem && oldSize > 0 && gpuBuf && this->m_queue) {
                wgpuQueueWriteBuffer(this->m_queue, gpuBuf, 0,
                    pool->m_mem, alignedSize);
            }
        }
    }

    if (oldMem) {
        SMemFree(oldMem, __FILE__, __LINE__, 0x0);
    }

    if (pool->m_usage == GxPoolUsage_Stream) {
        pool->unk1C = 0;
    }
}

char* CGxDeviceWebGPU::BufLock(CGxBuf* buf) {
    CGxDevice::BufLock(buf);

    CGxPool* pool = buf->m_pool;

    if (!pool) {
        return nullptr;
    }

    // If this pool has never been through PoolSizeSet (m_apiSpecific is still
    // nullptr from the constructor), m_mem is uninitialized garbage. Initialize
    // it now. This handles static pools created by font batches, M2 models, etc.
    if (!pool->m_apiSpecific) {
        this->PoolSizeSet(pool, pool->m_size);
    }

    if (!pool->m_mem) {
        return nullptr;
    }

    if (pool->m_usage == GxPoolUsage_Stream) {
        uint32_t alignedNext = pool->unk1C;
        if (buf->m_itemSize > 0) {
            uint32_t v7 = pool->unk1C + buf->m_itemSize - 1;
            alignedNext = v7 - v7 % buf->m_itemSize;
        }

        if (alignedNext + buf->m_size > static_cast<uint32_t>(pool->m_size)) {
            pool->Discard();
            alignedNext = 0;
        }

        buf->m_index = alignedNext;
        pool->unk1C = alignedNext + buf->m_size;
    }

    return static_cast<char*>(pool->m_mem) + buf->m_index;
}

int32_t CGxDeviceWebGPU::BufUnlock(CGxBuf* buf, uint32_t size) {
    CGxPool* pool = buf->m_pool;

    // Upload the unlocked buffer's region to the pool's GPU buffer
    if (pool && pool->m_apiSpecific && pool->m_mem && this->m_queue) {
        WGPUBuffer gpuBuf = static_cast<WGPUBuffer>(pool->m_apiSpecific);
        uint32_t uploadOffset = buf->m_index & ~3u;  // round down to 4-byte boundary
        uint32_t uploadEnd = (buf->m_index + buf->m_size + 3) & ~3u;  // round up
        uint32_t gpuBufSize = (static_cast<uint32_t>(pool->m_size) + 3) & ~3u;
        if (uploadEnd > gpuBufSize) {
            uploadEnd = gpuBufSize;
        }
        if (uploadEnd > uploadOffset) {
            wgpuQueueWriteBuffer(this->m_queue, gpuBuf, uploadOffset,
                static_cast<const char*>(pool->m_mem) + uploadOffset,
                uploadEnd - uploadOffset);
        }
    }

    buf->unk1D = 1;

    return CGxDevice::BufUnlock(buf, size);
}

void CGxDeviceWebGPU::BufData(CGxBuf* buf, const void* data, size_t size, uintptr_t offset) {
    CGxDevice::BufData(buf, data, size, offset);

    // Use BufLock/BufUnlock to properly handle streaming pools (advances m_index)
    // and upload data to the pool's GPU buffer
    char* bufData = this->BufLock(buf);
    if (bufData && size > 0) {
        memcpy(bufData + offset, data, size);
        this->BufUnlock(buf, static_cast<uint32_t>(size));
    }
}

void CGxDeviceWebGPU::TexDestroy(CGxTex* texId) {
    if (texId && texId->m_apiSpecificData) {
        WebGPUTextureData* texData = static_cast<WebGPUTextureData*>(texId->m_apiSpecificData);

        if (texData->sampler) {
            wgpuSamplerRelease(texData->sampler);
        }
        if (texData->view) {
            wgpuTextureViewRelease(texData->view);
        }
        if (texData->texture) {
            wgpuTextureDestroy(texData->texture);
            wgpuTextureRelease(texData->texture);
        }

        delete texData;
        texId->m_apiSpecificData = nullptr;
    }

    CGxDevice::TexDestroy(texId);
}

// Texture creation

void CGxDeviceWebGPU::ITexCreate(CGxTex* tex) {
    if (!this->m_device || !tex) {
        return;
    }

    // Destroy any existing GPU resources
    if (tex->m_apiSpecificData) {
        WebGPUTextureData* old = static_cast<WebGPUTextureData*>(tex->m_apiSpecificData);
        if (old->sampler) wgpuSamplerRelease(old->sampler);
        if (old->view) wgpuTextureViewRelease(old->view);
        if (old->texture) { wgpuTextureDestroy(old->texture); wgpuTextureRelease(old->texture); }
        delete old;
        tex->m_apiSpecificData = nullptr;
    }

    uint32_t width, height, baseMip, mipCount;
    this->ITexWHDStartEnd(tex, width, height, baseMip, mipCount);

    WGPUTextureFormat format = s_gxTexFmtToWGPUFmt[tex->m_format];
    if (format == WGPUTextureFormat_Undefined) {
        format = WGPUTextureFormat_RGBA8Unorm;
    }

    bool isCubeMap = (tex->m_target == GxTex_CubeMap);
    bool isDxt = (tex->m_format == GxTex_Dxt1 || tex->m_format == GxTex_Dxt3 || tex->m_format == GxTex_Dxt5);

    static const char* s_gxTexFmtName[] = {
        "Unknown", "Abgr8888", "Argb8888", "Argb4444", "Argb1555",
        "Rgb565", "Dxt1", "Dxt3", "Dxt5", "Uv88",
        "Gr1616F", "R32F", "D24X8",
    };

    const char* fmtName = (tex->m_format <= GxTex_D24X8) ? s_gxTexFmtName[tex->m_format] : "Unknown";
    std::string texLabel = std::string(tex->m_name[0] ? tex->m_name : "(unnamed)")
        + " " + std::to_string(width) + "x" + std::to_string(height)
        + " " + fmtName
        + " mips:" + std::to_string(mipCount - baseMip);
    if (isCubeMap) texLabel += " cube";
    if (tex->m_flags.m_renderTarget) texLabel += " RT";

    WGPUTextureDescriptor texDesc = {};
    texDesc.label = { texLabel.c_str(), WGPU_STRLEN };
    texDesc.usage = WGPUTextureUsage_TextureBinding | WGPUTextureUsage_CopyDst;
    if (isDxt) {
        texDesc.usage |= WGPUTextureUsage_StorageBinding;
    }
    if (tex->m_flags.m_renderTarget) {
        texDesc.usage |= WGPUTextureUsage_RenderAttachment;
    }
    texDesc.dimension = WGPUTextureDimension_2D;
    texDesc.size = { width, height, isCubeMap ? 6u : 1u };
    texDesc.format = format;
    texDesc.mipLevelCount = mipCount - baseMip;
    texDesc.sampleCount = 1;

    WGPUTexture texture = wgpuDeviceCreateTexture(this->m_device, &texDesc);
    if (!texture) {
        return;
    }

    // Create sampling view
    WGPUTextureViewDescriptor viewDesc = {};
    viewDesc.format = format;
    viewDesc.dimension = isCubeMap ? WGPUTextureViewDimension_Cube : WGPUTextureViewDimension_2D;
    viewDesc.baseMipLevel = 0;
    viewDesc.mipLevelCount = mipCount - baseMip;
    viewDesc.baseArrayLayer = 0;
    viewDesc.arrayLayerCount = isCubeMap ? 6 : 1;

    WGPUTextureView view = wgpuTextureCreateView(texture, &viewDesc);

    // Create sampler
    WGPUSamplerDescriptor samplerDesc = {};
    if (tex->m_flags.m_filter == GxTex_Nearest) {
        samplerDesc.magFilter = WGPUFilterMode_Nearest;
        samplerDesc.minFilter = WGPUFilterMode_Nearest;
        samplerDesc.mipmapFilter = WGPUMipmapFilterMode_Nearest;
    } else {
        samplerDesc.magFilter = WGPUFilterMode_Linear;
        samplerDesc.minFilter = WGPUFilterMode_Linear;
        samplerDesc.mipmapFilter = WGPUMipmapFilterMode_Linear;
    }
    samplerDesc.addressModeU = tex->m_flags.m_wrapU ? WGPUAddressMode_Repeat : WGPUAddressMode_ClampToEdge;
    samplerDesc.addressModeV = tex->m_flags.m_wrapV ? WGPUAddressMode_Repeat : WGPUAddressMode_ClampToEdge;
    samplerDesc.addressModeW = WGPUAddressMode_ClampToEdge;
    samplerDesc.maxAnisotropy = std::max(1u, static_cast<uint32_t>(tex->m_flags.m_maxAnisotropy));

    WGPUSampler sampler = wgpuDeviceCreateSampler(this->m_device, &samplerDesc);

    WebGPUTextureData* texData = new WebGPUTextureData();
    texData->texture = texture;
    texData->view = view;
    texData->sampler = sampler;

    tex->m_apiSpecificData = texData;
    tex->m_needsCreation = 0;
}

// Texture upload

void CGxDeviceWebGPU::ITexUpload(CGxTex* tex) {
    if (!tex || !tex->m_apiSpecificData || !tex->m_userFunc) {
        return;
    }

    WebGPUTextureData* texData = static_cast<WebGPUTextureData*>(tex->m_apiSpecificData);
    if (!texData->texture) {
        return;
    }

    uint32_t texelStrideInBytes;
    const void* texels = nullptr;

    // Lock
    tex->m_userFunc(GxTex_Lock, tex->m_width, tex->m_height, 0, 0, tex->m_userArg, texelStrideInBytes, texels);

    uint32_t width, height, baseMip, mipCount;
    this->ITexWHDStartEnd(tex, width, height, baseMip, mipCount);

    int32_t numFace = (tex->m_target == GxTex_CubeMap) ? 6 : 1;
    bool isDxt = (tex->m_format == GxTex_Dxt1 || tex->m_format == GxTex_Dxt3 || tex->m_format == GxTex_Dxt5);
    bool needsConversion = (tex->m_format == GxTex_Argb4444 || tex->m_format == GxTex_Argb1555 || tex->m_format == GxTex_Rgb565);

    for (int32_t face = 0; face < numFace; face++) {
        for (uint32_t mipLevel = baseMip; mipLevel < mipCount; mipLevel++) {
            texels = nullptr;

            tex->m_userFunc(
                GxTex_Latch,
                tex->m_width >> mipLevel,
                tex->m_height >> mipLevel,
                face,
                mipLevel,
                tex->m_userArg,
                texelStrideInBytes,
                texels
            );

            if (!texels) {
                continue;
            }

            uint32_t mipWidth = std::max(1u, width >> mipLevel);
            uint32_t mipHeight = std::max(1u, height >> mipLevel);

            if (isDxt) {
                // GPU decompression via compute shader
                uint32_t bytesPerBlock = (tex->m_format == GxTex_Dxt1) ? 8 : 16;
                uint32_t blocksX = (mipWidth + 3) / 4;
                uint32_t blocksY = (mipHeight + 3) / 4;
                uint32_t blocksPerRow = texelStrideInBytes / bytesPerBlock;
                uint32_t dataSize = texelStrideInBytes * blocksY;

                this->IDxtDecompress(
                    texData, texels, dataSize,
                    mipWidth, mipHeight, blocksPerRow,
                    mipLevel - baseMip, face, tex->m_format
                );
            } else if (needsConversion) {
                // CPU convert 16-bit → RGBA8
                uint32_t rgba8BytesPerRow = mipWidth * 4;
                uint8_t* converted = new uint8_t[rgba8BytesPerRow * mipHeight];

                const uint16_t* src = static_cast<const uint16_t*>(texels);
                uint32_t srcPixelsPerRow = texelStrideInBytes / 2;

                for (uint32_t y = 0; y < mipHeight; y++) {
                    for (uint32_t x = 0; x < mipWidth; x++) {
                        uint16_t pixel = src[y * srcPixelsPerRow + x];
                        uint32_t dst = (y * mipWidth + x) * 4;

                        if (tex->m_format == GxTex_Argb4444) {
                            uint8_t a = (pixel >> 12) & 0xF;
                            uint8_t r = (pixel >> 8) & 0xF;
                            uint8_t g = (pixel >> 4) & 0xF;
                            uint8_t b = pixel & 0xF;
                            converted[dst + 0] = r * 17;
                            converted[dst + 1] = g * 17;
                            converted[dst + 2] = b * 17;
                            converted[dst + 3] = a * 17;
                        } else if (tex->m_format == GxTex_Argb1555) {
                            uint8_t a = (pixel >> 15) & 0x1;
                            uint8_t r = (pixel >> 10) & 0x1F;
                            uint8_t g = (pixel >> 5) & 0x1F;
                            uint8_t b = pixel & 0x1F;
                            converted[dst + 0] = (r << 3) | (r >> 2);
                            converted[dst + 1] = (g << 3) | (g >> 2);
                            converted[dst + 2] = (b << 3) | (b >> 2);
                            converted[dst + 3] = a ? 255 : 0;
                        } else {
                            // Rgb565
                            uint8_t r = (pixel >> 11) & 0x1F;
                            uint8_t g = (pixel >> 5) & 0x3F;
                            uint8_t b = pixel & 0x1F;
                            converted[dst + 0] = (r << 3) | (r >> 2);
                            converted[dst + 1] = (g << 2) | (g >> 4);
                            converted[dst + 2] = (b << 3) | (b >> 2);
                            converted[dst + 3] = 255;
                        }
                    }
                }

                WGPUTexelCopyTextureInfo destination = {};
                destination.texture = texData->texture;
                destination.mipLevel = mipLevel - baseMip;
                destination.origin = { 0, 0, static_cast<uint32_t>(face) };
                destination.aspect = WGPUTextureAspect_All;

                WGPUTexelCopyBufferLayout dataLayout = {};
                dataLayout.offset = 0;
                dataLayout.bytesPerRow = rgba8BytesPerRow;
                dataLayout.rowsPerImage = mipHeight;

                WGPUExtent3D writeSize = { mipWidth, mipHeight, 1 };

                wgpuQueueWriteTexture(this->m_queue, &destination, converted, rgba8BytesPerRow * mipHeight, &dataLayout, &writeSize);

                delete[] converted;
            } else {
                // Direct upload (RGBA8, BGRA8, etc.)
                WGPUTexelCopyTextureInfo destination = {};
                destination.texture = texData->texture;
                destination.mipLevel = mipLevel - baseMip;
                destination.origin = { 0, 0, static_cast<uint32_t>(face) };
                destination.aspect = WGPUTextureAspect_All;

                WGPUTexelCopyBufferLayout dataLayout = {};
                dataLayout.offset = 0;
                dataLayout.bytesPerRow = texelStrideInBytes;
                dataLayout.rowsPerImage = mipHeight;

                WGPUExtent3D writeSize = { mipWidth, mipHeight, 1 };

                wgpuQueueWriteTexture(this->m_queue, &destination, texels, texelStrideInBytes * mipHeight, &dataLayout, &writeSize);
            }
        }
    }

    // Unlock
    tex->m_userFunc(GxTex_Unlock, tex->m_width, tex->m_height, 0, 0, tex->m_userArg, texelStrideInBytes, texels);
}

// DXT compute decompression pipeline

void CGxDeviceWebGPU::IEnsureDxtPipeline() {
    if (this->m_dxtPipeline) {
        return;
    }

    // Create shader module
    WGPUShaderSourceWGSL wgslSource = {};
    wgslSource.chain.sType = WGPUSType_ShaderSourceWGSL;
    wgslSource.code = { s_dxtDecompressShader, WGPU_STRLEN };

    WGPUShaderModuleDescriptor shaderDesc = {};
    shaderDesc.nextInChain = &wgslSource.chain;

    this->m_dxtShaderModule = wgpuDeviceCreateShaderModule(this->m_device, &shaderDesc);
    if (!this->m_dxtShaderModule) {
        CGxDevice::Log("WebGPU: Failed to create DXT shader module");
        return;
    }

    // Create bind group layout
    WGPUBindGroupLayoutEntry entries[3] = {};

    // Binding 0: Uniform buffer (params)
    entries[0].binding = 0;
    entries[0].visibility = WGPUShaderStage_Compute;
    entries[0].buffer.type = WGPUBufferBindingType_Uniform;
    entries[0].buffer.minBindingSize = 16;

    // Binding 1: Storage buffer (compressed data, read-only)
    entries[1].binding = 1;
    entries[1].visibility = WGPUShaderStage_Compute;
    entries[1].buffer.type = WGPUBufferBindingType_ReadOnlyStorage;

    // Binding 2: Storage texture (output, write-only)
    entries[2].binding = 2;
    entries[2].visibility = WGPUShaderStage_Compute;
    entries[2].storageTexture.access = WGPUStorageTextureAccess_WriteOnly;
    entries[2].storageTexture.format = WGPUTextureFormat_RGBA8Unorm;
    entries[2].storageTexture.viewDimension = WGPUTextureViewDimension_2D;

    WGPUBindGroupLayoutDescriptor bglDesc = {};
    bglDesc.entryCount = 3;
    bglDesc.entries = entries;

    this->m_dxtBindGroupLayout = wgpuDeviceCreateBindGroupLayout(this->m_device, &bglDesc);

    // Create pipeline layout
    WGPUPipelineLayoutDescriptor pipelineLayoutDesc = {};
    pipelineLayoutDesc.bindGroupLayoutCount = 1;
    pipelineLayoutDesc.bindGroupLayouts = &this->m_dxtBindGroupLayout;

    WGPUPipelineLayout pipelineLayout = wgpuDeviceCreatePipelineLayout(this->m_device, &pipelineLayoutDesc);

    // Create compute pipeline
    WGPUComputePipelineDescriptor pipelineDesc = {};
    pipelineDesc.layout = pipelineLayout;
    pipelineDesc.compute.module = this->m_dxtShaderModule;
    pipelineDesc.compute.entryPoint = { "main", WGPU_STRLEN };

    this->m_dxtPipeline = wgpuDeviceCreateComputePipeline(this->m_device, &pipelineDesc);

    wgpuPipelineLayoutRelease(pipelineLayout);

    if (!this->m_dxtPipeline) {
        CGxDevice::Log("WebGPU: Failed to create DXT compute pipeline");
    }
}

void CGxDeviceWebGPU::IDxtDecompress(
    WebGPUTextureData* texData,
    const void* compressedData,
    uint32_t dataSize,
    uint32_t width,
    uint32_t height,
    uint32_t blocksPerRow,
    uint32_t mipLevel,
    uint32_t face,
    EGxTexFormat format
) {
    this->IEnsureDxtPipeline();
    if (!this->m_dxtPipeline) {
        return;
    }

    // Determine mode
    uint32_t mode;
    if (format == GxTex_Dxt1) {
        mode = 0;
    } else if (format == GxTex_Dxt3) {
        mode = 1;
    } else {
        mode = 2;
    }

    // Create uniform buffer with params
    struct {
        uint32_t mode;
        uint32_t width;
        uint32_t height;
        uint32_t blocksPerRow;
    } params = { mode, width, height, blocksPerRow };

    WGPUBufferDescriptor uniformBufDesc = {};
    uniformBufDesc.usage = WGPUBufferUsage_Uniform | WGPUBufferUsage_CopyDst;
    uniformBufDesc.size = sizeof(params);

    WGPUBuffer uniformBuf = wgpuDeviceCreateBuffer(this->m_device, &uniformBufDesc);
    wgpuQueueWriteBuffer(this->m_queue, uniformBuf, 0, &params, sizeof(params));

    // Create storage buffer with compressed data
    WGPUBufferDescriptor storageBufDesc = {};
    storageBufDesc.usage = WGPUBufferUsage_Storage | WGPUBufferUsage_CopyDst;
    storageBufDesc.size = dataSize;

    WGPUBuffer storageBuf = wgpuDeviceCreateBuffer(this->m_device, &storageBufDesc);
    wgpuQueueWriteBuffer(this->m_queue, storageBuf, 0, compressedData, dataSize);

    // Create storage texture view for the target mip/face
    WGPUTextureViewDescriptor storageViewDesc = {};
    storageViewDesc.format = WGPUTextureFormat_RGBA8Unorm;
    storageViewDesc.dimension = WGPUTextureViewDimension_2D;
    storageViewDesc.baseMipLevel = mipLevel;
    storageViewDesc.mipLevelCount = 1;
    storageViewDesc.baseArrayLayer = face;
    storageViewDesc.arrayLayerCount = 1;

    WGPUTextureView storageView = wgpuTextureCreateView(texData->texture, &storageViewDesc);

    // Create bind group
    WGPUBindGroupEntry bgEntries[3] = {};

    bgEntries[0].binding = 0;
    bgEntries[0].buffer = uniformBuf;
    bgEntries[0].offset = 0;
    bgEntries[0].size = sizeof(params);

    bgEntries[1].binding = 1;
    bgEntries[1].buffer = storageBuf;
    bgEntries[1].offset = 0;
    bgEntries[1].size = dataSize;

    bgEntries[2].binding = 2;
    bgEntries[2].textureView = storageView;

    WGPUBindGroupDescriptor bgDesc = {};
    bgDesc.layout = this->m_dxtBindGroupLayout;
    bgDesc.entryCount = 3;
    bgDesc.entries = bgEntries;

    WGPUBindGroup bindGroup = wgpuDeviceCreateBindGroup(this->m_device, &bgDesc);

    // Dispatch compute shader
    WGPUCommandEncoderDescriptor encoderDesc = {};
    WGPUCommandEncoder encoder = wgpuDeviceCreateCommandEncoder(this->m_device, &encoderDesc);

    WGPUComputePassDescriptor passDesc = {};
    WGPUComputePassEncoder pass = wgpuCommandEncoderBeginComputePass(encoder, &passDesc);

    wgpuComputePassEncoderSetPipeline(pass, this->m_dxtPipeline);
    wgpuComputePassEncoderSetBindGroup(pass, 0, bindGroup, 0, nullptr);

    uint32_t blocksX = (width + 3) / 4;
    uint32_t blocksY = (height + 3) / 4;
    wgpuComputePassEncoderDispatchWorkgroups(pass, blocksX, blocksY, 1);

    wgpuComputePassEncoderEnd(pass);

    WGPUCommandBufferDescriptor cmdDesc = {};
    WGPUCommandBuffer cmdBuf = wgpuCommandEncoderFinish(encoder, &cmdDesc);
    wgpuQueueSubmit(this->m_queue, 1, &cmdBuf);

    // Cleanup
    wgpuCommandBufferRelease(cmdBuf);
    wgpuComputePassEncoderRelease(pass);
    wgpuCommandEncoderRelease(encoder);
    wgpuBindGroupRelease(bindGroup);
    wgpuTextureViewRelease(storageView);
    wgpuBufferDestroy(storageBuf);
    wgpuBufferRelease(storageBuf);
    wgpuBufferDestroy(uniformBuf);
    wgpuBufferRelease(uniformBuf);
}

// Stubs

void CGxDeviceWebGPU::IShaderCreate(CGxShader* shader) {
    // Release any existing shader module
    if (shader->apiSpecific) {
        wgpuShaderModuleRelease(static_cast<WGPUShaderModule>(shader->apiSpecific));
        shader->apiSpecific = nullptr;
    }

    shader->valid = 0;
    shader->loaded = 1;

    if (!this->m_context || !this->m_device) {
        return;
    }

    if (shader->code.Count() == 0) {
        // No code payload (e.g. untranslated skinning permutation).
        // Mark valid anyway so uber-shader fallback path works.
        shader->valid = 1;
        return;
    }

    // code contains WGSL text from the translated BLS file
    std::string wgslSource(
        reinterpret_cast<const char*>(shader->code.Ptr()),
        shader->code.Count()
    );

    WGPUShaderSourceWGSL wgslDesc = {};
    wgslDesc.chain.sType = WGPUSType_ShaderSourceWGSL;
    wgslDesc.code = { wgslSource.c_str(), WGPU_STRLEN };

    WGPUShaderModuleDescriptor moduleDesc = {};
    moduleDesc.nextInChain = &wgslDesc.chain;

    WGPUShaderModule module = wgpuDeviceCreateShaderModule(this->m_device, &moduleDesc);
    if (module) {
        shader->apiSpecific = module;
        shader->valid = 1;
    } else {
        CGxDevice::Log("WebGPU: Failed to create shader module from BLS WGSL (%u bytes)",
                       shader->code.Count());
    }
}

void CGxDeviceWebGPU::ShaderCreate(CGxShader* shaders[], EGxShTarget target, const char* basePath, const char* shaderName, int32_t permutations) {
    if (permutations == 0) {
        return;
    }

    auto shaderList = &this->m_shaderList[target];

    // Check if already loaded (single permutation case)
    if (permutations == 1) {
        auto shader = shaderList->Ptr(shaderName);
        if (shader) {
            shaders[0] = shader;
            shader->refCount++;
            return;
        }
    }

    // Check if already loaded (multi-permutation case)
    if (permutations > 1) {
        char key[256];
        int32_t p = 0;
        while (p < permutations) {
            sprintf(key, "%s:%d", shaderName, p);
            auto shader = shaderList->Ptr(key);
            shaders[p] = shader;
            if (!shader) {
                break;
            }
            p++;
        }

        if (p == permutations) {
            for (p = 0; p < permutations; p++) {
                shaders[p]->refCount++;
            }
            return;
        }
    }

    // Determine shader directory: /Shaders/Vertex/wgsl or /Shaders/Pixel/wgsl
    const char* shaderType = (target == GxSh_Vertex) ? "Vertex" : "Pixel";

    // Create shader objects and load WGSL from individual files
    for (int32_t p = 0; p < permutations; p++) {
        char key[256];
        if (permutations == 1) {
            sprintf(key, "%s", shaderName);
        } else {
            sprintf(key, "%s:%d", shaderName, p);
        }

        auto shader = shaderList->New(key, 0, 0);
        shaders[p] = shader;
        shader->refCount++;
        shader->target = target;

        // Build path: /Shaders/{Vertex|Pixel}/wgsl/{shaderName}/{p}.wgsl
        char path[260];
        sprintf(path, "/Shaders/%s/wgsl/%s/%d.wgsl", shaderType, shaderName, p);

        std::ifstream file(path, std::ios::in | std::ios::binary | std::ios::ate);
        if (file.is_open()) {
            std::streamsize size = file.tellg();
            file.seekg(0, std::ios::beg);

            shader->code.SetCount(static_cast<uint32_t>(size));
            file.read(reinterpret_cast<char*>(shader->code.Ptr()), size);
            file.close();

            shader->loaded = 0;
            shader->int34 = 0;
        } else {
            CGxDevice::Log("WebGPU: Failed to load shader %s", path);
        }
    }
}

int32_t CGxDeviceWebGPU::StereoEnabled() {
    return 0;
}
