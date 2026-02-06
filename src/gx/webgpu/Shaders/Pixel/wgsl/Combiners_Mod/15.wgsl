struct UniformBlock_1_ {
    ps_uniforms_vec4_: array<vec4<f32>, 12>,
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
    var ps_r6_: vec4<f32>;
    var ps_oC0_: vec4<f32>;

    var local: f32;

    ps_r0_ = textureSample(ps_s0_tex, ps_s0_smp, ps_v1_.xy);
    ps_r1_.x = (ps_r0_.w * ps_v0_.w);
    ps_r2_ = ((ps_v0_.wwww * ps_r0_.wwww) + -(global.ps_uniforms_vec4_[2].wwww));
    if any((ps_r2_.xyz < vec3(0f))) {
        discard;
    }
    ps_r0_.w = max(abs(ps_v4_.x), abs(ps_v4_.y));
    ps_r0_.w = clamp(((ps_r0_.w * -3.4482758f) + 3.413793f), 0f, 1f);
    if (-(ps_r0_.w) >= 0f) {
        local = 0f;
    } else {
        local = 1f;
    }
    ps_r0_.w = local;
    if (ps_r0_.w != -(ps_r0_.w)) {
        {
            if (10f < ps_v2_.z) {
                {
                    ps_r2_ = ((ps_v4_.xyzx * vec4<f32>(0.5f, 0.5f, 1f, 0f)) + vec4<f32>(0.5f, 0.5f, 0f, 0f));
                    ps_r2_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r2_.xy, ps_r2_.w);
                    let _e154 = ((ps_v4_.xy * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
                    ps_r1_.y = _e154.x;
                    ps_r1_.z = _e154.y;
                    let _e167 = (ps_r1_.yz + global.ps_uniforms_vec4_[5].xy);
                    ps_r3_.x = _e167.x;
                    ps_r3_.y = _e167.y;
                    let _e182 = (vec2<f32>(1f, 0f) * ps_v4_.zx);
                    ps_r3_.z = _e182.x;
                    ps_r3_.w = _e182.y;
                    ps_r3_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r3_.xy, ps_r3_.w);
                    ps_r0_.w = (ps_r2_.x + ps_r3_.x);
                    let _e206 = (ps_r1_.yz + global.ps_uniforms_vec4_[7].xy);
                    ps_r2_.x = _e206.x;
                    ps_r2_.y = _e206.y;
                    let _e221 = (vec2<f32>(1f, 0f) * ps_v4_.zx);
                    ps_r2_.z = _e221.x;
                    ps_r2_.w = _e221.y;
                    ps_r2_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r2_.xy, ps_r2_.w);
                    ps_r0_.w = (ps_r0_.w + ps_r2_.x);
                    let _e245 = (ps_r1_.yz + global.ps_uniforms_vec4_[9].xy);
                    ps_r2_.x = _e245.x;
                    ps_r2_.y = _e245.y;
                    let _e260 = (vec2<f32>(1f, 0f) * ps_v4_.zx);
                    ps_r2_.z = _e260.x;
                    ps_r2_.w = _e260.y;
                    ps_r2_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r2_.xy, ps_r2_.w);
                    ps_r0_.w = (ps_r0_.w + ps_r2_.x);
                    let _e284 = (ps_r1_.yz + global.ps_uniforms_vec4_[11].xy);
                    ps_r2_.x = _e284.x;
                    ps_r2_.y = _e284.y;
                    let _e299 = (vec2<f32>(1f, 0f) * ps_v4_.zx);
                    ps_r2_.z = _e299.x;
                    ps_r2_.w = _e299.y;
                    ps_r2_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r2_.xy, ps_r2_.w);
                    ps_r0_.w = (ps_r0_.w + ps_r2_.x);
                    ps_r0_.w = (ps_r0_.w * 0.2f);
                }
            } else {
                {
                    ps_r2_ = ((ps_v4_.xyzx * vec4<f32>(0.5f, 0.5f, 1f, 0f)) + vec4<f32>(0.5f, 0.5f, 0f, 0f));
                    ps_r2_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r2_.xy, ps_r2_.w);
                    let _e362 = ((ps_v4_.xy * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
                    ps_r1_.y = _e362.x;
                    ps_r1_.z = _e362.y;
                    let _e375 = (ps_r1_.yz + global.ps_uniforms_vec4_[5].xy);
                    ps_r3_.x = _e375.x;
                    ps_r3_.y = _e375.y;
                    let _e390 = (vec2<f32>(1f, 0f) * ps_v4_.zx);
                    ps_r3_.z = _e390.x;
                    ps_r3_.w = _e390.y;
                    ps_r3_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r3_.xy, ps_r3_.w);
                    ps_r1_.w = (ps_r2_.x + ps_r3_.x);
                    let _e414 = (ps_r1_.yz + global.ps_uniforms_vec4_[7].xy);
                    ps_r2_.x = _e414.x;
                    ps_r2_.y = _e414.y;
                    let _e429 = (vec2<f32>(1f, 0f) * ps_v4_.zx);
                    ps_r2_.z = _e429.x;
                    ps_r2_.w = _e429.y;
                    ps_r2_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r2_.xy, ps_r2_.w);
                    ps_r1_.w = (ps_r1_.w + ps_r2_.x);
                    let _e453 = (ps_r1_.yz + global.ps_uniforms_vec4_[9].xy);
                    ps_r2_.x = _e453.x;
                    ps_r2_.y = _e453.y;
                    let _e468 = (vec2<f32>(1f, 0f) * ps_v4_.zx);
                    ps_r2_.z = _e468.x;
                    ps_r2_.w = _e468.y;
                    ps_r2_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r2_.xy, ps_r2_.w);
                    ps_r1_.w = (ps_r1_.w + ps_r2_.x);
                    let _e492 = (ps_r1_.yz + global.ps_uniforms_vec4_[11].xy);
                    ps_r2_.x = _e492.x;
                    ps_r2_.y = _e492.y;
                    let _e507 = (vec2<f32>(1f, 0f) * ps_v4_.zx);
                    ps_r2_.z = _e507.x;
                    ps_r2_.w = _e507.y;
                    ps_r2_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r2_.xy, ps_r2_.w);
                    ps_r1_.y = (ps_r1_.w + ps_r2_.x);
                    ps_r0_.w = (ps_r1_.y * 0.2f);
                }
            }
        }
    } else {
        {
            ps_r0_.w = 1f;
        }
    }
    ps_r1_.y = dot(ps_v2_.xyz, global.ps_uniforms_vec4_[3].xyz);
    ps_r1_.y = clamp((ps_r1_.y + global.ps_uniforms_vec4_[3].w), 0f, 1f);
    ps_r2_.x = mix(ps_r0_.w, 1f, ps_r1_.y);
    ps_r0_.w = max(abs(io_5_4_.x), abs(io_5_4_.y));
    if (ps_r0_.w < 1f) {
        {
            ps_r3_ = ((io_5_4_.xyzx * vec4<f32>(0.5f, 0.5f, 1f, 0f)) + vec4<f32>(0.5f, 0.5f, 0f, 0f));
            ps_r3_ = textureSampleLevel(ps_s5_tex, ps_s5_smp, ps_r3_.xy, ps_r3_.w);
            let _e622 = ((io_5_4_.xy * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
            ps_r1_.y = _e622.x;
            ps_r1_.z = _e622.y;
            let _e635 = (ps_r1_.yz + global.ps_uniforms_vec4_[5].xy);
            ps_r4_.x = _e635.x;
            ps_r4_.y = _e635.y;
            let _e650 = (vec2<f32>(1f, 0f) * io_5_4_.zx);
            ps_r4_.z = _e650.x;
            ps_r4_.w = _e650.y;
            ps_r4_ = textureSampleLevel(ps_s5_tex, ps_s5_smp, ps_r4_.xy, ps_r4_.w);
            ps_r0_.w = (ps_r3_.x + ps_r4_.x);
            let _e674 = (ps_r1_.yz + global.ps_uniforms_vec4_[7].xy);
            ps_r3_.x = _e674.x;
            ps_r3_.y = _e674.y;
            let _e689 = (vec2<f32>(1f, 0f) * io_5_4_.zx);
            ps_r3_.z = _e689.x;
            ps_r3_.w = _e689.y;
            ps_r3_ = textureSampleLevel(ps_s5_tex, ps_s5_smp, ps_r3_.xy, ps_r3_.w);
            ps_r0_.w = (ps_r0_.w + ps_r3_.x);
            let _e713 = (ps_r1_.yz + global.ps_uniforms_vec4_[9].xy);
            ps_r3_.x = _e713.x;
            ps_r3_.y = _e713.y;
            let _e728 = (vec2<f32>(1f, 0f) * io_5_4_.zx);
            ps_r3_.z = _e728.x;
            ps_r3_.w = _e728.y;
            ps_r3_ = textureSampleLevel(ps_s5_tex, ps_s5_smp, ps_r3_.xy, ps_r3_.w);
            ps_r0_.w = (ps_r0_.w + ps_r3_.x);
            let _e752 = (ps_r1_.yz + global.ps_uniforms_vec4_[11].xy);
            ps_r3_.x = _e752.x;
            ps_r3_.y = _e752.y;
            let _e767 = (vec2<f32>(1f, 0f) * io_5_4_.zx);
            ps_r3_.z = _e767.x;
            ps_r3_.w = _e767.y;
            ps_r3_ = textureSampleLevel(ps_s5_tex, ps_s5_smp, ps_r3_.xy, ps_r3_.w);
            ps_r0_.w = (ps_r0_.w + ps_r3_.x);
            ps_r0_.w = (ps_r0_.w * 0.2f);
        }
    } else {
        {
            ps_r1_.y = max(abs(io_5_5_.x), abs(io_5_5_.y));
            if (ps_r1_.y < 1f) {
                {
                    ps_r3_ = ((io_5_5_.xyzx * vec4<f32>(0.5f, 0.5f, 1f, 0f)) + vec4<f32>(0.5f, 0.5f, 0f, 0f));
                    ps_r3_ = textureSampleLevel(ps_s6_tex, ps_s6_smp, ps_r3_.xy, ps_r3_.w);
                    let _e846 = ((io_5_5_.xy * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
                    ps_r1_.y = _e846.x;
                    ps_r1_.z = _e846.y;
                    let _e859 = (ps_r1_.yz + global.ps_uniforms_vec4_[5].xy);
                    ps_r4_.x = _e859.x;
                    ps_r4_.y = _e859.y;
                    let _e874 = (vec2<f32>(1f, 0f) * io_5_5_.zx);
                    ps_r4_.z = _e874.x;
                    ps_r4_.w = _e874.y;
                    ps_r4_ = textureSampleLevel(ps_s6_tex, ps_s6_smp, ps_r4_.xy, ps_r4_.w);
                    ps_r1_.w = (ps_r3_.x + ps_r4_.x);
                    let _e898 = (ps_r1_.yz + global.ps_uniforms_vec4_[7].xy);
                    ps_r3_.x = _e898.x;
                    ps_r3_.y = _e898.y;
                    let _e913 = (vec2<f32>(1f, 0f) * io_5_5_.zx);
                    ps_r3_.z = _e913.x;
                    ps_r3_.w = _e913.y;
                    ps_r3_ = textureSampleLevel(ps_s6_tex, ps_s6_smp, ps_r3_.xy, ps_r3_.w);
                    ps_r1_.w = (ps_r1_.w + ps_r3_.x);
                    let _e937 = (ps_r1_.yz + global.ps_uniforms_vec4_[9].xy);
                    ps_r3_.x = _e937.x;
                    ps_r3_.y = _e937.y;
                    let _e952 = (vec2<f32>(1f, 0f) * io_5_5_.zx);
                    ps_r3_.z = _e952.x;
                    ps_r3_.w = _e952.y;
                    ps_r3_ = textureSampleLevel(ps_s6_tex, ps_s6_smp, ps_r3_.xy, ps_r3_.w);
                    ps_r1_.w = (ps_r1_.w + ps_r3_.x);
                    let _e976 = (ps_r1_.yz + global.ps_uniforms_vec4_[11].xy);
                    ps_r3_.x = _e976.x;
                    ps_r3_.y = _e976.y;
                    let _e991 = (vec2<f32>(1f, 0f) * io_5_5_.zx);
                    ps_r3_.z = _e991.x;
                    ps_r3_.w = _e991.y;
                    ps_r3_ = textureSampleLevel(ps_s6_tex, ps_s6_smp, ps_r3_.xy, ps_r3_.w);
                    ps_r1_.y = (ps_r1_.w + ps_r3_.x);
                    ps_r0_.w = (ps_r1_.y * 0.2f);
                }
            } else {
                {
                    let _e1033 = ((ps_v4_.ww * vec2<f32>(0.5f, 0f)) + vec2<f32>(0.5f, 0f));
                    ps_r3_.x = _e1033.x;
                    ps_r3_.w = _e1033.y;
                    ps_r3_.y = ((io_5_4_.w * 0.5f) + 0.5f);
                    ps_r3_.z = io_5_5_.w;
                    ps_r4_ = textureSampleLevel(ps_s7_tex, ps_s7_smp, ps_r3_.xy, ps_r3_.w);
                    let _e1069 = (ps_r3_.xy + global.ps_uniforms_vec4_[5].xy);
                    ps_r5_.x = _e1069.x;
                    ps_r5_.y = _e1069.y;
                    let _e1077 = ps_r3_.zw;
                    ps_r5_.z = _e1077.x;
                    ps_r5_.w = _e1077.y;
                    ps_r6_ = textureSampleLevel(ps_s7_tex, ps_s7_smp, ps_r5_.xy, ps_r5_.w);
                    ps_r1_.y = (ps_r4_.x + ps_r6_.x);
                    let _e1101 = (ps_r3_.xy + global.ps_uniforms_vec4_[7].xy);
                    ps_r5_.x = _e1101.x;
                    ps_r5_.y = _e1101.y;
                    ps_r4_ = textureSampleLevel(ps_s7_tex, ps_s7_smp, ps_r5_.xy, ps_r5_.w);
                    ps_r1_.y = (ps_r1_.y + ps_r4_.x);
                    let _e1125 = (ps_r3_.xy + global.ps_uniforms_vec4_[9].xy);
                    ps_r5_.x = _e1125.x;
                    ps_r5_.y = _e1125.y;
                    ps_r4_ = textureSampleLevel(ps_s7_tex, ps_s7_smp, ps_r5_.xy, ps_r5_.w);
                    ps_r1_.y = (ps_r1_.y + ps_r4_.x);
                    let _e1149 = (ps_r3_.xy + global.ps_uniforms_vec4_[11].xy);
                    ps_r5_.x = _e1149.x;
                    ps_r5_.y = _e1149.y;
                    ps_r3_ = textureSampleLevel(ps_s7_tex, ps_s7_smp, ps_r5_.xy, ps_r5_.w);
                    ps_r1_.y = (ps_r1_.y + ps_r3_.x);
                    ps_r1_.z = ps_v4_.w;
                    ps_r1_.w = io_5_4_.w;
                    ps_r2_.y = max(abs(ps_r1_.z), abs(ps_r1_.w));
                    ps_r1_.z = clamp(((ps_r2_.y * -11.111111f) + 11f), 0f, 1f);
                    ps_r1_.y = ((ps_r1_.y * 0.2f) + -1f);
                    ps_r0_.w = ((ps_r1_.z * ps_r1_.y) + 1f);
                }
            }
        }
    }
    ps_r1_.y = min(ps_r0_.w, ps_r2_.x);
    ps_r0_.w = dot(global.ps_uniforms_vec4_[4].xyz, ps_v3_.xyz);
    ps_r0_.w = (-(abs(ps_r0_.w)) + 1.2f);
    ps_r0_.w = (ps_r0_.w * ps_r0_.w);
    ps_r0_.w = clamp((ps_r0_.w * ps_r0_.w), 0f, 1f);
    ps_r2_.x = mix(ps_r1_.y, 1f, ps_r0_.w);
    ps_r0_.w = ((ps_r2_.x * 0.3f) + 0.7f);
    let _e1296 = (ps_r0_.www * ps_v0_.xyz);
    ps_r1_.y = _e1296.x;
    ps_r1_.z = _e1296.y;
    ps_r1_.w = _e1296.z;
    let _e1315 = ((ps_r0_.xyz * ps_r1_.yzw) + -(global.ps_uniforms_vec4_[2].xyz));
    ps_r0_.x = _e1315.x;
    ps_r0_.y = _e1315.y;
    ps_r0_.z = _e1315.z;
    let _e1333 = ((io_11_0_.xxx * ps_r0_.xyz) + global.ps_uniforms_vec4_[2].xyz);
    ps_oC0_.x = _e1333.x;
    ps_oC0_.y = _e1333.y;
    ps_oC0_.z = _e1333.z;
    ps_oC0_.w = ps_r1_.x;
    return FragmentOutput(ps_oC0_);
}
