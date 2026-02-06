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
    var ps_r7_: vec4<f32>;
    var ps_r8_: vec4<f32>;
    var ps_r9_: vec4<f32>;
    var ps_r10_: vec4<f32>;
    var ps_oC0_: vec4<f32>;

    var local: f32;
    var local_1: f32;
    var local_2: f32;
    var local_3: f32;
    var local_4: f32;
    var local_5: f32;
    var local_6: f32;
    var local_7: f32;
    var local_8: f32;
    var local_9: f32;
    var local_10: f32;
    var local_11: f32;
    var local_12: f32;
    var local_13: f32;
    var local_14: f32;
    var local_15: f32;
    var local_16: f32;
    var local_17: f32;
    var local_18: f32;
    var local_19: f32;
    var local_20: f32;
    var local_21: f32;
    var local_22: f32;
    var local_23: f32;
    var local_24: f32;
    var local_25: f32;
    var local_26: f32;
    var local_27: f32;
    var local_28: f32;
    var local_29: f32;

    ps_r0_ = textureSample(ps_s0_tex, ps_s0_smp, ps_v1_.xy);
    ps_r1_ = textureSample(ps_s1_tex, ps_s1_smp, ps_v2_.xy);
    let _e51 = (ps_r0_.xyz * ps_r1_.xyz);
    ps_r0_.x = _e51.x;
    ps_r0_.y = _e51.y;
    ps_r0_.z = _e51.z;
    let _e64 = (ps_r0_.xyz + ps_r0_.xyz);
    ps_r0_.x = _e64.x;
    ps_r0_.y = _e64.y;
    ps_r0_.z = _e64.z;
    ps_r0_.w = (dot(ps_v0_.ww, ps_r1_.ww) + 0f);
    ps_r1_ = vec4((dot(ps_v0_.ww, ps_r1_.ww) + -(global.ps_uniforms_vec4_[2].w)));
    if any((ps_r1_.xyz < vec3(0f))) {
        discard;
    }
    ps_r1_.x = max(abs(io_5_4_.x), abs(io_5_4_.y));
    ps_r1_.x = clamp(((ps_r1_.x * -3.4482758f) + 3.413793f), 0f, 1f);
    ps_r1_.y = (-(ps_r1_.x) + 0.01f);
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
                    let _e185 = ((io_5_4_.xy * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
                    ps_r1_.y = _e185.x;
                    ps_r1_.z = _e185.y;
                    let _e198 = (ps_r1_.yz + global.ps_uniforms_vec4_[5].xy);
                    ps_r2_.x = _e198.x;
                    ps_r2_.y = _e198.y;
                    let _e211 = (ps_r1_.yz + global.ps_uniforms_vec4_[7].xy);
                    ps_r3_.x = _e211.x;
                    ps_r3_.y = _e211.y;
                    let _e224 = (ps_r1_.yz + global.ps_uniforms_vec4_[9].xy);
                    ps_r4_.x = _e224.x;
                    ps_r4_.y = _e224.y;
                    let _e237 = (ps_r1_.yz + global.ps_uniforms_vec4_[11].xy);
                    ps_r5_.x = _e237.x;
                    ps_r5_.y = _e237.y;
                    ps_r6_ = ((io_5_4_.xyxx * vec4<f32>(0.5f, 0.5f, 0f, 0f)) + vec4<f32>(0.5f, 0.5f, 0f, 0f));
                    ps_r6_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r6_.xy, ps_r6_.w);
                    ps_r2_.z = 0f;
                    ps_r2_.w = 0f;
                    ps_r2_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r2_.xy, ps_r2_.w);
                    ps_r3_.z = 0f;
                    ps_r3_.w = 0f;
                    ps_r3_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r3_.xy, ps_r3_.w);
                    ps_r4_.z = 0f;
                    ps_r4_.w = 0f;
                    ps_r4_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r4_.xy, ps_r4_.w);
                    ps_r5_.z = 0f;
                    ps_r5_.w = 0f;
                    ps_r5_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r5_.xy, ps_r5_.w);
                    ps_r6_.y = ps_r2_.x;
                    ps_r6_.z = ps_r3_.x;
                    ps_r6_.w = ps_r4_.x;
                    ps_r2_ = (ps_r6_ + -(io_5_4_.zzzz));
                    if (ps_r2_.x >= 0f) {
                        local_1 = 1f;
                    } else {
                        local_1 = 0f;
                    }
                    ps_r2_.x = local_1;
                    if (ps_r2_.y >= 0f) {
                        local_2 = 1f;
                    } else {
                        local_2 = 0f;
                    }
                    ps_r2_.y = local_2;
                    if (ps_r2_.z >= 0f) {
                        local_3 = 1f;
                    } else {
                        local_3 = 0f;
                    }
                    ps_r2_.z = local_3;
                    if (ps_r2_.w >= 0f) {
                        local_4 = 1f;
                    } else {
                        local_4 = 0f;
                    }
                    ps_r2_.w = local_4;
                    ps_r1_.y = (ps_r5_.x + -(io_5_4_.z));
                    if (ps_r1_.y >= 0f) {
                        local_5 = 1f;
                    } else {
                        local_5 = 0f;
                    }
                    ps_r1_.y = local_5;
                    ps_r1_.z = dot(ps_r2_, vec4<f32>(1f, 1f, 1f, 1f));
                    ps_r1_.y = (ps_r1_.y + ps_r1_.z);
                    ps_r1_.y = ((ps_r1_.y * 0.2f) + -1f);
                    ps_r1_.y = ((ps_r1_.x * ps_r1_.y) + 1f);
                }
            } else {
                {
                    let _e488 = ((io_5_4_.xy * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
                    ps_r1_.z = _e488.x;
                    ps_r1_.w = _e488.y;
                    let _e501 = (ps_r1_.zw + global.ps_uniforms_vec4_[5].xy);
                    ps_r2_.x = _e501.x;
                    ps_r2_.y = _e501.y;
                    let _e514 = (ps_r1_.zw + global.ps_uniforms_vec4_[6].xy);
                    ps_r3_.x = _e514.x;
                    ps_r3_.y = _e514.y;
                    let _e527 = (ps_r1_.zw + global.ps_uniforms_vec4_[7].xy);
                    ps_r4_.x = _e527.x;
                    ps_r4_.y = _e527.y;
                    let _e540 = (ps_r1_.zw + global.ps_uniforms_vec4_[8].xy);
                    ps_r5_.x = _e540.x;
                    ps_r5_.y = _e540.y;
                    let _e553 = (ps_r1_.zw + global.ps_uniforms_vec4_[9].xy);
                    ps_r6_.x = _e553.x;
                    ps_r6_.y = _e553.y;
                    let _e566 = (ps_r1_.zw + global.ps_uniforms_vec4_[10].xy);
                    ps_r7_.x = _e566.x;
                    ps_r7_.y = _e566.y;
                    let _e579 = (ps_r1_.zw + global.ps_uniforms_vec4_[11].xy);
                    ps_r8_.x = _e579.x;
                    ps_r8_.y = _e579.y;
                    let _e592 = (ps_r1_.zw + global.ps_uniforms_vec4_[12].xy);
                    ps_r9_.x = _e592.x;
                    ps_r9_.y = _e592.y;
                    ps_r10_ = ((io_5_4_.xyxx * vec4<f32>(0.5f, 0.5f, 0f, 0f)) + vec4<f32>(0.5f, 0.5f, 0f, 0f));
                    ps_r10_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r10_.xy, ps_r10_.w);
                    ps_r2_.z = 0f;
                    ps_r2_.w = 0f;
                    ps_r2_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r2_.xy, ps_r2_.w);
                    ps_r3_.z = 0f;
                    ps_r3_.w = 0f;
                    ps_r3_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r3_.xy, ps_r3_.w);
                    ps_r4_.z = 0f;
                    ps_r4_.w = 0f;
                    ps_r4_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r4_.xy, ps_r4_.w);
                    ps_r5_.z = 0f;
                    ps_r5_.w = 0f;
                    ps_r5_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r5_.xy, ps_r5_.w);
                    ps_r6_.z = 0f;
                    ps_r6_.w = 0f;
                    ps_r6_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r6_.xy, ps_r6_.w);
                    ps_r7_.z = 0f;
                    ps_r7_.w = 0f;
                    ps_r7_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r7_.xy, ps_r7_.w);
                    ps_r8_.z = 0f;
                    ps_r8_.w = 0f;
                    ps_r8_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r8_.xy, ps_r8_.w);
                    ps_r9_.z = 0f;
                    ps_r9_.w = 0f;
                    ps_r9_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r9_.xy, ps_r9_.w);
                    ps_r10_.y = ps_r2_.x;
                    ps_r10_.z = ps_r3_.x;
                    ps_r10_.w = ps_r4_.x;
                    ps_r2_ = (ps_r10_ + -(io_5_4_.zzzz));
                    if (ps_r2_.x >= 0f) {
                        local_6 = 1f;
                    } else {
                        local_6 = 0f;
                    }
                    ps_r2_.x = local_6;
                    if (ps_r2_.y >= 0f) {
                        local_7 = 1f;
                    } else {
                        local_7 = 0f;
                    }
                    ps_r2_.y = local_7;
                    if (ps_r2_.z >= 0f) {
                        local_8 = 1f;
                    } else {
                        local_8 = 0f;
                    }
                    ps_r2_.z = local_8;
                    if (ps_r2_.w >= 0f) {
                        local_9 = 1f;
                    } else {
                        local_9 = 0f;
                    }
                    ps_r2_.w = local_9;
                    ps_r5_.y = ps_r6_.x;
                    ps_r5_.z = ps_r7_.x;
                    ps_r5_.w = ps_r8_.x;
                    ps_r3_ = (ps_r5_ + -(io_5_4_.zzzz));
                    if (ps_r3_.x >= 0f) {
                        local_10 = 1f;
                    } else {
                        local_10 = 0f;
                    }
                    ps_r3_.x = local_10;
                    if (ps_r3_.y >= 0f) {
                        local_11 = 1f;
                    } else {
                        local_11 = 0f;
                    }
                    ps_r3_.y = local_11;
                    if (ps_r3_.z >= 0f) {
                        local_12 = 1f;
                    } else {
                        local_12 = 0f;
                    }
                    ps_r3_.z = local_12;
                    if (ps_r3_.w >= 0f) {
                        local_13 = 1f;
                    } else {
                        local_13 = 0f;
                    }
                    ps_r3_.w = local_13;
                    ps_r1_.z = (ps_r9_.x + -(io_5_4_.z));
                    if (ps_r1_.z >= 0f) {
                        local_14 = 1f;
                    } else {
                        local_14 = 0f;
                    }
                    ps_r1_.z = local_14;
                    ps_r1_.w = dot(ps_r2_, vec4<f32>(1f, 1f, 1f, 1f));
                    ps_r2_.x = dot(ps_r3_, vec4<f32>(1f, 1f, 1f, 1f));
                    ps_r1_.w = (ps_r1_.w + ps_r2_.x);
                    ps_r1_.z = (ps_r1_.z + ps_r1_.w);
                    ps_r1_.z = ((ps_r1_.z * 0.11111111f) + -1f);
                    ps_r1_.y = ((ps_r1_.x * ps_r1_.z) + 1f);
                }
            }
        }
    } else {
        {
            ps_r1_.y = 1f;
        }
    }
    ps_r1_.x = dot(ps_v3_.xyz, global.ps_uniforms_vec4_[3].xyz);
    ps_r1_.x = clamp((ps_r1_.x + global.ps_uniforms_vec4_[3].w), 0f, 1f);
    ps_r2_.x = mix(ps_r1_.y, 1f, ps_r1_.x);
    ps_r1_.x = max(abs(io_5_5_.x), abs(io_5_5_.y));
    if (ps_r1_.x < 1f) {
        {
            let _e1052 = ((io_5_5_.xy * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
            ps_r1_.x = _e1052.x;
            ps_r1_.y = _e1052.y;
            let _e1065 = (ps_r1_.xy + global.ps_uniforms_vec4_[5].xy);
            ps_r3_.x = _e1065.x;
            ps_r3_.y = _e1065.y;
            let _e1078 = (ps_r1_.xy + global.ps_uniforms_vec4_[7].xy);
            ps_r4_.x = _e1078.x;
            ps_r4_.y = _e1078.y;
            let _e1091 = (ps_r1_.xy + global.ps_uniforms_vec4_[9].xy);
            ps_r5_.x = _e1091.x;
            ps_r5_.y = _e1091.y;
            let _e1104 = (ps_r1_.xy + global.ps_uniforms_vec4_[11].xy);
            ps_r1_.x = _e1104.x;
            ps_r1_.y = _e1104.y;
            ps_r6_ = ((io_5_5_.xyxx * vec4<f32>(0.5f, 0.5f, 0f, 0f)) + vec4<f32>(0.5f, 0.5f, 0f, 0f));
            ps_r6_ = textureSampleLevel(ps_s5_tex, ps_s5_smp, ps_r6_.xy, ps_r6_.w);
            ps_r3_.z = 0f;
            ps_r3_.w = 0f;
            ps_r3_ = textureSampleLevel(ps_s5_tex, ps_s5_smp, ps_r3_.xy, ps_r3_.w);
            ps_r4_.z = 0f;
            ps_r4_.w = 0f;
            ps_r4_ = textureSampleLevel(ps_s5_tex, ps_s5_smp, ps_r4_.xy, ps_r4_.w);
            ps_r5_.z = 0f;
            ps_r5_.w = 0f;
            ps_r5_ = textureSampleLevel(ps_s5_tex, ps_s5_smp, ps_r5_.xy, ps_r5_.w);
            ps_r1_.z = 0f;
            ps_r1_.w = 0f;
            ps_r1_ = textureSampleLevel(ps_s5_tex, ps_s5_smp, ps_r1_.xy, ps_r1_.w);
            ps_r6_.y = ps_r3_.x;
            ps_r6_.z = ps_r4_.x;
            ps_r6_.w = ps_r5_.x;
            ps_r3_ = (ps_r6_ + -(io_5_5_.zzzz));
            if (ps_r3_.x >= 0f) {
                local_15 = 1f;
            } else {
                local_15 = 0f;
            }
            ps_r3_.x = local_15;
            if (ps_r3_.y >= 0f) {
                local_16 = 1f;
            } else {
                local_16 = 0f;
            }
            ps_r3_.y = local_16;
            if (ps_r3_.z >= 0f) {
                local_17 = 1f;
            } else {
                local_17 = 0f;
            }
            ps_r3_.z = local_17;
            if (ps_r3_.w >= 0f) {
                local_18 = 1f;
            } else {
                local_18 = 0f;
            }
            ps_r3_.w = local_18;
            ps_r1_.x = (ps_r1_.x + -(io_5_5_.z));
            if (ps_r1_.x >= 0f) {
                local_19 = 1f;
            } else {
                local_19 = 0f;
            }
            ps_r1_.x = local_19;
            ps_r1_.y = dot(ps_r3_, vec4<f32>(1f, 1f, 1f, 1f));
            ps_r1_.x = (ps_r1_.x + ps_r1_.y);
            ps_r1_.x = (ps_r1_.x * 0.2f);
        }
    } else {
        {
            ps_r1_.y = max(abs(io_5_6_.x), abs(io_5_6_.y));
            if (ps_r1_.y < 1f) {
                {
                    let _e1353 = ((io_5_6_.xy * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
                    ps_r1_.y = _e1353.x;
                    ps_r1_.z = _e1353.y;
                    let _e1366 = (ps_r1_.yz + global.ps_uniforms_vec4_[5].xy);
                    ps_r3_.x = _e1366.x;
                    ps_r3_.y = _e1366.y;
                    let _e1379 = (ps_r1_.yz + global.ps_uniforms_vec4_[7].xy);
                    ps_r4_.x = _e1379.x;
                    ps_r4_.y = _e1379.y;
                    let _e1392 = (ps_r1_.yz + global.ps_uniforms_vec4_[9].xy);
                    ps_r5_.x = _e1392.x;
                    ps_r5_.y = _e1392.y;
                    let _e1405 = (ps_r1_.yz + global.ps_uniforms_vec4_[11].xy);
                    ps_r6_.x = _e1405.x;
                    ps_r6_.y = _e1405.y;
                    ps_r7_ = ((io_5_6_.xyxx * vec4<f32>(0.5f, 0.5f, 0f, 0f)) + vec4<f32>(0.5f, 0.5f, 0f, 0f));
                    ps_r7_ = textureSampleLevel(ps_s6_tex, ps_s6_smp, ps_r7_.xy, ps_r7_.w);
                    ps_r3_.z = 0f;
                    ps_r3_.w = 0f;
                    ps_r3_ = textureSampleLevel(ps_s6_tex, ps_s6_smp, ps_r3_.xy, ps_r3_.w);
                    ps_r4_.z = 0f;
                    ps_r4_.w = 0f;
                    ps_r4_ = textureSampleLevel(ps_s6_tex, ps_s6_smp, ps_r4_.xy, ps_r4_.w);
                    ps_r5_.z = 0f;
                    ps_r5_.w = 0f;
                    ps_r5_ = textureSampleLevel(ps_s6_tex, ps_s6_smp, ps_r5_.xy, ps_r5_.w);
                    ps_r6_.z = 0f;
                    ps_r6_.w = 0f;
                    ps_r6_ = textureSampleLevel(ps_s6_tex, ps_s6_smp, ps_r6_.xy, ps_r6_.w);
                    ps_r7_.y = ps_r3_.x;
                    ps_r7_.z = ps_r4_.x;
                    ps_r7_.w = ps_r5_.x;
                    ps_r3_ = (ps_r7_ + -(io_5_6_.zzzz));
                    if (ps_r3_.x >= 0f) {
                        local_20 = 1f;
                    } else {
                        local_20 = 0f;
                    }
                    ps_r3_.x = local_20;
                    if (ps_r3_.y >= 0f) {
                        local_21 = 1f;
                    } else {
                        local_21 = 0f;
                    }
                    ps_r3_.y = local_21;
                    if (ps_r3_.z >= 0f) {
                        local_22 = 1f;
                    } else {
                        local_22 = 0f;
                    }
                    ps_r3_.z = local_22;
                    if (ps_r3_.w >= 0f) {
                        local_23 = 1f;
                    } else {
                        local_23 = 0f;
                    }
                    ps_r3_.w = local_23;
                    ps_r1_.y = (ps_r6_.x + -(io_5_6_.z));
                    if (ps_r1_.y >= 0f) {
                        local_24 = 1f;
                    } else {
                        local_24 = 0f;
                    }
                    ps_r1_.y = local_24;
                    ps_r1_.z = dot(ps_r3_, vec4<f32>(1f, 1f, 1f, 1f));
                    ps_r1_.y = (ps_r1_.y + ps_r1_.z);
                    ps_r1_.x = (ps_r1_.y * 0.2f);
                }
            } else {
                {
                    ps_r3_.x = ((io_5_4_.w * 0.5f) + 0.5f);
                    ps_r3_.y = ((io_5_5_.w * 0.5f) + 0.5f);
                    let _e1659 = (ps_r3_.xy + global.ps_uniforms_vec4_[5].xy);
                    ps_r4_.x = _e1659.x;
                    ps_r4_.y = _e1659.y;
                    let _e1672 = (ps_r3_.xy + global.ps_uniforms_vec4_[7].xy);
                    ps_r5_.x = _e1672.x;
                    ps_r5_.y = _e1672.y;
                    let _e1685 = (ps_r3_.xy + global.ps_uniforms_vec4_[9].xy);
                    ps_r6_.x = _e1685.x;
                    ps_r6_.y = _e1685.y;
                    let _e1698 = (ps_r3_.xy + global.ps_uniforms_vec4_[11].xy);
                    ps_r7_.x = _e1698.x;
                    ps_r7_.y = _e1698.y;
                    ps_r3_.z = 0f;
                    ps_r3_.w = 0f;
                    ps_r3_ = textureSampleLevel(ps_s7_tex, ps_s7_smp, ps_r3_.xy, ps_r3_.w);
                    ps_r4_.z = 0f;
                    ps_r4_.w = 0f;
                    ps_r4_ = textureSampleLevel(ps_s7_tex, ps_s7_smp, ps_r4_.xy, ps_r4_.w);
                    ps_r5_.z = 0f;
                    ps_r5_.w = 0f;
                    ps_r5_ = textureSampleLevel(ps_s7_tex, ps_s7_smp, ps_r5_.xy, ps_r5_.w);
                    ps_r6_.z = 0f;
                    ps_r6_.w = 0f;
                    ps_r6_ = textureSampleLevel(ps_s7_tex, ps_s7_smp, ps_r6_.xy, ps_r6_.w);
                    ps_r7_.z = 0f;
                    ps_r7_.w = 0f;
                    ps_r7_ = textureSampleLevel(ps_s7_tex, ps_s7_smp, ps_r7_.xy, ps_r7_.w);
                    ps_r3_.y = ps_r4_.x;
                    ps_r3_.z = ps_r5_.x;
                    ps_r3_.w = ps_r6_.x;
                    ps_r3_ = (ps_r3_ + -(io_5_6_.wwww));
                    if (ps_r3_.x >= 0f) {
                        local_25 = 1f;
                    } else {
                        local_25 = 0f;
                    }
                    ps_r3_.x = local_25;
                    if (ps_r3_.y >= 0f) {
                        local_26 = 1f;
                    } else {
                        local_26 = 0f;
                    }
                    ps_r3_.y = local_26;
                    if (ps_r3_.z >= 0f) {
                        local_27 = 1f;
                    } else {
                        local_27 = 0f;
                    }
                    ps_r3_.z = local_27;
                    if (ps_r3_.w >= 0f) {
                        local_28 = 1f;
                    } else {
                        local_28 = 0f;
                    }
                    ps_r3_.w = local_28;
                    ps_r1_.y = (ps_r7_.x + -(io_5_6_.w));
                    if (ps_r1_.y >= 0f) {
                        local_29 = 1f;
                    } else {
                        local_29 = 0f;
                    }
                    ps_r1_.y = local_29;
                    ps_r1_.z = dot(ps_r3_, vec4<f32>(1f, 1f, 1f, 1f));
                    ps_r1_.y = (ps_r1_.y + ps_r1_.z);
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
    let _e2030 = (ps_r1_.xxx * ps_v0_.xyz);
    ps_r1_.x = _e2030.x;
    ps_r1_.y = _e2030.y;
    ps_r1_.z = _e2030.z;
    let _e2049 = ((ps_r0_.xyz * ps_r1_.xyz) + -(global.ps_uniforms_vec4_[2].xyz));
    ps_r0_.x = _e2049.x;
    ps_r0_.y = _e2049.y;
    ps_r0_.z = _e2049.z;
    let _e2067 = ((io_11_0_.xxx * ps_r0_.xyz) + global.ps_uniforms_vec4_[2].xyz);
    ps_oC0_.x = _e2067.x;
    ps_oC0_.y = _e2067.y;
    ps_oC0_.z = _e2067.z;
    ps_oC0_.w = ps_r0_.w;
    return FragmentOutput(ps_oC0_);
}
