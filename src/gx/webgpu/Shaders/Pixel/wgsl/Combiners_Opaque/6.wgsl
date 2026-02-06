struct UniformBlock_1_ {
    ps_uniforms_vec4_: array<vec4<f32>, 13>,
}

struct FragmentOutput {
    @location(0) ps_oC0_: vec4<f32>,
}

@group(0) @binding(1) var<uniform> global: UniformBlock_1_;
@group(1) @binding(0) var ps_s0_smp: sampler;
@group(1) @binding(1) var ps_s0_tex: texture_2d<f32>;
@group(1) @binding(8) var ps_s4_smp: sampler;
@group(1) @binding(9) var ps_s4_tex: texture_2d<f32>;
@group(1) @binding(10) var ps_s5_smp: sampler;
@group(1) @binding(11) var ps_s5_tex: texture_2d<f32>;
@group(1) @binding(12) var ps_s6_smp: sampler;
@group(1) @binding(13) var ps_s6_tex: texture_2d<f32>;
@group(1) @binding(14) var ps_s7_smp: sampler;
@group(1) @binding(15) var ps_s7_tex: texture_2d<f32>;

@fragment fn main(@location(0) ps_v0_: vec4<f32>, @location(1) ps_v1_: vec4<f32>, @location(2) ps_v2_: vec4<f32>, @location(3) ps_v3_: vec4<f32>, @location(4) ps_v4_: vec4<f32>, @location(5) io_5_4_: vec4<f32>, @location(6) io_5_5_: vec4<f32>, @location(10) io_11_0_: vec4<f32>) -> FragmentOutput {
    var ps_r0_: vec4<f32>;
    var ps_r1_: vec4<f32>;
    var ps_r2_: vec4<f32>;
    var ps_r3_: vec4<f32>;
    var ps_r4_: vec4<f32>;
    var ps_r5_: vec4<f32>;
    var ps_oC0_: vec4<f32>;

    var local: f32;

    ps_r0_ = textureSample(ps_s0_tex, ps_s0_smp, ps_v1_.xy);
    ps_r0_.w = max(abs(ps_v4_.x), abs(ps_v4_.y));
    ps_r0_.w = clamp(((ps_r0_.w * -3.4482758f) + 3.413793f), 0f, 1f);
    ps_r1_.x = (-(ps_r0_.w) + 0.01f);
    if (ps_r1_.x >= 0f) {
        local = 0f;
    } else {
        local = 1f;
    }
    ps_r1_.x = local;
    if (ps_r1_.x != -(ps_r1_.x)) {
        {
            if (10f < ps_v2_.z) {
                {
                    ps_r1_ = ((ps_v4_.xyzx * vec4<f32>(0.5f, 0.5f, 1f, 0f)) + vec4<f32>(0.5f, 0.5f, 0f, 0f));
                    ps_r1_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r1_.xy, ps_r1_.w);
                    let _e139 = ((ps_v4_.xy * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
                    ps_r1_.y = _e139.x;
                    ps_r1_.z = _e139.y;
                    let _e152 = (ps_r1_.yz + global.ps_uniforms_vec4_[5].xy);
                    ps_r2_.x = _e152.x;
                    ps_r2_.y = _e152.y;
                    let _e167 = (vec2<f32>(1f, 0f) * ps_v4_.zx);
                    ps_r2_.z = _e167.x;
                    ps_r2_.w = _e167.y;
                    ps_r2_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r2_.xy, ps_r2_.w);
                    ps_r1_.x = (ps_r1_.x + ps_r2_.x);
                    let _e191 = (ps_r1_.yz + global.ps_uniforms_vec4_[7].xy);
                    ps_r2_.x = _e191.x;
                    ps_r2_.y = _e191.y;
                    let _e206 = (vec2<f32>(1f, 0f) * ps_v4_.zx);
                    ps_r2_.z = _e206.x;
                    ps_r2_.w = _e206.y;
                    ps_r2_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r2_.xy, ps_r2_.w);
                    ps_r1_.x = (ps_r1_.x + ps_r2_.x);
                    let _e230 = (ps_r1_.yz + global.ps_uniforms_vec4_[9].xy);
                    ps_r2_.x = _e230.x;
                    ps_r2_.y = _e230.y;
                    let _e245 = (vec2<f32>(1f, 0f) * ps_v4_.zx);
                    ps_r2_.z = _e245.x;
                    ps_r2_.w = _e245.y;
                    ps_r2_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r2_.xy, ps_r2_.w);
                    ps_r1_.x = (ps_r1_.x + ps_r2_.x);
                    let _e269 = (ps_r1_.yz + global.ps_uniforms_vec4_[11].xy);
                    ps_r2_.x = _e269.x;
                    ps_r2_.y = _e269.y;
                    let _e284 = (vec2<f32>(1f, 0f) * ps_v4_.zx);
                    ps_r2_.z = _e284.x;
                    ps_r2_.w = _e284.y;
                    ps_r2_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r2_.xy, ps_r2_.w);
                    ps_r1_.x = (ps_r1_.x + ps_r2_.x);
                    ps_r1_.x = ((ps_r1_.x * 0.2f) + -1f);
                    ps_r1_.x = ((ps_r0_.w * ps_r1_.x) + 1f);
                }
            } else {
                {
                    ps_r2_ = ((ps_v4_.xyzx * vec4<f32>(0.5f, 0.5f, 1f, 0f)) + vec4<f32>(0.5f, 0.5f, 0f, 0f));
                    ps_r2_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r2_.xy, ps_r2_.w);
                    let _e367 = ((ps_v4_.xy * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
                    ps_r1_.y = _e367.x;
                    ps_r1_.z = _e367.y;
                    let _e380 = (ps_r1_.yz + global.ps_uniforms_vec4_[5].xy);
                    ps_r3_.x = _e380.x;
                    ps_r3_.y = _e380.y;
                    let _e395 = (vec2<f32>(1f, 0f) * ps_v4_.zx);
                    ps_r3_.z = _e395.x;
                    ps_r3_.w = _e395.y;
                    ps_r3_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r3_.xy, ps_r3_.w);
                    ps_r1_.w = (ps_r2_.x + ps_r3_.x);
                    let _e419 = (ps_r1_.yz + global.ps_uniforms_vec4_[6].xy);
                    ps_r2_.x = _e419.x;
                    ps_r2_.y = _e419.y;
                    let _e434 = (vec2<f32>(1f, 0f) * ps_v4_.zx);
                    ps_r2_.z = _e434.x;
                    ps_r2_.w = _e434.y;
                    ps_r2_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r2_.xy, ps_r2_.w);
                    ps_r1_.w = (ps_r1_.w + ps_r2_.x);
                    let _e458 = (ps_r1_.yz + global.ps_uniforms_vec4_[7].xy);
                    ps_r2_.x = _e458.x;
                    ps_r2_.y = _e458.y;
                    let _e473 = (vec2<f32>(1f, 0f) * ps_v4_.zx);
                    ps_r2_.z = _e473.x;
                    ps_r2_.w = _e473.y;
                    ps_r2_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r2_.xy, ps_r2_.w);
                    ps_r1_.w = (ps_r1_.w + ps_r2_.x);
                    let _e497 = (ps_r1_.yz + global.ps_uniforms_vec4_[8].xy);
                    ps_r2_.x = _e497.x;
                    ps_r2_.y = _e497.y;
                    let _e512 = (vec2<f32>(1f, 0f) * ps_v4_.zx);
                    ps_r2_.z = _e512.x;
                    ps_r2_.w = _e512.y;
                    ps_r2_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r2_.xy, ps_r2_.w);
                    ps_r1_.w = (ps_r1_.w + ps_r2_.x);
                    let _e536 = (ps_r1_.yz + global.ps_uniforms_vec4_[9].xy);
                    ps_r2_.x = _e536.x;
                    ps_r2_.y = _e536.y;
                    let _e551 = (vec2<f32>(1f, 0f) * ps_v4_.zx);
                    ps_r2_.z = _e551.x;
                    ps_r2_.w = _e551.y;
                    ps_r2_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r2_.xy, ps_r2_.w);
                    ps_r1_.w = (ps_r1_.w + ps_r2_.x);
                    let _e575 = (ps_r1_.yz + global.ps_uniforms_vec4_[10].xy);
                    ps_r2_.x = _e575.x;
                    ps_r2_.y = _e575.y;
                    let _e590 = (vec2<f32>(1f, 0f) * ps_v4_.zx);
                    ps_r2_.z = _e590.x;
                    ps_r2_.w = _e590.y;
                    ps_r2_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r2_.xy, ps_r2_.w);
                    ps_r1_.w = (ps_r1_.w + ps_r2_.x);
                    let _e614 = (ps_r1_.yz + global.ps_uniforms_vec4_[11].xy);
                    ps_r2_.x = _e614.x;
                    ps_r2_.y = _e614.y;
                    let _e629 = (vec2<f32>(1f, 0f) * ps_v4_.zx);
                    ps_r2_.z = _e629.x;
                    ps_r2_.w = _e629.y;
                    ps_r2_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r2_.xy, ps_r2_.w);
                    ps_r1_.w = (ps_r1_.w + ps_r2_.x);
                    let _e653 = (ps_r1_.yz + global.ps_uniforms_vec4_[12].xy);
                    ps_r2_.x = _e653.x;
                    ps_r2_.y = _e653.y;
                    let _e668 = (vec2<f32>(1f, 0f) * ps_v4_.zx);
                    ps_r2_.z = _e668.x;
                    ps_r2_.w = _e668.y;
                    ps_r2_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r2_.xy, ps_r2_.w);
                    ps_r1_.y = (ps_r1_.w + ps_r2_.x);
                    ps_r1_.y = ((ps_r1_.y * 0.11111111f) + -1f);
                    ps_r1_.x = ((ps_r0_.w * ps_r1_.y) + 1f);
                }
            }
        }
    } else {
        {
            ps_r1_.x = 1f;
        }
    }
    ps_r0_.w = dot(ps_v2_.xyz, global.ps_uniforms_vec4_[3].xyz);
    ps_r0_.w = clamp((ps_r0_.w + global.ps_uniforms_vec4_[3].w), 0f, 1f);
    ps_r2_.x = mix(ps_r1_.x, 1f, ps_r0_.w);
    ps_r0_.w = max(abs(io_5_4_.x), abs(io_5_4_.y));
    if (ps_r0_.w < 1f) {
        {
            ps_r1_ = ((io_5_4_.xyzx * vec4<f32>(0.5f, 0.5f, 1f, 0f)) + vec4<f32>(0.5f, 0.5f, 0f, 0f));
            ps_r1_ = textureSampleLevel(ps_s5_tex, ps_s5_smp, ps_r1_.xy, ps_r1_.w);
            let _e801 = ((io_5_4_.xy * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
            ps_r1_.y = _e801.x;
            ps_r1_.z = _e801.y;
            let _e814 = (ps_r1_.yz + global.ps_uniforms_vec4_[5].xy);
            ps_r3_.x = _e814.x;
            ps_r3_.y = _e814.y;
            let _e829 = (vec2<f32>(1f, 0f) * io_5_4_.zx);
            ps_r3_.z = _e829.x;
            ps_r3_.w = _e829.y;
            ps_r3_ = textureSampleLevel(ps_s5_tex, ps_s5_smp, ps_r3_.xy, ps_r3_.w);
            ps_r0_.w = (ps_r1_.x + ps_r3_.x);
            let _e853 = (ps_r1_.yz + global.ps_uniforms_vec4_[7].xy);
            ps_r3_.x = _e853.x;
            ps_r3_.y = _e853.y;
            let _e868 = (vec2<f32>(1f, 0f) * io_5_4_.zx);
            ps_r3_.z = _e868.x;
            ps_r3_.w = _e868.y;
            ps_r3_ = textureSampleLevel(ps_s5_tex, ps_s5_smp, ps_r3_.xy, ps_r3_.w);
            ps_r0_.w = (ps_r0_.w + ps_r3_.x);
            let _e892 = (ps_r1_.yz + global.ps_uniforms_vec4_[9].xy);
            ps_r3_.x = _e892.x;
            ps_r3_.y = _e892.y;
            let _e907 = (vec2<f32>(1f, 0f) * io_5_4_.zx);
            ps_r3_.z = _e907.x;
            ps_r3_.w = _e907.y;
            ps_r3_ = textureSampleLevel(ps_s5_tex, ps_s5_smp, ps_r3_.xy, ps_r3_.w);
            ps_r0_.w = (ps_r0_.w + ps_r3_.x);
            let _e931 = (ps_r1_.yz + global.ps_uniforms_vec4_[11].xy);
            ps_r1_.x = _e931.x;
            ps_r1_.y = _e931.y;
            let _e946 = (vec2<f32>(1f, 0f) * io_5_4_.zx);
            ps_r1_.z = _e946.x;
            ps_r1_.w = _e946.y;
            ps_r1_ = textureSampleLevel(ps_s5_tex, ps_s5_smp, ps_r1_.xy, ps_r1_.w);
            ps_r0_.w = (ps_r0_.w + ps_r1_.x);
            ps_r0_.w = (ps_r0_.w * 0.2f);
        }
    } else {
        {
            ps_r1_.x = max(abs(io_5_5_.x), abs(io_5_5_.y));
            if (ps_r1_.x < 1f) {
                {
                    ps_r1_ = ((io_5_5_.xyzx * vec4<f32>(0.5f, 0.5f, 1f, 0f)) + vec4<f32>(0.5f, 0.5f, 0f, 0f));
                    ps_r1_ = textureSampleLevel(ps_s6_tex, ps_s6_smp, ps_r1_.xy, ps_r1_.w);
                    let _e1026 = ((io_5_5_.xy * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
                    ps_r1_.y = _e1026.x;
                    ps_r1_.z = _e1026.y;
                    let _e1039 = (ps_r1_.yz + global.ps_uniforms_vec4_[5].xy);
                    ps_r3_.x = _e1039.x;
                    ps_r3_.y = _e1039.y;
                    let _e1054 = (vec2<f32>(1f, 0f) * io_5_5_.zx);
                    ps_r3_.z = _e1054.x;
                    ps_r3_.w = _e1054.y;
                    ps_r3_ = textureSampleLevel(ps_s6_tex, ps_s6_smp, ps_r3_.xy, ps_r3_.w);
                    ps_r1_.x = (ps_r1_.x + ps_r3_.x);
                    let _e1078 = (ps_r1_.yz + global.ps_uniforms_vec4_[7].xy);
                    ps_r3_.x = _e1078.x;
                    ps_r3_.y = _e1078.y;
                    let _e1093 = (vec2<f32>(1f, 0f) * io_5_5_.zx);
                    ps_r3_.z = _e1093.x;
                    ps_r3_.w = _e1093.y;
                    ps_r3_ = textureSampleLevel(ps_s6_tex, ps_s6_smp, ps_r3_.xy, ps_r3_.w);
                    ps_r1_.x = (ps_r1_.x + ps_r3_.x);
                    let _e1117 = (ps_r1_.yz + global.ps_uniforms_vec4_[9].xy);
                    ps_r3_.x = _e1117.x;
                    ps_r3_.y = _e1117.y;
                    let _e1132 = (vec2<f32>(1f, 0f) * io_5_5_.zx);
                    ps_r3_.z = _e1132.x;
                    ps_r3_.w = _e1132.y;
                    ps_r3_ = textureSampleLevel(ps_s6_tex, ps_s6_smp, ps_r3_.xy, ps_r3_.w);
                    ps_r1_.x = (ps_r1_.x + ps_r3_.x);
                    let _e1156 = (ps_r1_.yz + global.ps_uniforms_vec4_[11].xy);
                    ps_r3_.x = _e1156.x;
                    ps_r3_.y = _e1156.y;
                    let _e1171 = (vec2<f32>(1f, 0f) * io_5_5_.zx);
                    ps_r3_.z = _e1171.x;
                    ps_r3_.w = _e1171.y;
                    ps_r3_ = textureSampleLevel(ps_s6_tex, ps_s6_smp, ps_r3_.xy, ps_r3_.w);
                    ps_r1_.x = (ps_r1_.x + ps_r3_.x);
                    ps_r0_.w = (ps_r1_.x * 0.2f);
                }
            } else {
                {
                    let _e1214 = ((ps_v4_.ww * vec2<f32>(0.5f, 0f)) + vec2<f32>(0.5f, 0f));
                    ps_r1_.x = _e1214.x;
                    ps_r1_.w = _e1214.y;
                    ps_r1_.y = ((io_5_4_.w * 0.5f) + 0.5f);
                    ps_r1_.z = io_5_5_.w;
                    ps_r3_ = textureSampleLevel(ps_s7_tex, ps_s7_smp, ps_r1_.xy, ps_r1_.w);
                    let _e1250 = (ps_r1_.xy + global.ps_uniforms_vec4_[5].xy);
                    ps_r4_.x = _e1250.x;
                    ps_r4_.y = _e1250.y;
                    let _e1258 = ps_r1_.zw;
                    ps_r4_.z = _e1258.x;
                    ps_r4_.w = _e1258.y;
                    ps_r5_ = textureSampleLevel(ps_s7_tex, ps_s7_smp, ps_r4_.xy, ps_r4_.w);
                    ps_r1_.z = (ps_r3_.x + ps_r5_.x);
                    let _e1282 = (ps_r1_.xy + global.ps_uniforms_vec4_[7].xy);
                    ps_r4_.x = _e1282.x;
                    ps_r4_.y = _e1282.y;
                    ps_r3_ = textureSampleLevel(ps_s7_tex, ps_s7_smp, ps_r4_.xy, ps_r4_.w);
                    ps_r1_.z = (ps_r1_.z + ps_r3_.x);
                    let _e1306 = (ps_r1_.xy + global.ps_uniforms_vec4_[9].xy);
                    ps_r4_.x = _e1306.x;
                    ps_r4_.y = _e1306.y;
                    ps_r3_ = textureSampleLevel(ps_s7_tex, ps_s7_smp, ps_r4_.xy, ps_r4_.w);
                    ps_r1_.z = (ps_r1_.z + ps_r3_.x);
                    let _e1330 = (ps_r1_.xy + global.ps_uniforms_vec4_[11].xy);
                    ps_r4_.x = _e1330.x;
                    ps_r4_.y = _e1330.y;
                    ps_r3_ = textureSampleLevel(ps_s7_tex, ps_s7_smp, ps_r4_.xy, ps_r4_.w);
                    ps_r1_.x = (ps_r1_.z + ps_r3_.x);
                    ps_r1_.y = ps_v4_.w;
                    ps_r1_.z = io_5_4_.w;
                    ps_r2_.y = max(abs(ps_r1_.y), abs(ps_r1_.z));
                    ps_r1_.y = clamp(((ps_r2_.y * -11.111111f) + 11f), 0f, 1f);
                    ps_r1_.x = ((ps_r1_.x * 0.2f) + -1f);
                    ps_r0_.w = ((ps_r1_.y * ps_r1_.x) + 1f);
                }
            }
        }
    }
    ps_r1_.x = min(ps_r0_.w, ps_r2_.x);
    ps_r0_.w = dot(global.ps_uniforms_vec4_[4].xyz, ps_v3_.xyz);
    ps_r0_.w = (-(abs(ps_r0_.w)) + 1.2f);
    ps_r0_.w = (ps_r0_.w * ps_r0_.w);
    ps_r0_.w = clamp((ps_r0_.w * ps_r0_.w), 0f, 1f);
    ps_r2_.x = mix(ps_r1_.x, 1f, ps_r0_.w);
    ps_r0_.w = ((ps_r2_.x * 0.3f) + 0.7f);
    let _e1479 = (ps_r0_.www * ps_v0_.xyz);
    ps_r1_.x = _e1479.x;
    ps_r1_.y = _e1479.y;
    ps_r1_.z = _e1479.z;
    let _e1498 = ((ps_r0_.xyz * ps_r1_.xyz) + -(global.ps_uniforms_vec4_[2].xyz));
    ps_r0_.x = _e1498.x;
    ps_r0_.y = _e1498.y;
    ps_r0_.z = _e1498.z;
    let _e1516 = ((io_11_0_.xxx * ps_r0_.xyz) + global.ps_uniforms_vec4_[2].xyz);
    ps_oC0_.x = _e1516.x;
    ps_oC0_.y = _e1516.y;
    ps_oC0_.z = _e1516.z;
    ps_oC0_.w = ps_v0_.w;
    return FragmentOutput(ps_oC0_);
}
