#ifndef GX_WEBGPU_C_GX_DEVICE_WEBGPU_HPP
#define GX_WEBGPU_C_GX_DEVICE_WEBGPU_HPP

#include "gx/CGxDevice.hpp"
#include <webgpu/webgpu.h>
#include <unordered_map>

class CGxBatch;
class CGxShader;

struct WebGPUTextureData {
    WGPUTexture texture = nullptr;
    WGPUTextureView view = nullptr;
    WGPUSampler sampler = nullptr;
};

class CGxDeviceWebGPU : public CGxDevice {
    public:
        // Core WebGPU objects
        WGPUInstance m_instance = nullptr;
        WGPUAdapter m_adapter = nullptr;
        WGPUDevice m_device = nullptr;
        WGPUQueue m_queue = nullptr;
        WGPUSurface m_surface = nullptr;
        WGPUTextureFormat m_surfaceFormat = WGPUTextureFormat_BGRA8Unorm;

        // Depth buffer
        WGPUTexture m_depthTexture = nullptr;
        WGPUTextureView m_depthTextureView = nullptr;

        // Per-frame state
        WGPUCommandEncoder m_currentCommandEncoder = nullptr;
        WGPURenderPassEncoder m_currentRenderPass = nullptr;
        WGPUTextureView m_currentTargetView = nullptr;

        // Canvas dimensions
        uint32_t m_canvasWidth = 0;
        uint32_t m_canvasHeight = 0;

        // Native BC format support (GPU accelerated DXT)
        bool m_bcFormatsSupported = false;

        // DXT compute decompression pipeline (fallback when native BC not supported)
        WGPUShaderModule m_dxtShaderModule = nullptr;
        WGPUComputePipeline m_dxtPipeline = nullptr;
        WGPUBindGroupLayout m_dxtBindGroupLayout = nullptr;

        // Default texture (shared by BLS path)
        WGPUTexture m_whiteTexture = nullptr;
        WGPUTextureView m_whiteTextureView = nullptr;
        WGPUSampler m_defaultSampler = nullptr;

        // Triangle fan conversion scratch
        WGPUBuffer m_fanIB = nullptr;
        uint32_t m_fanIBSize = 0;

        // BLS shader pipeline (flat vec4 array uniforms matching DX shadow constants)
        static constexpr uint32_t BLS_VS_UNIFORM_SIZE = 4096;   // 256 vec4 registers
        static constexpr uint32_t BLS_PS_UNIFORM_SIZE = 4096;
        static constexpr uint32_t BLS_VS_UNIFORM_ALIGN = 4096;  // already 256-aligned
        static constexpr uint32_t BLS_PS_UNIFORM_ALIGN = 4096;
        static constexpr uint32_t BLS_VS_RING_SIZE = BLS_VS_UNIFORM_ALIGN * 1024;
        static constexpr uint32_t BLS_PS_RING_SIZE = BLS_PS_UNIFORM_ALIGN * 1024;

        WGPUBindGroupLayout m_blsUniformBGL = nullptr;
        WGPUBindGroupLayout m_blsTextureBGL = nullptr;
        WGPUPipelineLayout m_blsPipelineLayout = nullptr;
        WGPUBuffer m_blsVsUniformBuf = nullptr;
        WGPUBuffer m_blsPsUniformBuf = nullptr;
        WGPUBindGroup m_blsUniformBindGroup = nullptr;
        uint32_t m_blsVsRingOffset = 0;
        uint32_t m_blsPsRingOffset = 0;
        std::unordered_map<uint64_t, WGPURenderPipeline> m_blsPipelineCache;

        // Virtual member functions (pure virtuals + key overrides)
        virtual void ITexMarkAsUpdated(CGxTex*);
        virtual void IRsSendToHw(EGxRenderState);
        virtual int32_t DeviceCreate(int32_t (*windowProc)(void* window, uint32_t message, uintptr_t wparam, intptr_t lparam), const CGxFormat&);
        virtual int32_t DeviceSetFormat(const CGxFormat&);
        virtual void* DeviceWindow();
        virtual void DeviceWM(EGxWM wm, uintptr_t param1, uintptr_t param2);
        virtual void CapsWindowSize(CRect&);
        virtual void CapsWindowSizeInScreenCoords(CRect& dst);
        virtual void ScenePresent(void);
        virtual void SceneClear(uint32_t, CImVector);
        virtual void XformSetProjection(const C44Matrix&);
        virtual void XformSetView(const C44Matrix&);
        virtual void Draw(CGxBatch* batch, int32_t indexed);
        virtual void PoolSizeSet(CGxPool*, uint32_t);
        virtual char* BufLock(CGxBuf*);
        virtual int32_t BufUnlock(CGxBuf*, uint32_t);
        virtual void BufData(CGxBuf* buf, const void* data, size_t size, uintptr_t offset);
        virtual void TexDestroy(CGxTex* texId);
        virtual void IShaderCreate(CGxShader*);
        virtual void ShaderCreate(CGxShader*[], EGxShTarget, const char*, const char*, int32_t);
        virtual int32_t StereoEnabled(void);

        CGxDeviceWebGPU();
        ~CGxDeviceWebGPU();

    private:
        void ISetCaps(const CGxFormat& format);
        void ICreateDepthTexture(void);
        void IDestroyDepthTexture(void);
        void ITexCreate(CGxTex*);
        void ITexUpload(CGxTex*);
        WGPUTextureFormat IGetTextureFormat(EGxTexFormat format);
        void IEnsureDxtPipeline(void);
        void IDxtDecompress(WebGPUTextureData* texData, const void* compressedData, uint32_t dataSize, uint32_t width, uint32_t height, uint32_t blocksPerRow, uint32_t mipLevel, uint32_t face, EGxTexFormat format);
        void IInitRenderPipeline(void);
        void IDestroyRenderPipeline(void);

        // BLS shader pipeline
        void IInitBLSPipeline(void);
        void IDestroyBLSPipeline(void);
        void DrawBLS(CGxBatch* batch, int32_t indexed, CGxShader* vs, CGxShader* ps);
        void IUploadBLSVSUniforms(void);
        void IUploadBLSPSUniforms(void);
        WGPURenderPipeline IGetBLSPipeline(CGxBatch* batch, CGxShader* vs, CGxShader* ps);
        uint32_t IBuildPipelineKey(CGxBatch* batch);
        uint64_t IBuildBLSPipelineKey(CGxBatch* batch, CGxShader* vs, CGxShader* ps);
        WGPUBindGroup ICreateBLSTextureBindGroup(void);
};

#endif
