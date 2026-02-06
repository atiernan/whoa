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
    ps_r0_.w = (ps_r0_.w * ps_v0_.w);
    ps_oC0_.w = (ps_r1_.w * ps_r0_.w);
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
                    let _e161 = ((io_5_4_.xy * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
                    ps_r1_.y = _e161.x;
                    ps_r1_.z = _e161.y;
                    let _e174 = (ps_r1_.yz + global.ps_uniforms_vec4_[5].xy);
                    ps_r2_.x = _e174.x;
                    ps_r2_.y = _e174.y;
                    let _e189 = (vec2<f32>(1f, 0f) * io_5_4_.zx);
                    ps_r2_.z = _e189.x;
                    ps_r2_.w = _e189.y;
                    ps_r2_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r2_.xy, ps_r2_.w);
                    ps_r0_.w = (ps_r1_.x + ps_r2_.x);
                    let _e213 = (ps_r1_.yz + global.ps_uniforms_vec4_[7].xy);
                    ps_r2_.x = _e213.x;
                    ps_r2_.y = _e213.y;
                    let _e228 = (vec2<f32>(1f, 0f) * io_5_4_.zx);
                    ps_r2_.z = _e228.x;
                    ps_r2_.w = _e228.y;
                    ps_r2_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r2_.xy, ps_r2_.w);
                    ps_r0_.w = (ps_r0_.w + ps_r2_.x);
                    let _e252 = (ps_r1_.yz + global.ps_uniforms_vec4_[9].xy);
                    ps_r2_.x = _e252.x;
                    ps_r2_.y = _e252.y;
                    let _e267 = (vec2<f32>(1f, 0f) * io_5_4_.zx);
                    ps_r2_.z = _e267.x;
                    ps_r2_.w = _e267.y;
                    ps_r2_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r2_.xy, ps_r2_.w);
                    ps_r0_.w = (ps_r0_.w + ps_r2_.x);
                    let _e291 = (ps_r1_.yz + global.ps_uniforms_vec4_[11].xy);
                    ps_r1_.x = _e291.x;
                    ps_r1_.y = _e291.y;
                    let _e306 = (vec2<f32>(1f, 0f) * io_5_4_.zx);
                    ps_r1_.z = _e306.x;
                    ps_r1_.w = _e306.y;
                    ps_r1_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r1_.xy, ps_r1_.w);
                    ps_r0_.w = (ps_r0_.w + ps_r1_.x);
                    ps_r0_.w = (ps_r0_.w * 0.2f);
                }
            } else {
                {
                    ps_r1_ = ((io_5_4_.xyzx * vec4<f32>(0.5f, 0.5f, 1f, 0f)) + vec4<f32>(0.5f, 0.5f, 0f, 0f));
                    ps_r1_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r1_.xy, ps_r1_.w);
                    let _e369 = ((io_5_4_.xy * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
                    ps_r1_.y = _e369.x;
                    ps_r1_.z = _e369.y;
                    let _e382 = (ps_r1_.yz + global.ps_uniforms_vec4_[5].xy);
                    ps_r2_.x = _e382.x;
                    ps_r2_.y = _e382.y;
                    let _e397 = (vec2<f32>(1f, 0f) * io_5_4_.zx);
                    ps_r2_.z = _e397.x;
                    ps_r2_.w = _e397.y;
                    ps_r2_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r2_.xy, ps_r2_.w);
                    ps_r1_.x = (ps_r1_.x + ps_r2_.x);
                    let _e421 = (ps_r1_.yz + global.ps_uniforms_vec4_[7].xy);
                    ps_r2_.x = _e421.x;
                    ps_r2_.y = _e421.y;
                    let _e436 = (vec2<f32>(1f, 0f) * io_5_4_.zx);
                    ps_r2_.z = _e436.x;
                    ps_r2_.w = _e436.y;
                    ps_r2_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r2_.xy, ps_r2_.w);
                    ps_r1_.x = (ps_r1_.x + ps_r2_.x);
                    let _e460 = (ps_r1_.yz + global.ps_uniforms_vec4_[9].xy);
                    ps_r2_.x = _e460.x;
                    ps_r2_.y = _e460.y;
                    let _e475 = (vec2<f32>(1f, 0f) * io_5_4_.zx);
                    ps_r2_.z = _e475.x;
                    ps_r2_.w = _e475.y;
                    ps_r2_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r2_.xy, ps_r2_.w);
                    ps_r1_.x = (ps_r1_.x + ps_r2_.x);
                    let _e499 = (ps_r1_.yz + global.ps_uniforms_vec4_[11].xy);
                    ps_r2_.x = _e499.x;
                    ps_r2_.y = _e499.y;
                    let _e514 = (vec2<f32>(1f, 0f) * io_5_4_.zx);
                    ps_r2_.z = _e514.x;
                    ps_r2_.w = _e514.y;
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
            let _e629 = ((io_5_5_.xy * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
            ps_r1_.y = _e629.x;
            ps_r1_.z = _e629.y;
            let _e642 = (ps_r1_.yz + global.ps_uniforms_vec4_[5].xy);
            ps_r3_.x = _e642.x;
            ps_r3_.y = _e642.y;
            let _e657 = (vec2<f32>(1f, 0f) * io_5_5_.zx);
            ps_r3_.z = _e657.x;
            ps_r3_.w = _e657.y;
            ps_r3_ = textureSampleLevel(ps_s5_tex, ps_s5_smp, ps_r3_.xy, ps_r3_.w);
            ps_r0_.w = (ps_r1_.x + ps_r3_.x);
            let _e681 = (ps_r1_.yz + global.ps_uniforms_vec4_[7].xy);
            ps_r3_.x = _e681.x;
            ps_r3_.y = _e681.y;
            let _e696 = (vec2<f32>(1f, 0f) * io_5_5_.zx);
            ps_r3_.z = _e696.x;
            ps_r3_.w = _e696.y;
            ps_r3_ = textureSampleLevel(ps_s5_tex, ps_s5_smp, ps_r3_.xy, ps_r3_.w);
            ps_r0_.w = (ps_r0_.w + ps_r3_.x);
            let _e720 = (ps_r1_.yz + global.ps_uniforms_vec4_[9].xy);
            ps_r3_.x = _e720.x;
            ps_r3_.y = _e720.y;
            let _e735 = (vec2<f32>(1f, 0f) * io_5_5_.zx);
            ps_r3_.z = _e735.x;
            ps_r3_.w = _e735.y;
            ps_r3_ = textureSampleLevel(ps_s5_tex, ps_s5_smp, ps_r3_.xy, ps_r3_.w);
            ps_r0_.w = (ps_r0_.w + ps_r3_.x);
            let _e759 = (ps_r1_.yz + global.ps_uniforms_vec4_[11].xy);
            ps_r1_.x = _e759.x;
            ps_r1_.y = _e759.y;
            let _e774 = (vec2<f32>(1f, 0f) * io_5_5_.zx);
            ps_r1_.z = _e774.x;
            ps_r1_.w = _e774.y;
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
                    let _e853 = ((io_5_6_.xy * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
                    ps_r1_.y = _e853.x;
                    ps_r1_.z = _e853.y;
                    let _e866 = (ps_r1_.yz + global.ps_uniforms_vec4_[5].xy);
                    ps_r3_.x = _e866.x;
                    ps_r3_.y = _e866.y;
                    let _e881 = (vec2<f32>(1f, 0f) * io_5_6_.zx);
                    ps_r3_.z = _e881.x;
                    ps_r3_.w = _e881.y;
                    ps_r3_ = textureSampleLevel(ps_s6_tex, ps_s6_smp, ps_r3_.xy, ps_r3_.w);
                    ps_r1_.x = (ps_r1_.x + ps_r3_.x);
                    let _e905 = (ps_r1_.yz + global.ps_uniforms_vec4_[7].xy);
                    ps_r3_.x = _e905.x;
                    ps_r3_.y = _e905.y;
                    let _e920 = (vec2<f32>(1f, 0f) * io_5_6_.zx);
                    ps_r3_.z = _e920.x;
                    ps_r3_.w = _e920.y;
                    ps_r3_ = textureSampleLevel(ps_s6_tex, ps_s6_smp, ps_r3_.xy, ps_r3_.w);
                    ps_r1_.x = (ps_r1_.x + ps_r3_.x);
                    let _e944 = (ps_r1_.yz + global.ps_uniforms_vec4_[9].xy);
                    ps_r3_.x = _e944.x;
                    ps_r3_.y = _e944.y;
                    let _e959 = (vec2<f32>(1f, 0f) * io_5_6_.zx);
                    ps_r3_.z = _e959.x;
                    ps_r3_.w = _e959.y;
                    ps_r3_ = textureSampleLevel(ps_s6_tex, ps_s6_smp, ps_r3_.xy, ps_r3_.w);
                    ps_r1_.x = (ps_r1_.x + ps_r3_.x);
                    let _e983 = (ps_r1_.yz + global.ps_uniforms_vec4_[11].xy);
                    ps_r3_.x = _e983.x;
                    ps_r3_.y = _e983.y;
                    let _e998 = (vec2<f32>(1f, 0f) * io_5_6_.zx);
                    ps_r3_.z = _e998.x;
                    ps_r3_.w = _e998.y;
                    ps_r3_ = textureSampleLevel(ps_s6_tex, ps_s6_smp, ps_r3_.xy, ps_r3_.w);
                    ps_r1_.x = (ps_r1_.x + ps_r3_.x);
                    ps_r0_.w = (ps_r1_.x * 0.2f);
                }
            } else {
                {
                    let _e1040 = ((io_5_4_.ww * vec2<f32>(0.5f, 0f)) + vec2<f32>(0.5f, 0f));
                    ps_r1_.x = _e1040.x;
                    ps_r1_.w = _e1040.y;
                    ps_r1_.y = ((io_5_5_.w * 0.5f) + 0.5f);
                    ps_r1_.z = io_5_6_.w;
                    ps_r3_ = textureSampleLevel(ps_s7_tex, ps_s7_smp, ps_r1_.xy, ps_r1_.w);
                    let _e1076 = (ps_r1_.xy + global.ps_uniforms_vec4_[5].xy);
                    ps_r4_.x = _e1076.x;
                    ps_r4_.y = _e1076.y;
                    let _e1084 = ps_r1_.zw;
                    ps_r4_.z = _e1084.x;
                    ps_r4_.w = _e1084.y;
                    ps_r5_ = textureSampleLevel(ps_s7_tex, ps_s7_smp, ps_r4_.xy, ps_r4_.w);
                    ps_r1_.z = (ps_r3_.x + ps_r5_.x);
                    let _e1108 = (ps_r1_.xy + global.ps_uniforms_vec4_[7].xy);
                    ps_r4_.x = _e1108.x;
                    ps_r4_.y = _e1108.y;
                    ps_r3_ = textureSampleLevel(ps_s7_tex, ps_s7_smp, ps_r4_.xy, ps_r4_.w);
                    ps_r1_.z = (ps_r1_.z + ps_r3_.x);
                    let _e1132 = (ps_r1_.xy + global.ps_uniforms_vec4_[9].xy);
                    ps_r4_.x = _e1132.x;
                    ps_r4_.y = _e1132.y;
                    ps_r3_ = textureSampleLevel(ps_s7_tex, ps_s7_smp, ps_r4_.xy, ps_r4_.w);
                    ps_r1_.z = (ps_r1_.z + ps_r3_.x);
                    let _e1156 = (ps_r1_.xy + global.ps_uniforms_vec4_[11].xy);
                    ps_r4_.x = _e1156.x;
                    ps_r4_.y = _e1156.y;
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
    let _e1303 = (ps_r0_.www * ps_v0_.xyz);
    ps_r1_.x = _e1303.x;
    ps_r1_.y = _e1303.y;
    ps_r1_.z = _e1303.z;
    let _e1322 = ((ps_r0_.xyz * ps_r1_.xyz) + -(global.ps_uniforms_vec4_[2].xyz));
    ps_r0_.x = _e1322.x;
    ps_r0_.y = _e1322.y;
    ps_r0_.z = _e1322.z;
    let _e1340 = ((io_11_0_.xxx * ps_r0_.xyz) + global.ps_uniforms_vec4_[2].xyz);
    ps_oC0_.x = _e1340.x;
    ps_oC0_.y = _e1340.y;
    ps_oC0_.z = _e1340.z;
    return FragmentOutput(ps_oC0_);
}
