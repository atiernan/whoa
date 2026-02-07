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
