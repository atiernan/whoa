struct UniformBlock_1_ {
    ps_uniforms_vec4_: array<vec4<f32>, 12>,
}

struct FragmentOutput {
    @location(0) ps_oC0_: vec4<f32>,
}

@group(0) @binding(1) var<uniform> global: UniformBlock_1_;
@group(1) @binding(0) var ps_s0_smp: sampler;
@group(1) @binding(1) var ps_s0_tex: texture_2d<f32>;
@group(1) @binding(2) var ps_s1_smp: sampler;
@group(1) @binding(3) var ps_s1_tex: texture_2d<f32>;
@group(1) @binding(8) var ps_s4_smp: sampler;
@group(1) @binding(9) var ps_s4_tex: texture_2d<f32>;
@group(1) @binding(10) var ps_s5_smp: sampler;
@group(1) @binding(11) var ps_s5_tex: texture_2d<f32>;
@group(1) @binding(12) var ps_s6_smp: sampler;
@group(1) @binding(13) var ps_s6_tex: texture_2d<f32>;
@group(1) @binding(14) var ps_s7_smp: sampler;
@group(1) @binding(15) var ps_s7_tex: texture_2d<f32>;

@fragment fn main(@location(0) ps_v0_: vec4<f32>, @location(1) ps_v1_: vec4<f32>, @location(2) ps_v2_: vec4<f32>, @location(3) ps_v3_: vec4<f32>, @location(4) ps_v4_: vec4<f32>, @location(5) io_5_4_: vec4<f32>, @location(6) io_5_5_: vec4<f32>, @location(7) io_5_6_: vec4<f32>, @location(10) io_11_0_: vec4<f32>) -> FragmentOutput {
    var ps_r0_: vec4<f32>;
    var ps_r1_: vec4<f32>;
    var ps_r2_: vec4<f32>;
    var ps_r3_: vec4<f32>;
    var ps_r4_: vec4<f32>;
    var ps_r5_: vec4<f32>;
    var ps_oC0_: vec4<f32>;

    var local: f32;

    ps_r0_ = textureSample(ps_s0_tex, ps_s0_smp, ps_v1_.xy);
    ps_r1_ = textureSample(ps_s1_tex, ps_s1_smp, ps_v2_.xy);
    let _e46 = (ps_r0_.xyz * ps_r1_.xyz);
    ps_r0_.x = _e46.x;
    ps_r0_.y = _e46.y;
    ps_r0_.z = _e46.z;
    let _e59 = (ps_r0_.xyz + ps_r0_.xyz);
    ps_r0_.x = _e59.x;
    ps_r0_.y = _e59.y;
    ps_r0_.z = _e59.z;
    ps_oC0_.w = (dot(ps_v0_.ww, ps_r1_.ww) + 0f);
    ps_r0_.w = max(abs(io_5_4_.x), abs(io_5_4_.y));
    ps_r0_.w = clamp(((ps_r0_.w * -3.4482758f) + 3.413793f), 0f, 1f);
    if (-(ps_r0_.w) >= 0f) {
        local = 0f;
    } else {
        local = 1f;
    }
    ps_r0_.w = local;
    if (ps_r0_.w != -(ps_r0_.w)) {
        {
            if (10f < ps_v3_.z) {
                {
                    ps_r1_ = ((io_5_4_.xyzx * vec4<f32>(0.5f, 0.5f, 1f, 0f)) + vec4<f32>(0.5f, 0.5f, 0f, 0f));
                    ps_r1_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r1_.xy, ps_r1_.w);
                    let _e174 = ((io_5_4_.xy * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
                    ps_r1_.y = _e174.x;
                    ps_r1_.z = _e174.y;
                    let _e187 = (ps_r1_.yz + global.ps_uniforms_vec4_[5].xy);
                    ps_r2_.x = _e187.x;
                    ps_r2_.y = _e187.y;
                    let _e202 = (vec2<f32>(1f, 0f) * io_5_4_.zx);
                    ps_r2_.z = _e202.x;
                    ps_r2_.w = _e202.y;
                    ps_r2_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r2_.xy, ps_r2_.w);
                    ps_r0_.w = (ps_r1_.x + ps_r2_.x);
                    let _e226 = (ps_r1_.yz + global.ps_uniforms_vec4_[7].xy);
                    ps_r2_.x = _e226.x;
                    ps_r2_.y = _e226.y;
                    let _e241 = (vec2<f32>(1f, 0f) * io_5_4_.zx);
                    ps_r2_.z = _e241.x;
                    ps_r2_.w = _e241.y;
                    ps_r2_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r2_.xy, ps_r2_.w);
                    ps_r0_.w = (ps_r0_.w + ps_r2_.x);
                    let _e265 = (ps_r1_.yz + global.ps_uniforms_vec4_[9].xy);
                    ps_r2_.x = _e265.x;
                    ps_r2_.y = _e265.y;
                    let _e280 = (vec2<f32>(1f, 0f) * io_5_4_.zx);
                    ps_r2_.z = _e280.x;
                    ps_r2_.w = _e280.y;
                    ps_r2_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r2_.xy, ps_r2_.w);
                    ps_r0_.w = (ps_r0_.w + ps_r2_.x);
                    let _e304 = (ps_r1_.yz + global.ps_uniforms_vec4_[11].xy);
                    ps_r1_.x = _e304.x;
                    ps_r1_.y = _e304.y;
                    let _e319 = (vec2<f32>(1f, 0f) * io_5_4_.zx);
                    ps_r1_.z = _e319.x;
                    ps_r1_.w = _e319.y;
                    ps_r1_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r1_.xy, ps_r1_.w);
                    ps_r0_.w = (ps_r0_.w + ps_r1_.x);
                    ps_r0_.w = (ps_r0_.w * 0.2f);
                }
            } else {
                {
                    ps_r1_ = ((io_5_4_.xyzx * vec4<f32>(0.5f, 0.5f, 1f, 0f)) + vec4<f32>(0.5f, 0.5f, 0f, 0f));
                    ps_r1_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r1_.xy, ps_r1_.w);
                    let _e382 = ((io_5_4_.xy * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
                    ps_r1_.y = _e382.x;
                    ps_r1_.z = _e382.y;
                    let _e395 = (ps_r1_.yz + global.ps_uniforms_vec4_[5].xy);
                    ps_r2_.x = _e395.x;
                    ps_r2_.y = _e395.y;
                    let _e410 = (vec2<f32>(1f, 0f) * io_5_4_.zx);
                    ps_r2_.z = _e410.x;
                    ps_r2_.w = _e410.y;
                    ps_r2_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r2_.xy, ps_r2_.w);
                    ps_r1_.x = (ps_r1_.x + ps_r2_.x);
                    let _e434 = (ps_r1_.yz + global.ps_uniforms_vec4_[7].xy);
                    ps_r2_.x = _e434.x;
                    ps_r2_.y = _e434.y;
                    let _e449 = (vec2<f32>(1f, 0f) * io_5_4_.zx);
                    ps_r2_.z = _e449.x;
                    ps_r2_.w = _e449.y;
                    ps_r2_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r2_.xy, ps_r2_.w);
                    ps_r1_.x = (ps_r1_.x + ps_r2_.x);
                    let _e473 = (ps_r1_.yz + global.ps_uniforms_vec4_[9].xy);
                    ps_r2_.x = _e473.x;
                    ps_r2_.y = _e473.y;
                    let _e488 = (vec2<f32>(1f, 0f) * io_5_4_.zx);
                    ps_r2_.z = _e488.x;
                    ps_r2_.w = _e488.y;
                    ps_r2_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r2_.xy, ps_r2_.w);
                    ps_r1_.x = (ps_r1_.x + ps_r2_.x);
                    let _e512 = (ps_r1_.yz + global.ps_uniforms_vec4_[11].xy);
                    ps_r2_.x = _e512.x;
                    ps_r2_.y = _e512.y;
                    let _e527 = (vec2<f32>(1f, 0f) * io_5_4_.zx);
                    ps_r2_.z = _e527.x;
                    ps_r2_.w = _e527.y;
                    ps_r2_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r2_.xy, ps_r2_.w);
                    ps_r1_.x = (ps_r1_.x + ps_r2_.x);
                    ps_r0_.w = (ps_r1_.x * 0.2f);
                }
            }
        }
    } else {
        {
            ps_r0_.w = 1f;
        }
    }
    ps_r1_.x = dot(ps_v3_.xyz, global.ps_uniforms_vec4_[3].xyz);
    ps_r1_.x = clamp((ps_r1_.x + global.ps_uniforms_vec4_[3].w), 0f, 1f);
    ps_r2_.x = mix(ps_r0_.w, 1f, ps_r1_.x);
    ps_r0_.w = max(abs(io_5_5_.x), abs(io_5_5_.y));
    if (ps_r0_.w < 1f) {
        {
            ps_r1_ = ((io_5_5_.xyzx * vec4<f32>(0.5f, 0.5f, 1f, 0f)) + vec4<f32>(0.5f, 0.5f, 0f, 0f));
            ps_r1_ = textureSampleLevel(ps_s5_tex, ps_s5_smp, ps_r1_.xy, ps_r1_.w);
            let _e642 = ((io_5_5_.xy * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
            ps_r1_.y = _e642.x;
            ps_r1_.z = _e642.y;
            let _e655 = (ps_r1_.yz + global.ps_uniforms_vec4_[5].xy);
            ps_r3_.x = _e655.x;
            ps_r3_.y = _e655.y;
            let _e670 = (vec2<f32>(1f, 0f) * io_5_5_.zx);
            ps_r3_.z = _e670.x;
            ps_r3_.w = _e670.y;
            ps_r3_ = textureSampleLevel(ps_s5_tex, ps_s5_smp, ps_r3_.xy, ps_r3_.w);
            ps_r0_.w = (ps_r1_.x + ps_r3_.x);
            let _e694 = (ps_r1_.yz + global.ps_uniforms_vec4_[7].xy);
            ps_r3_.x = _e694.x;
            ps_r3_.y = _e694.y;
            let _e709 = (vec2<f32>(1f, 0f) * io_5_5_.zx);
            ps_r3_.z = _e709.x;
            ps_r3_.w = _e709.y;
            ps_r3_ = textureSampleLevel(ps_s5_tex, ps_s5_smp, ps_r3_.xy, ps_r3_.w);
            ps_r0_.w = (ps_r0_.w + ps_r3_.x);
            let _e733 = (ps_r1_.yz + global.ps_uniforms_vec4_[9].xy);
            ps_r3_.x = _e733.x;
            ps_r3_.y = _e733.y;
            let _e748 = (vec2<f32>(1f, 0f) * io_5_5_.zx);
            ps_r3_.z = _e748.x;
            ps_r3_.w = _e748.y;
            ps_r3_ = textureSampleLevel(ps_s5_tex, ps_s5_smp, ps_r3_.xy, ps_r3_.w);
            ps_r0_.w = (ps_r0_.w + ps_r3_.x);
            let _e772 = (ps_r1_.yz + global.ps_uniforms_vec4_[11].xy);
            ps_r1_.x = _e772.x;
            ps_r1_.y = _e772.y;
            let _e787 = (vec2<f32>(1f, 0f) * io_5_5_.zx);
            ps_r1_.z = _e787.x;
            ps_r1_.w = _e787.y;
            ps_r1_ = textureSampleLevel(ps_s5_tex, ps_s5_smp, ps_r1_.xy, ps_r1_.w);
            ps_r0_.w = (ps_r0_.w + ps_r1_.x);
            ps_r0_.w = (ps_r0_.w * 0.2f);
        }
    } else {
        {
            ps_r1_.x = max(abs(io_5_6_.x), abs(io_5_6_.y));
            if (ps_r1_.x < 1f) {
                {
                    ps_r1_ = ((io_5_6_.xyzx * vec4<f32>(0.5f, 0.5f, 1f, 0f)) + vec4<f32>(0.5f, 0.5f, 0f, 0f));
                    ps_r1_ = textureSampleLevel(ps_s6_tex, ps_s6_smp, ps_r1_.xy, ps_r1_.w);
                    let _e866 = ((io_5_6_.xy * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
                    ps_r1_.y = _e866.x;
                    ps_r1_.z = _e866.y;
                    let _e879 = (ps_r1_.yz + global.ps_uniforms_vec4_[5].xy);
                    ps_r3_.x = _e879.x;
                    ps_r3_.y = _e879.y;
                    let _e894 = (vec2<f32>(1f, 0f) * io_5_6_.zx);
                    ps_r3_.z = _e894.x;
                    ps_r3_.w = _e894.y;
                    ps_r3_ = textureSampleLevel(ps_s6_tex, ps_s6_smp, ps_r3_.xy, ps_r3_.w);
                    ps_r1_.x = (ps_r1_.x + ps_r3_.x);
                    let _e918 = (ps_r1_.yz + global.ps_uniforms_vec4_[7].xy);
                    ps_r3_.x = _e918.x;
                    ps_r3_.y = _e918.y;
                    let _e933 = (vec2<f32>(1f, 0f) * io_5_6_.zx);
                    ps_r3_.z = _e933.x;
                    ps_r3_.w = _e933.y;
                    ps_r3_ = textureSampleLevel(ps_s6_tex, ps_s6_smp, ps_r3_.xy, ps_r3_.w);
                    ps_r1_.x = (ps_r1_.x + ps_r3_.x);
                    let _e957 = (ps_r1_.yz + global.ps_uniforms_vec4_[9].xy);
                    ps_r3_.x = _e957.x;
                    ps_r3_.y = _e957.y;
                    let _e972 = (vec2<f32>(1f, 0f) * io_5_6_.zx);
                    ps_r3_.z = _e972.x;
                    ps_r3_.w = _e972.y;
                    ps_r3_ = textureSampleLevel(ps_s6_tex, ps_s6_smp, ps_r3_.xy, ps_r3_.w);
                    ps_r1_.x = (ps_r1_.x + ps_r3_.x);
                    let _e996 = (ps_r1_.yz + global.ps_uniforms_vec4_[11].xy);
                    ps_r3_.x = _e996.x;
                    ps_r3_.y = _e996.y;
                    let _e1011 = (vec2<f32>(1f, 0f) * io_5_6_.zx);
                    ps_r3_.z = _e1011.x;
                    ps_r3_.w = _e1011.y;
                    ps_r3_ = textureSampleLevel(ps_s6_tex, ps_s6_smp, ps_r3_.xy, ps_r3_.w);
                    ps_r1_.x = (ps_r1_.x + ps_r3_.x);
                    ps_r0_.w = (ps_r1_.x * 0.2f);
                }
            } else {
                {
                    let _e1053 = ((io_5_4_.ww * vec2<f32>(0.5f, 0f)) + vec2<f32>(0.5f, 0f));
                    ps_r1_.x = _e1053.x;
                    ps_r1_.w = _e1053.y;
                    ps_r1_.y = ((io_5_5_.w * 0.5f) + 0.5f);
                    ps_r1_.z = io_5_6_.w;
                    ps_r3_ = textureSampleLevel(ps_s7_tex, ps_s7_smp, ps_r1_.xy, ps_r1_.w);
                    let _e1089 = (ps_r1_.xy + global.ps_uniforms_vec4_[5].xy);
                    ps_r4_.x = _e1089.x;
                    ps_r4_.y = _e1089.y;
                    let _e1097 = ps_r1_.zw;
                    ps_r4_.z = _e1097.x;
                    ps_r4_.w = _e1097.y;
                    ps_r5_ = textureSampleLevel(ps_s7_tex, ps_s7_smp, ps_r4_.xy, ps_r4_.w);
                    ps_r1_.z = (ps_r3_.x + ps_r5_.x);
                    let _e1121 = (ps_r1_.xy + global.ps_uniforms_vec4_[7].xy);
                    ps_r4_.x = _e1121.x;
                    ps_r4_.y = _e1121.y;
                    ps_r3_ = textureSampleLevel(ps_s7_tex, ps_s7_smp, ps_r4_.xy, ps_r4_.w);
                    ps_r1_.z = (ps_r1_.z + ps_r3_.x);
                    let _e1145 = (ps_r1_.xy + global.ps_uniforms_vec4_[9].xy);
                    ps_r4_.x = _e1145.x;
                    ps_r4_.y = _e1145.y;
                    ps_r3_ = textureSampleLevel(ps_s7_tex, ps_s7_smp, ps_r4_.xy, ps_r4_.w);
                    ps_r1_.z = (ps_r1_.z + ps_r3_.x);
                    let _e1169 = (ps_r1_.xy + global.ps_uniforms_vec4_[11].xy);
                    ps_r4_.x = _e1169.x;
                    ps_r4_.y = _e1169.y;
                    ps_r3_ = textureSampleLevel(ps_s7_tex, ps_s7_smp, ps_r4_.xy, ps_r4_.w);
                    ps_r1_.x = (ps_r1_.z + ps_r3_.x);
                    ps_r1_.y = io_5_4_.w;
                    ps_r1_.z = io_5_5_.w;
                    ps_r2_.y = max(abs(ps_r1_.y), abs(ps_r1_.z));
                    ps_r1_.y = clamp(((ps_r2_.y * -11.111111f) + 11f), 0f, 1f);
                    ps_r1_.x = ((ps_r1_.x * 0.2f) + -1f);
                    ps_r0_.w = ((ps_r1_.y * ps_r1_.x) + 1f);
                }
            }
        }
    }
    ps_r1_.x = min(ps_r0_.w, ps_r2_.x);
    ps_r0_.w = dot(global.ps_uniforms_vec4_[4].xyz, ps_v4_.xyz);
    ps_r0_.w = (-(abs(ps_r0_.w)) + 1.2f);
    ps_r0_.w = (ps_r0_.w * ps_r0_.w);
    ps_r0_.w = clamp((ps_r0_.w * ps_r0_.w), 0f, 1f);
    ps_r2_.x = mix(ps_r1_.x, 1f, ps_r0_.w);
    ps_r0_.w = ((ps_r2_.x * 0.3f) + 0.7f);
    let _e1316 = (ps_r0_.www * ps_v0_.xyz);
    ps_r1_.x = _e1316.x;
    ps_r1_.y = _e1316.y;
    ps_r1_.z = _e1316.z;
    let _e1335 = ((ps_r0_.xyz * ps_r1_.xyz) + -(global.ps_uniforms_vec4_[2].xyz));
    ps_r0_.x = _e1335.x;
    ps_r0_.y = _e1335.y;
    ps_r0_.z = _e1335.z;
    let _e1353 = ((io_11_0_.xxx * ps_r0_.xyz) + global.ps_uniforms_vec4_[2].xyz);
    ps_oC0_.x = _e1353.x;
    ps_oC0_.y = _e1353.y;
    ps_oC0_.z = _e1353.z;
    return FragmentOutput(ps_oC0_);
}
