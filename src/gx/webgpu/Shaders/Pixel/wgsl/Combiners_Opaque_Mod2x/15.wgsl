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
    var ps_r6_: vec4<f32>;
    var ps_oC0_: vec4<f32>;

    var local: f32;

    ps_r0_ = textureSample(ps_s0_tex, ps_s0_smp, ps_v1_.xy);
    ps_r1_ = textureSample(ps_s1_tex, ps_s1_smp, ps_v2_.xy);
    let _e47 = (ps_r0_.xyz * ps_r1_.xyz);
    ps_r0_.x = _e47.x;
    ps_r0_.y = _e47.y;
    ps_r0_.z = _e47.z;
    let _e60 = (ps_r0_.xyz + ps_r0_.xyz);
    ps_r0_.x = _e60.x;
    ps_r0_.y = _e60.y;
    ps_r0_.z = _e60.z;
    ps_r0_.w = (dot(ps_v0_.ww, ps_r1_.ww) + 0f);
    ps_r1_ = vec4((dot(ps_v0_.ww, ps_r1_.ww) + -(global.ps_uniforms_vec4_[2].w)));
    if any((ps_r1_.xyz < vec3(0f))) {
        discard;
    }
    ps_r1_.x = max(abs(io_5_4_.x), abs(io_5_4_.y));
    ps_r1_.x = clamp(((ps_r1_.x * -3.4482758f) + 3.413793f), 0f, 1f);
    if (-(ps_r1_.x) >= 0f) {
        local = 0f;
    } else {
        local = 1f;
    }
    ps_r1_.x = local;
    if (ps_r1_.x != -(ps_r1_.x)) {
        {
            if (10f < ps_v3_.z) {
                {
                    ps_r1_ = ((io_5_4_.xyzx * vec4<f32>(0.5f, 0.5f, 1f, 0f)) + vec4<f32>(0.5f, 0.5f, 0f, 0f));
                    ps_r1_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r1_.xy, ps_r1_.w);
                    let _e193 = ((io_5_4_.xy * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
                    ps_r1_.y = _e193.x;
                    ps_r1_.z = _e193.y;
                    let _e206 = (ps_r1_.yz + global.ps_uniforms_vec4_[5].xy);
                    ps_r2_.x = _e206.x;
                    ps_r2_.y = _e206.y;
                    let _e221 = (vec2<f32>(1f, 0f) * io_5_4_.zx);
                    ps_r2_.z = _e221.x;
                    ps_r2_.w = _e221.y;
                    ps_r2_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r2_.xy, ps_r2_.w);
                    ps_r1_.x = (ps_r1_.x + ps_r2_.x);
                    let _e245 = (ps_r1_.yz + global.ps_uniforms_vec4_[7].xy);
                    ps_r2_.x = _e245.x;
                    ps_r2_.y = _e245.y;
                    let _e260 = (vec2<f32>(1f, 0f) * io_5_4_.zx);
                    ps_r2_.z = _e260.x;
                    ps_r2_.w = _e260.y;
                    ps_r2_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r2_.xy, ps_r2_.w);
                    ps_r1_.x = (ps_r1_.x + ps_r2_.x);
                    let _e284 = (ps_r1_.yz + global.ps_uniforms_vec4_[9].xy);
                    ps_r2_.x = _e284.x;
                    ps_r2_.y = _e284.y;
                    let _e299 = (vec2<f32>(1f, 0f) * io_5_4_.zx);
                    ps_r2_.z = _e299.x;
                    ps_r2_.w = _e299.y;
                    ps_r2_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r2_.xy, ps_r2_.w);
                    ps_r1_.x = (ps_r1_.x + ps_r2_.x);
                    let _e323 = (ps_r1_.yz + global.ps_uniforms_vec4_[11].xy);
                    ps_r2_.x = _e323.x;
                    ps_r2_.y = _e323.y;
                    let _e338 = (vec2<f32>(1f, 0f) * io_5_4_.zx);
                    ps_r2_.z = _e338.x;
                    ps_r2_.w = _e338.y;
                    ps_r2_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r2_.xy, ps_r2_.w);
                    ps_r1_.x = (ps_r1_.x + ps_r2_.x);
                    ps_r1_.x = (ps_r1_.x * 0.2f);
                }
            } else {
                {
                    ps_r2_ = ((io_5_4_.xyzx * vec4<f32>(0.5f, 0.5f, 1f, 0f)) + vec4<f32>(0.5f, 0.5f, 0f, 0f));
                    ps_r2_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r2_.xy, ps_r2_.w);
                    let _e401 = ((io_5_4_.xy * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
                    ps_r1_.y = _e401.x;
                    ps_r1_.z = _e401.y;
                    let _e414 = (ps_r1_.yz + global.ps_uniforms_vec4_[5].xy);
                    ps_r3_.x = _e414.x;
                    ps_r3_.y = _e414.y;
                    let _e429 = (vec2<f32>(1f, 0f) * io_5_4_.zx);
                    ps_r3_.z = _e429.x;
                    ps_r3_.w = _e429.y;
                    ps_r3_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r3_.xy, ps_r3_.w);
                    ps_r1_.w = (ps_r2_.x + ps_r3_.x);
                    let _e453 = (ps_r1_.yz + global.ps_uniforms_vec4_[7].xy);
                    ps_r2_.x = _e453.x;
                    ps_r2_.y = _e453.y;
                    let _e468 = (vec2<f32>(1f, 0f) * io_5_4_.zx);
                    ps_r2_.z = _e468.x;
                    ps_r2_.w = _e468.y;
                    ps_r2_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r2_.xy, ps_r2_.w);
                    ps_r1_.w = (ps_r1_.w + ps_r2_.x);
                    let _e492 = (ps_r1_.yz + global.ps_uniforms_vec4_[9].xy);
                    ps_r2_.x = _e492.x;
                    ps_r2_.y = _e492.y;
                    let _e507 = (vec2<f32>(1f, 0f) * io_5_4_.zx);
                    ps_r2_.z = _e507.x;
                    ps_r2_.w = _e507.y;
                    ps_r2_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r2_.xy, ps_r2_.w);
                    ps_r1_.w = (ps_r1_.w + ps_r2_.x);
                    let _e531 = (ps_r1_.yz + global.ps_uniforms_vec4_[11].xy);
                    ps_r2_.x = _e531.x;
                    ps_r2_.y = _e531.y;
                    let _e546 = (vec2<f32>(1f, 0f) * io_5_4_.zx);
                    ps_r2_.z = _e546.x;
                    ps_r2_.w = _e546.y;
                    ps_r2_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r2_.xy, ps_r2_.w);
                    ps_r1_.y = (ps_r1_.w + ps_r2_.x);
                    ps_r1_.x = (ps_r1_.y * 0.2f);
                }
            }
        }
    } else {
        {
            ps_r1_.x = 1f;
        }
    }
    ps_r1_.y = dot(ps_v3_.xyz, global.ps_uniforms_vec4_[3].xyz);
    ps_r1_.y = clamp((ps_r1_.y + global.ps_uniforms_vec4_[3].w), 0f, 1f);
    ps_r2_.x = mix(ps_r1_.x, 1f, ps_r1_.y);
    ps_r1_.x = max(abs(io_5_5_.x), abs(io_5_5_.y));
    if (ps_r1_.x < 1f) {
        {
            ps_r1_ = ((io_5_5_.xyzx * vec4<f32>(0.5f, 0.5f, 1f, 0f)) + vec4<f32>(0.5f, 0.5f, 0f, 0f));
            ps_r1_ = textureSampleLevel(ps_s5_tex, ps_s5_smp, ps_r1_.xy, ps_r1_.w);
            let _e661 = ((io_5_5_.xy * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
            ps_r1_.y = _e661.x;
            ps_r1_.z = _e661.y;
            let _e674 = (ps_r1_.yz + global.ps_uniforms_vec4_[5].xy);
            ps_r3_.x = _e674.x;
            ps_r3_.y = _e674.y;
            let _e689 = (vec2<f32>(1f, 0f) * io_5_5_.zx);
            ps_r3_.z = _e689.x;
            ps_r3_.w = _e689.y;
            ps_r3_ = textureSampleLevel(ps_s5_tex, ps_s5_smp, ps_r3_.xy, ps_r3_.w);
            ps_r1_.x = (ps_r1_.x + ps_r3_.x);
            let _e713 = (ps_r1_.yz + global.ps_uniforms_vec4_[7].xy);
            ps_r3_.x = _e713.x;
            ps_r3_.y = _e713.y;
            let _e728 = (vec2<f32>(1f, 0f) * io_5_5_.zx);
            ps_r3_.z = _e728.x;
            ps_r3_.w = _e728.y;
            ps_r3_ = textureSampleLevel(ps_s5_tex, ps_s5_smp, ps_r3_.xy, ps_r3_.w);
            ps_r1_.x = (ps_r1_.x + ps_r3_.x);
            let _e752 = (ps_r1_.yz + global.ps_uniforms_vec4_[9].xy);
            ps_r3_.x = _e752.x;
            ps_r3_.y = _e752.y;
            let _e767 = (vec2<f32>(1f, 0f) * io_5_5_.zx);
            ps_r3_.z = _e767.x;
            ps_r3_.w = _e767.y;
            ps_r3_ = textureSampleLevel(ps_s5_tex, ps_s5_smp, ps_r3_.xy, ps_r3_.w);
            ps_r1_.x = (ps_r1_.x + ps_r3_.x);
            let _e791 = (ps_r1_.yz + global.ps_uniforms_vec4_[11].xy);
            ps_r3_.x = _e791.x;
            ps_r3_.y = _e791.y;
            let _e806 = (vec2<f32>(1f, 0f) * io_5_5_.zx);
            ps_r3_.z = _e806.x;
            ps_r3_.w = _e806.y;
            ps_r3_ = textureSampleLevel(ps_s5_tex, ps_s5_smp, ps_r3_.xy, ps_r3_.w);
            ps_r1_.x = (ps_r1_.x + ps_r3_.x);
            ps_r1_.x = (ps_r1_.x * 0.2f);
        }
    } else {
        {
            ps_r1_.y = max(abs(io_5_6_.x), abs(io_5_6_.y));
            if (ps_r1_.y < 1f) {
                {
                    ps_r3_ = ((io_5_6_.xyzx * vec4<f32>(0.5f, 0.5f, 1f, 0f)) + vec4<f32>(0.5f, 0.5f, 0f, 0f));
                    ps_r3_ = textureSampleLevel(ps_s6_tex, ps_s6_smp, ps_r3_.xy, ps_r3_.w);
                    let _e885 = ((io_5_6_.xy * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
                    ps_r1_.y = _e885.x;
                    ps_r1_.z = _e885.y;
                    let _e898 = (ps_r1_.yz + global.ps_uniforms_vec4_[5].xy);
                    ps_r4_.x = _e898.x;
                    ps_r4_.y = _e898.y;
                    let _e913 = (vec2<f32>(1f, 0f) * io_5_6_.zx);
                    ps_r4_.z = _e913.x;
                    ps_r4_.w = _e913.y;
                    ps_r4_ = textureSampleLevel(ps_s6_tex, ps_s6_smp, ps_r4_.xy, ps_r4_.w);
                    ps_r1_.w = (ps_r3_.x + ps_r4_.x);
                    let _e937 = (ps_r1_.yz + global.ps_uniforms_vec4_[7].xy);
                    ps_r3_.x = _e937.x;
                    ps_r3_.y = _e937.y;
                    let _e952 = (vec2<f32>(1f, 0f) * io_5_6_.zx);
                    ps_r3_.z = _e952.x;
                    ps_r3_.w = _e952.y;
                    ps_r3_ = textureSampleLevel(ps_s6_tex, ps_s6_smp, ps_r3_.xy, ps_r3_.w);
                    ps_r1_.w = (ps_r1_.w + ps_r3_.x);
                    let _e976 = (ps_r1_.yz + global.ps_uniforms_vec4_[9].xy);
                    ps_r3_.x = _e976.x;
                    ps_r3_.y = _e976.y;
                    let _e991 = (vec2<f32>(1f, 0f) * io_5_6_.zx);
                    ps_r3_.z = _e991.x;
                    ps_r3_.w = _e991.y;
                    ps_r3_ = textureSampleLevel(ps_s6_tex, ps_s6_smp, ps_r3_.xy, ps_r3_.w);
                    ps_r1_.w = (ps_r1_.w + ps_r3_.x);
                    let _e1015 = (ps_r1_.yz + global.ps_uniforms_vec4_[11].xy);
                    ps_r3_.x = _e1015.x;
                    ps_r3_.y = _e1015.y;
                    let _e1030 = (vec2<f32>(1f, 0f) * io_5_6_.zx);
                    ps_r3_.z = _e1030.x;
                    ps_r3_.w = _e1030.y;
                    ps_r3_ = textureSampleLevel(ps_s6_tex, ps_s6_smp, ps_r3_.xy, ps_r3_.w);
                    ps_r1_.y = (ps_r1_.w + ps_r3_.x);
                    ps_r1_.x = (ps_r1_.y * 0.2f);
                }
            } else {
                {
                    let _e1072 = ((io_5_4_.ww * vec2<f32>(0.5f, 0f)) + vec2<f32>(0.5f, 0f));
                    ps_r3_.x = _e1072.x;
                    ps_r3_.w = _e1072.y;
                    ps_r3_.y = ((io_5_5_.w * 0.5f) + 0.5f);
                    ps_r3_.z = io_5_6_.w;
                    ps_r4_ = textureSampleLevel(ps_s7_tex, ps_s7_smp, ps_r3_.xy, ps_r3_.w);
                    let _e1108 = (ps_r3_.xy + global.ps_uniforms_vec4_[5].xy);
                    ps_r5_.x = _e1108.x;
                    ps_r5_.y = _e1108.y;
                    let _e1116 = ps_r3_.zw;
                    ps_r5_.z = _e1116.x;
                    ps_r5_.w = _e1116.y;
                    ps_r6_ = textureSampleLevel(ps_s7_tex, ps_s7_smp, ps_r5_.xy, ps_r5_.w);
                    ps_r1_.y = (ps_r4_.x + ps_r6_.x);
                    let _e1140 = (ps_r3_.xy + global.ps_uniforms_vec4_[7].xy);
                    ps_r5_.x = _e1140.x;
                    ps_r5_.y = _e1140.y;
                    ps_r4_ = textureSampleLevel(ps_s7_tex, ps_s7_smp, ps_r5_.xy, ps_r5_.w);
                    ps_r1_.y = (ps_r1_.y + ps_r4_.x);
                    let _e1164 = (ps_r3_.xy + global.ps_uniforms_vec4_[9].xy);
                    ps_r5_.x = _e1164.x;
                    ps_r5_.y = _e1164.y;
                    ps_r4_ = textureSampleLevel(ps_s7_tex, ps_s7_smp, ps_r5_.xy, ps_r5_.w);
                    ps_r1_.y = (ps_r1_.y + ps_r4_.x);
                    let _e1188 = (ps_r3_.xy + global.ps_uniforms_vec4_[11].xy);
                    ps_r5_.x = _e1188.x;
                    ps_r5_.y = _e1188.y;
                    ps_r3_ = textureSampleLevel(ps_s7_tex, ps_s7_smp, ps_r5_.xy, ps_r5_.w);
                    ps_r1_.y = (ps_r1_.y + ps_r3_.x);
                    ps_r1_.z = io_5_4_.w;
                    ps_r1_.w = io_5_5_.w;
                    ps_r2_.y = max(abs(ps_r1_.z), abs(ps_r1_.w));
                    ps_r1_.z = clamp(((ps_r2_.y * -11.111111f) + 11f), 0f, 1f);
                    ps_r1_.y = ((ps_r1_.y * 0.2f) + -1f);
                    ps_r1_.x = ((ps_r1_.z * ps_r1_.y) + 1f);
                }
            }
        }
    }
    ps_r3_.x = min(ps_r1_.x, ps_r2_.x);
    ps_r1_.x = dot(global.ps_uniforms_vec4_[4].xyz, ps_v4_.xyz);
    ps_r1_.x = (-(abs(ps_r1_.x)) + 1.2f);
    ps_r1_.x = (ps_r1_.x * ps_r1_.x);
    ps_r1_.x = clamp((ps_r1_.x * ps_r1_.x), 0f, 1f);
    ps_r2_.x = mix(ps_r3_.x, 1f, ps_r1_.x);
    ps_r1_.x = ((ps_r2_.x * 0.3f) + 0.7f);
    let _e1335 = (ps_r1_.xxx * ps_v0_.xyz);
    ps_r1_.x = _e1335.x;
    ps_r1_.y = _e1335.y;
    ps_r1_.z = _e1335.z;
    let _e1354 = ((ps_r0_.xyz * ps_r1_.xyz) + -(global.ps_uniforms_vec4_[2].xyz));
    ps_r0_.x = _e1354.x;
    ps_r0_.y = _e1354.y;
    ps_r0_.z = _e1354.z;
    let _e1372 = ((io_11_0_.xxx * ps_r0_.xyz) + global.ps_uniforms_vec4_[2].xyz);
    ps_oC0_.x = _e1372.x;
    ps_oC0_.y = _e1372.y;
    ps_oC0_.z = _e1372.z;
    ps_oC0_.w = ps_r0_.w;
    return FragmentOutput(ps_oC0_);
}
