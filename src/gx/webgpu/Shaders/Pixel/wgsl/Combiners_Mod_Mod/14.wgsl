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
    ps_r0_.w = (ps_r0_.w * ps_v0_.w);
    ps_r1_.x = (ps_r1_.w * ps_r0_.w);
    ps_r2_ = ((ps_r0_.wwww * ps_r1_.wwww) + -(global.ps_uniforms_vec4_[2].wwww));
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
                    let _e188 = ((io_5_4_.xy * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
                    ps_r1_.y = _e188.x;
                    ps_r1_.z = _e188.y;
                    let _e201 = (ps_r1_.yz + global.ps_uniforms_vec4_[5].xy);
                    ps_r3_.x = _e201.x;
                    ps_r3_.y = _e201.y;
                    let _e216 = (vec2<f32>(1f, 0f) * io_5_4_.zx);
                    ps_r3_.z = _e216.x;
                    ps_r3_.w = _e216.y;
                    ps_r3_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r3_.xy, ps_r3_.w);
                    ps_r1_.w = (ps_r2_.x + ps_r3_.x);
                    let _e240 = (ps_r1_.yz + global.ps_uniforms_vec4_[7].xy);
                    ps_r2_.x = _e240.x;
                    ps_r2_.y = _e240.y;
                    let _e255 = (vec2<f32>(1f, 0f) * io_5_4_.zx);
                    ps_r2_.z = _e255.x;
                    ps_r2_.w = _e255.y;
                    ps_r2_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r2_.xy, ps_r2_.w);
                    ps_r1_.w = (ps_r1_.w + ps_r2_.x);
                    let _e279 = (ps_r1_.yz + global.ps_uniforms_vec4_[9].xy);
                    ps_r2_.x = _e279.x;
                    ps_r2_.y = _e279.y;
                    let _e294 = (vec2<f32>(1f, 0f) * io_5_4_.zx);
                    ps_r2_.z = _e294.x;
                    ps_r2_.w = _e294.y;
                    ps_r2_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r2_.xy, ps_r2_.w);
                    ps_r1_.w = (ps_r1_.w + ps_r2_.x);
                    let _e318 = (ps_r1_.yz + global.ps_uniforms_vec4_[11].xy);
                    ps_r2_.x = _e318.x;
                    ps_r2_.y = _e318.y;
                    let _e333 = (vec2<f32>(1f, 0f) * io_5_4_.zx);
                    ps_r2_.z = _e333.x;
                    ps_r2_.w = _e333.y;
                    ps_r2_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r2_.xy, ps_r2_.w);
                    ps_r1_.y = (ps_r1_.w + ps_r2_.x);
                    ps_r1_.y = ((ps_r1_.y * 0.2f) + -1f);
                    ps_r1_.y = ((ps_r0_.w * ps_r1_.y) + 1f);
                }
            } else {
                {
                    ps_r2_ = ((io_5_4_.xyzx * vec4<f32>(0.5f, 0.5f, 1f, 0f)) + vec4<f32>(0.5f, 0.5f, 0f, 0f));
                    ps_r2_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r2_.xy, ps_r2_.w);
                    let _e416 = ((io_5_4_.xy * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
                    ps_r1_.z = _e416.x;
                    ps_r1_.w = _e416.y;
                    let _e429 = (ps_r1_.zw + global.ps_uniforms_vec4_[5].xy);
                    ps_r3_.x = _e429.x;
                    ps_r3_.y = _e429.y;
                    let _e444 = (vec2<f32>(1f, 0f) * io_5_4_.zx);
                    ps_r3_.z = _e444.x;
                    ps_r3_.w = _e444.y;
                    ps_r3_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r3_.xy, ps_r3_.w);
                    ps_r2_.x = (ps_r2_.x + ps_r3_.x);
                    let _e468 = (ps_r1_.zw + global.ps_uniforms_vec4_[6].xy);
                    ps_r3_.x = _e468.x;
                    ps_r3_.y = _e468.y;
                    let _e483 = (vec2<f32>(1f, 0f) * io_5_4_.zx);
                    ps_r3_.z = _e483.x;
                    ps_r3_.w = _e483.y;
                    ps_r3_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r3_.xy, ps_r3_.w);
                    ps_r2_.x = (ps_r2_.x + ps_r3_.x);
                    let _e507 = (ps_r1_.zw + global.ps_uniforms_vec4_[7].xy);
                    ps_r3_.x = _e507.x;
                    ps_r3_.y = _e507.y;
                    let _e522 = (vec2<f32>(1f, 0f) * io_5_4_.zx);
                    ps_r3_.z = _e522.x;
                    ps_r3_.w = _e522.y;
                    ps_r3_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r3_.xy, ps_r3_.w);
                    ps_r2_.x = (ps_r2_.x + ps_r3_.x);
                    let _e546 = (ps_r1_.zw + global.ps_uniforms_vec4_[8].xy);
                    ps_r3_.x = _e546.x;
                    ps_r3_.y = _e546.y;
                    let _e561 = (vec2<f32>(1f, 0f) * io_5_4_.zx);
                    ps_r3_.z = _e561.x;
                    ps_r3_.w = _e561.y;
                    ps_r3_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r3_.xy, ps_r3_.w);
                    ps_r2_.x = (ps_r2_.x + ps_r3_.x);
                    let _e585 = (ps_r1_.zw + global.ps_uniforms_vec4_[9].xy);
                    ps_r3_.x = _e585.x;
                    ps_r3_.y = _e585.y;
                    let _e600 = (vec2<f32>(1f, 0f) * io_5_4_.zx);
                    ps_r3_.z = _e600.x;
                    ps_r3_.w = _e600.y;
                    ps_r3_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r3_.xy, ps_r3_.w);
                    ps_r2_.x = (ps_r2_.x + ps_r3_.x);
                    let _e624 = (ps_r1_.zw + global.ps_uniforms_vec4_[10].xy);
                    ps_r3_.x = _e624.x;
                    ps_r3_.y = _e624.y;
                    let _e639 = (vec2<f32>(1f, 0f) * io_5_4_.zx);
                    ps_r3_.z = _e639.x;
                    ps_r3_.w = _e639.y;
                    ps_r3_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r3_.xy, ps_r3_.w);
                    ps_r2_.x = (ps_r2_.x + ps_r3_.x);
                    let _e663 = (ps_r1_.zw + global.ps_uniforms_vec4_[11].xy);
                    ps_r3_.x = _e663.x;
                    ps_r3_.y = _e663.y;
                    let _e678 = (vec2<f32>(1f, 0f) * io_5_4_.zx);
                    ps_r3_.z = _e678.x;
                    ps_r3_.w = _e678.y;
                    ps_r3_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r3_.xy, ps_r3_.w);
                    ps_r2_.x = (ps_r2_.x + ps_r3_.x);
                    let _e702 = (ps_r1_.zw + global.ps_uniforms_vec4_[12].xy);
                    ps_r3_.x = _e702.x;
                    ps_r3_.y = _e702.y;
                    let _e717 = (vec2<f32>(1f, 0f) * io_5_4_.zx);
                    ps_r3_.z = _e717.x;
                    ps_r3_.w = _e717.y;
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
            let _e850 = ((io_5_5_.xy * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
            ps_r1_.y = _e850.x;
            ps_r1_.z = _e850.y;
            let _e863 = (ps_r1_.yz + global.ps_uniforms_vec4_[5].xy);
            ps_r4_.x = _e863.x;
            ps_r4_.y = _e863.y;
            let _e878 = (vec2<f32>(1f, 0f) * io_5_5_.zx);
            ps_r4_.z = _e878.x;
            ps_r4_.w = _e878.y;
            ps_r4_ = textureSampleLevel(ps_s5_tex, ps_s5_smp, ps_r4_.xy, ps_r4_.w);
            ps_r0_.w = (ps_r3_.x + ps_r4_.x);
            let _e902 = (ps_r1_.yz + global.ps_uniforms_vec4_[7].xy);
            ps_r3_.x = _e902.x;
            ps_r3_.y = _e902.y;
            let _e917 = (vec2<f32>(1f, 0f) * io_5_5_.zx);
            ps_r3_.z = _e917.x;
            ps_r3_.w = _e917.y;
            ps_r3_ = textureSampleLevel(ps_s5_tex, ps_s5_smp, ps_r3_.xy, ps_r3_.w);
            ps_r0_.w = (ps_r0_.w + ps_r3_.x);
            let _e941 = (ps_r1_.yz + global.ps_uniforms_vec4_[9].xy);
            ps_r3_.x = _e941.x;
            ps_r3_.y = _e941.y;
            let _e956 = (vec2<f32>(1f, 0f) * io_5_5_.zx);
            ps_r3_.z = _e956.x;
            ps_r3_.w = _e956.y;
            ps_r3_ = textureSampleLevel(ps_s5_tex, ps_s5_smp, ps_r3_.xy, ps_r3_.w);
            ps_r0_.w = (ps_r0_.w + ps_r3_.x);
            let _e980 = (ps_r1_.yz + global.ps_uniforms_vec4_[11].xy);
            ps_r3_.x = _e980.x;
            ps_r3_.y = _e980.y;
            let _e995 = (vec2<f32>(1f, 0f) * io_5_5_.zx);
            ps_r3_.z = _e995.x;
            ps_r3_.w = _e995.y;
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
                    let _e1075 = ((io_5_6_.xy * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
                    ps_r1_.y = _e1075.x;
                    ps_r1_.z = _e1075.y;
                    let _e1088 = (ps_r1_.yz + global.ps_uniforms_vec4_[5].xy);
                    ps_r4_.x = _e1088.x;
                    ps_r4_.y = _e1088.y;
                    let _e1103 = (vec2<f32>(1f, 0f) * io_5_6_.zx);
                    ps_r4_.z = _e1103.x;
                    ps_r4_.w = _e1103.y;
                    ps_r4_ = textureSampleLevel(ps_s6_tex, ps_s6_smp, ps_r4_.xy, ps_r4_.w);
                    ps_r1_.w = (ps_r3_.x + ps_r4_.x);
                    let _e1127 = (ps_r1_.yz + global.ps_uniforms_vec4_[7].xy);
                    ps_r3_.x = _e1127.x;
                    ps_r3_.y = _e1127.y;
                    let _e1142 = (vec2<f32>(1f, 0f) * io_5_6_.zx);
                    ps_r3_.z = _e1142.x;
                    ps_r3_.w = _e1142.y;
                    ps_r3_ = textureSampleLevel(ps_s6_tex, ps_s6_smp, ps_r3_.xy, ps_r3_.w);
                    ps_r1_.w = (ps_r1_.w + ps_r3_.x);
                    let _e1166 = (ps_r1_.yz + global.ps_uniforms_vec4_[9].xy);
                    ps_r3_.x = _e1166.x;
                    ps_r3_.y = _e1166.y;
                    let _e1181 = (vec2<f32>(1f, 0f) * io_5_6_.zx);
                    ps_r3_.z = _e1181.x;
                    ps_r3_.w = _e1181.y;
                    ps_r3_ = textureSampleLevel(ps_s6_tex, ps_s6_smp, ps_r3_.xy, ps_r3_.w);
                    ps_r1_.w = (ps_r1_.w + ps_r3_.x);
                    let _e1205 = (ps_r1_.yz + global.ps_uniforms_vec4_[11].xy);
                    ps_r3_.x = _e1205.x;
                    ps_r3_.y = _e1205.y;
                    let _e1220 = (vec2<f32>(1f, 0f) * io_5_6_.zx);
                    ps_r3_.z = _e1220.x;
                    ps_r3_.w = _e1220.y;
                    ps_r3_ = textureSampleLevel(ps_s6_tex, ps_s6_smp, ps_r3_.xy, ps_r3_.w);
                    ps_r1_.y = (ps_r1_.w + ps_r3_.x);
                    ps_r0_.w = (ps_r1_.y * 0.2f);
                }
            } else {
                {
                    let _e1263 = ((io_5_4_.ww * vec2<f32>(0.5f, 0f)) + vec2<f32>(0.5f, 0f));
                    ps_r3_.x = _e1263.x;
                    ps_r3_.w = _e1263.y;
                    ps_r3_.y = ((io_5_5_.w * 0.5f) + 0.5f);
                    ps_r3_.z = io_5_6_.w;
                    ps_r4_ = textureSampleLevel(ps_s7_tex, ps_s7_smp, ps_r3_.xy, ps_r3_.w);
                    let _e1299 = (ps_r3_.xy + global.ps_uniforms_vec4_[5].xy);
                    ps_r5_.x = _e1299.x;
                    ps_r5_.y = _e1299.y;
                    let _e1307 = ps_r3_.zw;
                    ps_r5_.z = _e1307.x;
                    ps_r5_.w = _e1307.y;
                    ps_r6_ = textureSampleLevel(ps_s7_tex, ps_s7_smp, ps_r5_.xy, ps_r5_.w);
                    ps_r1_.y = (ps_r4_.x + ps_r6_.x);
                    let _e1331 = (ps_r3_.xy + global.ps_uniforms_vec4_[7].xy);
                    ps_r5_.x = _e1331.x;
                    ps_r5_.y = _e1331.y;
                    ps_r4_ = textureSampleLevel(ps_s7_tex, ps_s7_smp, ps_r5_.xy, ps_r5_.w);
                    ps_r1_.y = (ps_r1_.y + ps_r4_.x);
                    let _e1355 = (ps_r3_.xy + global.ps_uniforms_vec4_[9].xy);
                    ps_r5_.x = _e1355.x;
                    ps_r5_.y = _e1355.y;
                    ps_r4_ = textureSampleLevel(ps_s7_tex, ps_s7_smp, ps_r5_.xy, ps_r5_.w);
                    ps_r1_.y = (ps_r1_.y + ps_r4_.x);
                    let _e1379 = (ps_r3_.xy + global.ps_uniforms_vec4_[11].xy);
                    ps_r5_.x = _e1379.x;
                    ps_r5_.y = _e1379.y;
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
    let _e1528 = (ps_r0_.www * ps_v0_.xyz);
    ps_r1_.y = _e1528.x;
    ps_r1_.z = _e1528.y;
    ps_r1_.w = _e1528.z;
    let _e1547 = ((ps_r0_.xyz * ps_r1_.yzw) + -(global.ps_uniforms_vec4_[2].xyz));
    ps_r0_.x = _e1547.x;
    ps_r0_.y = _e1547.y;
    ps_r0_.z = _e1547.z;
    let _e1565 = ((io_11_0_.xxx * ps_r0_.xyz) + global.ps_uniforms_vec4_[2].xyz);
    ps_oC0_.x = _e1565.x;
    ps_oC0_.y = _e1565.y;
    ps_oC0_.z = _e1565.z;
    ps_oC0_.w = ps_r1_.x;
    return FragmentOutput(ps_oC0_);
}
