struct UniformBlock_1_ {
    ps_uniforms_vec4_: array<vec4<f32>, 13>,
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
    ps_r0_.w = (ps_r0_.w * ps_v0_.w);
    ps_r1_.x = (dot(ps_r0_.ww, ps_r1_.ww) + 0f);
    ps_r2_ = vec4((dot(ps_r0_.ww, ps_r1_.ww) + -(global.ps_uniforms_vec4_[2].w)));
    if any((ps_r2_.xyz < vec3(0f))) {
        discard;
    }
    ps_r0_.w = max(abs(io_5_4_.x), abs(io_5_4_.y));
    ps_r0_.w = clamp(((ps_r0_.w * -3.4482758f) + 3.413793f), 0f, 1f);
    ps_r1_.y = (-(ps_r0_.w) + 0.01f);
    if (ps_r1_.y >= 0f) {
        local = 0f;
    } else {
        local = 1f;
    }
    ps_r1_.y = local;
    if (ps_r1_.y != -(ps_r1_.y)) {
        {
            if (10f < ps_v3_.z) {
                {
                    ps_r2_ = ((io_5_4_.xyzx * vec4<f32>(0.5f, 0.5f, 1f, 0f)) + vec4<f32>(0.5f, 0.5f, 0f, 0f));
                    ps_r2_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r2_.xy, ps_r2_.w);
                    let _e208 = ((io_5_4_.xy * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
                    ps_r1_.y = _e208.x;
                    ps_r1_.z = _e208.y;
                    let _e221 = (ps_r1_.yz + global.ps_uniforms_vec4_[5].xy);
                    ps_r3_.x = _e221.x;
                    ps_r3_.y = _e221.y;
                    let _e236 = (vec2<f32>(1f, 0f) * io_5_4_.zx);
                    ps_r3_.z = _e236.x;
                    ps_r3_.w = _e236.y;
                    ps_r3_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r3_.xy, ps_r3_.w);
                    ps_r1_.w = (ps_r2_.x + ps_r3_.x);
                    let _e260 = (ps_r1_.yz + global.ps_uniforms_vec4_[7].xy);
                    ps_r2_.x = _e260.x;
                    ps_r2_.y = _e260.y;
                    let _e275 = (vec2<f32>(1f, 0f) * io_5_4_.zx);
                    ps_r2_.z = _e275.x;
                    ps_r2_.w = _e275.y;
                    ps_r2_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r2_.xy, ps_r2_.w);
                    ps_r1_.w = (ps_r1_.w + ps_r2_.x);
                    let _e299 = (ps_r1_.yz + global.ps_uniforms_vec4_[9].xy);
                    ps_r2_.x = _e299.x;
                    ps_r2_.y = _e299.y;
                    let _e314 = (vec2<f32>(1f, 0f) * io_5_4_.zx);
                    ps_r2_.z = _e314.x;
                    ps_r2_.w = _e314.y;
                    ps_r2_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r2_.xy, ps_r2_.w);
                    ps_r1_.w = (ps_r1_.w + ps_r2_.x);
                    let _e338 = (ps_r1_.yz + global.ps_uniforms_vec4_[11].xy);
                    ps_r2_.x = _e338.x;
                    ps_r2_.y = _e338.y;
                    let _e353 = (vec2<f32>(1f, 0f) * io_5_4_.zx);
                    ps_r2_.z = _e353.x;
                    ps_r2_.w = _e353.y;
                    ps_r2_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r2_.xy, ps_r2_.w);
                    ps_r1_.y = (ps_r1_.w + ps_r2_.x);
                    ps_r1_.y = ((ps_r1_.y * 0.2f) + -1f);
                    ps_r1_.y = ((ps_r0_.w * ps_r1_.y) + 1f);
                }
            } else {
                {
                    ps_r2_ = ((io_5_4_.xyzx * vec4<f32>(0.5f, 0.5f, 1f, 0f)) + vec4<f32>(0.5f, 0.5f, 0f, 0f));
                    ps_r2_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r2_.xy, ps_r2_.w);
                    let _e434 = ((io_5_4_.xy * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
                    ps_r1_.z = _e434.x;
                    ps_r1_.w = _e434.y;
                    let _e447 = (ps_r1_.zw + global.ps_uniforms_vec4_[5].xy);
                    ps_r3_.x = _e447.x;
                    ps_r3_.y = _e447.y;
                    let _e462 = (vec2<f32>(1f, 0f) * io_5_4_.zx);
                    ps_r3_.z = _e462.x;
                    ps_r3_.w = _e462.y;
                    ps_r3_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r3_.xy, ps_r3_.w);
                    ps_r2_.x = (ps_r2_.x + ps_r3_.x);
                    let _e486 = (ps_r1_.zw + global.ps_uniforms_vec4_[6].xy);
                    ps_r3_.x = _e486.x;
                    ps_r3_.y = _e486.y;
                    let _e501 = (vec2<f32>(1f, 0f) * io_5_4_.zx);
                    ps_r3_.z = _e501.x;
                    ps_r3_.w = _e501.y;
                    ps_r3_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r3_.xy, ps_r3_.w);
                    ps_r2_.x = (ps_r2_.x + ps_r3_.x);
                    let _e525 = (ps_r1_.zw + global.ps_uniforms_vec4_[7].xy);
                    ps_r3_.x = _e525.x;
                    ps_r3_.y = _e525.y;
                    let _e540 = (vec2<f32>(1f, 0f) * io_5_4_.zx);
                    ps_r3_.z = _e540.x;
                    ps_r3_.w = _e540.y;
                    ps_r3_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r3_.xy, ps_r3_.w);
                    ps_r2_.x = (ps_r2_.x + ps_r3_.x);
                    let _e564 = (ps_r1_.zw + global.ps_uniforms_vec4_[8].xy);
                    ps_r3_.x = _e564.x;
                    ps_r3_.y = _e564.y;
                    let _e579 = (vec2<f32>(1f, 0f) * io_5_4_.zx);
                    ps_r3_.z = _e579.x;
                    ps_r3_.w = _e579.y;
                    ps_r3_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r3_.xy, ps_r3_.w);
                    ps_r2_.x = (ps_r2_.x + ps_r3_.x);
                    let _e603 = (ps_r1_.zw + global.ps_uniforms_vec4_[9].xy);
                    ps_r3_.x = _e603.x;
                    ps_r3_.y = _e603.y;
                    let _e618 = (vec2<f32>(1f, 0f) * io_5_4_.zx);
                    ps_r3_.z = _e618.x;
                    ps_r3_.w = _e618.y;
                    ps_r3_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r3_.xy, ps_r3_.w);
                    ps_r2_.x = (ps_r2_.x + ps_r3_.x);
                    let _e642 = (ps_r1_.zw + global.ps_uniforms_vec4_[10].xy);
                    ps_r3_.x = _e642.x;
                    ps_r3_.y = _e642.y;
                    let _e657 = (vec2<f32>(1f, 0f) * io_5_4_.zx);
                    ps_r3_.z = _e657.x;
                    ps_r3_.w = _e657.y;
                    ps_r3_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r3_.xy, ps_r3_.w);
                    ps_r2_.x = (ps_r2_.x + ps_r3_.x);
                    let _e681 = (ps_r1_.zw + global.ps_uniforms_vec4_[11].xy);
                    ps_r3_.x = _e681.x;
                    ps_r3_.y = _e681.y;
                    let _e696 = (vec2<f32>(1f, 0f) * io_5_4_.zx);
                    ps_r3_.z = _e696.x;
                    ps_r3_.w = _e696.y;
                    ps_r3_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r3_.xy, ps_r3_.w);
                    ps_r2_.x = (ps_r2_.x + ps_r3_.x);
                    let _e720 = (ps_r1_.zw + global.ps_uniforms_vec4_[12].xy);
                    ps_r3_.x = _e720.x;
                    ps_r3_.y = _e720.y;
                    let _e735 = (vec2<f32>(1f, 0f) * io_5_4_.zx);
                    ps_r3_.z = _e735.x;
                    ps_r3_.w = _e735.y;
                    ps_r3_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r3_.xy, ps_r3_.w);
                    ps_r1_.z = (ps_r2_.x + ps_r3_.x);
                    ps_r1_.z = ((ps_r1_.z * 0.11111111f) + -1f);
                    ps_r1_.y = ((ps_r0_.w * ps_r1_.z) + 1f);
                }
            }
        }
    } else {
        {
            ps_r1_.y = 1f;
        }
    }
    ps_r0_.w = dot(ps_v3_.xyz, global.ps_uniforms_vec4_[3].xyz);
    ps_r0_.w = clamp((ps_r0_.w + global.ps_uniforms_vec4_[3].w), 0f, 1f);
    ps_r2_.x = mix(ps_r1_.y, 1f, ps_r0_.w);
    ps_r0_.w = max(abs(io_5_5_.x), abs(io_5_5_.y));
    if (ps_r0_.w < 1f) {
        {
            ps_r3_ = ((io_5_5_.xyzx * vec4<f32>(0.5f, 0.5f, 1f, 0f)) + vec4<f32>(0.5f, 0.5f, 0f, 0f));
            ps_r3_ = textureSampleLevel(ps_s5_tex, ps_s5_smp, ps_r3_.xy, ps_r3_.w);
            let _e868 = ((io_5_5_.xy * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
            ps_r1_.y = _e868.x;
            ps_r1_.z = _e868.y;
            let _e881 = (ps_r1_.yz + global.ps_uniforms_vec4_[5].xy);
            ps_r4_.x = _e881.x;
            ps_r4_.y = _e881.y;
            let _e896 = (vec2<f32>(1f, 0f) * io_5_5_.zx);
            ps_r4_.z = _e896.x;
            ps_r4_.w = _e896.y;
            ps_r4_ = textureSampleLevel(ps_s5_tex, ps_s5_smp, ps_r4_.xy, ps_r4_.w);
            ps_r0_.w = (ps_r3_.x + ps_r4_.x);
            let _e920 = (ps_r1_.yz + global.ps_uniforms_vec4_[7].xy);
            ps_r3_.x = _e920.x;
            ps_r3_.y = _e920.y;
            let _e935 = (vec2<f32>(1f, 0f) * io_5_5_.zx);
            ps_r3_.z = _e935.x;
            ps_r3_.w = _e935.y;
            ps_r3_ = textureSampleLevel(ps_s5_tex, ps_s5_smp, ps_r3_.xy, ps_r3_.w);
            ps_r0_.w = (ps_r0_.w + ps_r3_.x);
            let _e959 = (ps_r1_.yz + global.ps_uniforms_vec4_[9].xy);
            ps_r3_.x = _e959.x;
            ps_r3_.y = _e959.y;
            let _e974 = (vec2<f32>(1f, 0f) * io_5_5_.zx);
            ps_r3_.z = _e974.x;
            ps_r3_.w = _e974.y;
            ps_r3_ = textureSampleLevel(ps_s5_tex, ps_s5_smp, ps_r3_.xy, ps_r3_.w);
            ps_r0_.w = (ps_r0_.w + ps_r3_.x);
            let _e998 = (ps_r1_.yz + global.ps_uniforms_vec4_[11].xy);
            ps_r3_.x = _e998.x;
            ps_r3_.y = _e998.y;
            let _e1013 = (vec2<f32>(1f, 0f) * io_5_5_.zx);
            ps_r3_.z = _e1013.x;
            ps_r3_.w = _e1013.y;
            ps_r3_ = textureSampleLevel(ps_s5_tex, ps_s5_smp, ps_r3_.xy, ps_r3_.w);
            ps_r0_.w = (ps_r0_.w + ps_r3_.x);
            ps_r0_.w = (ps_r0_.w * 0.2f);
        }
    } else {
        {
            ps_r1_.y = max(abs(io_5_6_.x), abs(io_5_6_.y));
            if (ps_r1_.y < 1f) {
                {
                    ps_r3_ = ((io_5_6_.xyzx * vec4<f32>(0.5f, 0.5f, 1f, 0f)) + vec4<f32>(0.5f, 0.5f, 0f, 0f));
                    ps_r3_ = textureSampleLevel(ps_s6_tex, ps_s6_smp, ps_r3_.xy, ps_r3_.w);
                    let _e1092 = ((io_5_6_.xy * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
                    ps_r1_.y = _e1092.x;
                    ps_r1_.z = _e1092.y;
                    let _e1105 = (ps_r1_.yz + global.ps_uniforms_vec4_[5].xy);
                    ps_r4_.x = _e1105.x;
                    ps_r4_.y = _e1105.y;
                    let _e1120 = (vec2<f32>(1f, 0f) * io_5_6_.zx);
                    ps_r4_.z = _e1120.x;
                    ps_r4_.w = _e1120.y;
                    ps_r4_ = textureSampleLevel(ps_s6_tex, ps_s6_smp, ps_r4_.xy, ps_r4_.w);
                    ps_r1_.w = (ps_r3_.x + ps_r4_.x);
                    let _e1144 = (ps_r1_.yz + global.ps_uniforms_vec4_[7].xy);
                    ps_r3_.x = _e1144.x;
                    ps_r3_.y = _e1144.y;
                    let _e1159 = (vec2<f32>(1f, 0f) * io_5_6_.zx);
                    ps_r3_.z = _e1159.x;
                    ps_r3_.w = _e1159.y;
                    ps_r3_ = textureSampleLevel(ps_s6_tex, ps_s6_smp, ps_r3_.xy, ps_r3_.w);
                    ps_r1_.w = (ps_r1_.w + ps_r3_.x);
                    let _e1183 = (ps_r1_.yz + global.ps_uniforms_vec4_[9].xy);
                    ps_r3_.x = _e1183.x;
                    ps_r3_.y = _e1183.y;
                    let _e1198 = (vec2<f32>(1f, 0f) * io_5_6_.zx);
                    ps_r3_.z = _e1198.x;
                    ps_r3_.w = _e1198.y;
                    ps_r3_ = textureSampleLevel(ps_s6_tex, ps_s6_smp, ps_r3_.xy, ps_r3_.w);
                    ps_r1_.w = (ps_r1_.w + ps_r3_.x);
                    let _e1222 = (ps_r1_.yz + global.ps_uniforms_vec4_[11].xy);
                    ps_r3_.x = _e1222.x;
                    ps_r3_.y = _e1222.y;
                    let _e1237 = (vec2<f32>(1f, 0f) * io_5_6_.zx);
                    ps_r3_.z = _e1237.x;
                    ps_r3_.w = _e1237.y;
                    ps_r3_ = textureSampleLevel(ps_s6_tex, ps_s6_smp, ps_r3_.xy, ps_r3_.w);
                    ps_r1_.y = (ps_r1_.w + ps_r3_.x);
                    ps_r0_.w = (ps_r1_.y * 0.2f);
                }
            } else {
                {
                    let _e1279 = ((io_5_4_.ww * vec2<f32>(0.5f, 0f)) + vec2<f32>(0.5f, 0f));
                    ps_r3_.x = _e1279.x;
                    ps_r3_.w = _e1279.y;
                    ps_r3_.y = ((io_5_5_.w * 0.5f) + 0.5f);
                    ps_r3_.z = io_5_6_.w;
                    ps_r4_ = textureSampleLevel(ps_s7_tex, ps_s7_smp, ps_r3_.xy, ps_r3_.w);
                    let _e1315 = (ps_r3_.xy + global.ps_uniforms_vec4_[5].xy);
                    ps_r5_.x = _e1315.x;
                    ps_r5_.y = _e1315.y;
                    let _e1323 = ps_r3_.zw;
                    ps_r5_.z = _e1323.x;
                    ps_r5_.w = _e1323.y;
                    ps_r6_ = textureSampleLevel(ps_s7_tex, ps_s7_smp, ps_r5_.xy, ps_r5_.w);
                    ps_r1_.y = (ps_r4_.x + ps_r6_.x);
                    let _e1347 = (ps_r3_.xy + global.ps_uniforms_vec4_[7].xy);
                    ps_r5_.x = _e1347.x;
                    ps_r5_.y = _e1347.y;
                    ps_r4_ = textureSampleLevel(ps_s7_tex, ps_s7_smp, ps_r5_.xy, ps_r5_.w);
                    ps_r1_.y = (ps_r1_.y + ps_r4_.x);
                    let _e1371 = (ps_r3_.xy + global.ps_uniforms_vec4_[9].xy);
                    ps_r5_.x = _e1371.x;
                    ps_r5_.y = _e1371.y;
                    ps_r4_ = textureSampleLevel(ps_s7_tex, ps_s7_smp, ps_r5_.xy, ps_r5_.w);
                    ps_r1_.y = (ps_r1_.y + ps_r4_.x);
                    let _e1395 = (ps_r3_.xy + global.ps_uniforms_vec4_[11].xy);
                    ps_r5_.x = _e1395.x;
                    ps_r5_.y = _e1395.y;
                    ps_r3_ = textureSampleLevel(ps_s7_tex, ps_s7_smp, ps_r5_.xy, ps_r5_.w);
                    ps_r1_.y = (ps_r1_.y + ps_r3_.x);
                    ps_r1_.z = io_5_4_.w;
                    ps_r1_.w = io_5_5_.w;
                    ps_r2_.y = max(abs(ps_r1_.z), abs(ps_r1_.w));
                    ps_r1_.z = clamp(((ps_r2_.y * -11.111111f) + 11f), 0f, 1f);
                    ps_r1_.y = ((ps_r1_.y * 0.2f) + -1f);
                    ps_r0_.w = ((ps_r1_.z * ps_r1_.y) + 1f);
                }
            }
        }
    }
    ps_r1_.y = min(ps_r0_.w, ps_r2_.x);
    ps_r0_.w = dot(global.ps_uniforms_vec4_[4].xyz, ps_v4_.xyz);
    ps_r0_.w = (-(abs(ps_r0_.w)) + 1.2f);
    ps_r0_.w = (ps_r0_.w * ps_r0_.w);
    ps_r0_.w = clamp((ps_r0_.w * ps_r0_.w), 0f, 1f);
    ps_r2_.x = mix(ps_r1_.y, 1f, ps_r0_.w);
    ps_r0_.w = ((ps_r2_.x * 0.3f) + 0.7f);
    let _e1542 = (ps_r0_.www * ps_v0_.xyz);
    ps_r1_.y = _e1542.x;
    ps_r1_.z = _e1542.y;
    ps_r1_.w = _e1542.z;
    let _e1561 = ((ps_r0_.xyz * ps_r1_.yzw) + -(global.ps_uniforms_vec4_[2].xyz));
    ps_r0_.x = _e1561.x;
    ps_r0_.y = _e1561.y;
    ps_r0_.z = _e1561.z;
    let _e1579 = ((io_11_0_.xxx * ps_r0_.xyz) + global.ps_uniforms_vec4_[2].xyz);
    ps_oC0_.x = _e1579.x;
    ps_oC0_.y = _e1579.y;
    ps_oC0_.z = _e1579.z;
    ps_oC0_.w = ps_r1_.x;
    return FragmentOutput(ps_oC0_);
}
