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
    ps_r0_.w = (ps_r0_.w * ps_v0_.w);
    ps_oC0_.w = (dot(ps_r0_.ww, ps_r1_.ww) + 0f);
    ps_r0_.w = max(abs(io_5_4_.x), abs(io_5_4_.y));
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
            if (10f < ps_v3_.z) {
                {
                    let _e173 = ((io_5_4_.xy * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
                    ps_r1_.x = _e173.x;
                    ps_r1_.y = _e173.y;
                    let _e186 = (ps_r1_.xy + global.ps_uniforms_vec4_[5].xy);
                    ps_r2_.x = _e186.x;
                    ps_r2_.y = _e186.y;
                    let _e199 = (ps_r1_.xy + global.ps_uniforms_vec4_[7].xy);
                    ps_r3_.x = _e199.x;
                    ps_r3_.y = _e199.y;
                    let _e212 = (ps_r1_.xy + global.ps_uniforms_vec4_[9].xy);
                    ps_r4_.x = _e212.x;
                    ps_r4_.y = _e212.y;
                    let _e225 = (ps_r1_.xy + global.ps_uniforms_vec4_[11].xy);
                    ps_r1_.x = _e225.x;
                    ps_r1_.y = _e225.y;
                    ps_r5_ = ((io_5_4_.xyxx * vec4<f32>(0.5f, 0.5f, 0f, 0f)) + vec4<f32>(0.5f, 0.5f, 0f, 0f));
                    ps_r5_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r5_.xy, ps_r5_.w);
                    ps_r2_.z = 0f;
                    ps_r2_.w = 0f;
                    ps_r2_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r2_.xy, ps_r2_.w);
                    ps_r3_.z = 0f;
                    ps_r3_.w = 0f;
                    ps_r3_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r3_.xy, ps_r3_.w);
                    ps_r4_.z = 0f;
                    ps_r4_.w = 0f;
                    ps_r4_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r4_.xy, ps_r4_.w);
                    ps_r1_.z = 0f;
                    ps_r1_.w = 0f;
                    ps_r1_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r1_.xy, ps_r1_.w);
                    ps_r5_.y = ps_r2_.x;
                    ps_r5_.z = ps_r3_.x;
                    ps_r5_.w = ps_r4_.x;
                    ps_r2_ = (ps_r5_ + -(io_5_4_.zzzz));
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
                    ps_r1_.x = (ps_r1_.x + -(io_5_4_.z));
                    if (ps_r1_.x >= 0f) {
                        local_5 = 1f;
                    } else {
                        local_5 = 0f;
                    }
                    ps_r1_.x = local_5;
                    ps_r1_.y = dot(ps_r2_, vec4<f32>(1f, 1f, 1f, 1f));
                    ps_r1_.x = (ps_r1_.x + ps_r1_.y);
                    ps_r1_.x = ((ps_r1_.x * 0.2f) + -1f);
                    ps_r1_.x = ((ps_r0_.w * ps_r1_.x) + 1f);
                }
            } else {
                {
                    let _e476 = ((io_5_4_.xy * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
                    ps_r1_.y = _e476.x;
                    ps_r1_.z = _e476.y;
                    let _e489 = (ps_r1_.yz + global.ps_uniforms_vec4_[5].xy);
                    ps_r2_.x = _e489.x;
                    ps_r2_.y = _e489.y;
                    let _e502 = (ps_r1_.yz + global.ps_uniforms_vec4_[6].xy);
                    ps_r3_.x = _e502.x;
                    ps_r3_.y = _e502.y;
                    let _e515 = (ps_r1_.yz + global.ps_uniforms_vec4_[7].xy);
                    ps_r4_.x = _e515.x;
                    ps_r4_.y = _e515.y;
                    let _e528 = (ps_r1_.yz + global.ps_uniforms_vec4_[8].xy);
                    ps_r5_.x = _e528.x;
                    ps_r5_.y = _e528.y;
                    let _e541 = (ps_r1_.yz + global.ps_uniforms_vec4_[9].xy);
                    ps_r6_.x = _e541.x;
                    ps_r6_.y = _e541.y;
                    let _e554 = (ps_r1_.yz + global.ps_uniforms_vec4_[10].xy);
                    ps_r7_.x = _e554.x;
                    ps_r7_.y = _e554.y;
                    let _e567 = (ps_r1_.yz + global.ps_uniforms_vec4_[11].xy);
                    ps_r8_.x = _e567.x;
                    ps_r8_.y = _e567.y;
                    let _e580 = (ps_r1_.yz + global.ps_uniforms_vec4_[12].xy);
                    ps_r9_.x = _e580.x;
                    ps_r9_.y = _e580.y;
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
                    ps_r1_.y = (ps_r9_.x + -(io_5_4_.z));
                    if (ps_r1_.y >= 0f) {
                        local_14 = 1f;
                    } else {
                        local_14 = 0f;
                    }
                    ps_r1_.y = local_14;
                    ps_r1_.z = dot(ps_r2_, vec4<f32>(1f, 1f, 1f, 1f));
                    ps_r1_.w = dot(ps_r3_, vec4<f32>(1f, 1f, 1f, 1f));
                    ps_r1_.z = (ps_r1_.z + ps_r1_.w);
                    ps_r1_.y = (ps_r1_.y + ps_r1_.z);
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
    ps_r0_.w = dot(ps_v3_.xyz, global.ps_uniforms_vec4_[3].xyz);
    ps_r0_.w = clamp((ps_r0_.w + global.ps_uniforms_vec4_[3].w), 0f, 1f);
    ps_r2_.x = mix(ps_r1_.x, 1f, ps_r0_.w);
    ps_r0_.w = max(abs(io_5_5_.x), abs(io_5_5_.y));
    if (ps_r0_.w < 1f) {
        {
            let _e1040 = ((io_5_5_.xy * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
            ps_r1_.x = _e1040.x;
            ps_r1_.y = _e1040.y;
            let _e1053 = (ps_r1_.xy + global.ps_uniforms_vec4_[5].xy);
            ps_r3_.x = _e1053.x;
            ps_r3_.y = _e1053.y;
            let _e1066 = (ps_r1_.xy + global.ps_uniforms_vec4_[7].xy);
            ps_r4_.x = _e1066.x;
            ps_r4_.y = _e1066.y;
            let _e1079 = (ps_r1_.xy + global.ps_uniforms_vec4_[9].xy);
            ps_r5_.x = _e1079.x;
            ps_r5_.y = _e1079.y;
            let _e1092 = (ps_r1_.xy + global.ps_uniforms_vec4_[11].xy);
            ps_r1_.x = _e1092.x;
            ps_r1_.y = _e1092.y;
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
            ps_r0_.w = (ps_r1_.x + -(io_5_5_.z));
            if (ps_r0_.w >= 0f) {
                local_19 = 1f;
            } else {
                local_19 = 0f;
            }
            ps_r0_.w = local_19;
            ps_r1_.x = dot(ps_r3_, vec4<f32>(1f, 1f, 1f, 1f));
            ps_r0_.w = (ps_r0_.w + ps_r1_.x);
            ps_r0_.w = (ps_r0_.w * 0.2f);
        }
    } else {
        {
            ps_r1_.x = max(abs(io_5_6_.x), abs(io_5_6_.y));
            if (ps_r1_.x < 1f) {
                {
                    let _e1341 = ((io_5_6_.xy * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
                    ps_r1_.x = _e1341.x;
                    ps_r1_.y = _e1341.y;
                    let _e1354 = (ps_r1_.xy + global.ps_uniforms_vec4_[5].xy);
                    ps_r3_.x = _e1354.x;
                    ps_r3_.y = _e1354.y;
                    let _e1367 = (ps_r1_.xy + global.ps_uniforms_vec4_[7].xy);
                    ps_r4_.x = _e1367.x;
                    ps_r4_.y = _e1367.y;
                    let _e1380 = (ps_r1_.xy + global.ps_uniforms_vec4_[9].xy);
                    ps_r5_.x = _e1380.x;
                    ps_r5_.y = _e1380.y;
                    let _e1393 = (ps_r1_.xy + global.ps_uniforms_vec4_[11].xy);
                    ps_r1_.x = _e1393.x;
                    ps_r1_.y = _e1393.y;
                    ps_r6_ = ((io_5_6_.xyxx * vec4<f32>(0.5f, 0.5f, 0f, 0f)) + vec4<f32>(0.5f, 0.5f, 0f, 0f));
                    ps_r6_ = textureSampleLevel(ps_s6_tex, ps_s6_smp, ps_r6_.xy, ps_r6_.w);
                    ps_r3_.z = 0f;
                    ps_r3_.w = 0f;
                    ps_r3_ = textureSampleLevel(ps_s6_tex, ps_s6_smp, ps_r3_.xy, ps_r3_.w);
                    ps_r4_.z = 0f;
                    ps_r4_.w = 0f;
                    ps_r4_ = textureSampleLevel(ps_s6_tex, ps_s6_smp, ps_r4_.xy, ps_r4_.w);
                    ps_r5_.z = 0f;
                    ps_r5_.w = 0f;
                    ps_r5_ = textureSampleLevel(ps_s6_tex, ps_s6_smp, ps_r5_.xy, ps_r5_.w);
                    ps_r1_.z = 0f;
                    ps_r1_.w = 0f;
                    ps_r1_ = textureSampleLevel(ps_s6_tex, ps_s6_smp, ps_r1_.xy, ps_r1_.w);
                    ps_r6_.y = ps_r3_.x;
                    ps_r6_.z = ps_r4_.x;
                    ps_r6_.w = ps_r5_.x;
                    ps_r3_ = (ps_r6_ + -(io_5_6_.zzzz));
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
                    ps_r1_.x = (ps_r1_.x + -(io_5_6_.z));
                    if (ps_r1_.x >= 0f) {
                        local_24 = 1f;
                    } else {
                        local_24 = 0f;
                    }
                    ps_r1_.x = local_24;
                    ps_r1_.y = dot(ps_r3_, vec4<f32>(1f, 1f, 1f, 1f));
                    ps_r1_.x = (ps_r1_.x + ps_r1_.y);
                    ps_r0_.w = (ps_r1_.x * 0.2f);
                }
            } else {
                {
                    ps_r1_.x = ((io_5_4_.w * 0.5f) + 0.5f);
                    ps_r1_.y = ((io_5_5_.w * 0.5f) + 0.5f);
                    let _e1647 = (ps_r1_.xy + global.ps_uniforms_vec4_[5].xy);
                    ps_r3_.x = _e1647.x;
                    ps_r3_.y = _e1647.y;
                    let _e1660 = (ps_r1_.xy + global.ps_uniforms_vec4_[7].xy);
                    ps_r4_.x = _e1660.x;
                    ps_r4_.y = _e1660.y;
                    let _e1673 = (ps_r1_.xy + global.ps_uniforms_vec4_[9].xy);
                    ps_r5_.x = _e1673.x;
                    ps_r5_.y = _e1673.y;
                    let _e1686 = (ps_r1_.xy + global.ps_uniforms_vec4_[11].xy);
                    ps_r6_.x = _e1686.x;
                    ps_r6_.y = _e1686.y;
                    ps_r1_.z = 0f;
                    ps_r1_.w = 0f;
                    ps_r1_ = textureSampleLevel(ps_s7_tex, ps_s7_smp, ps_r1_.xy, ps_r1_.w);
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
                    ps_r1_.y = ps_r3_.x;
                    ps_r1_.z = ps_r4_.x;
                    ps_r1_.w = ps_r5_.x;
                    ps_r1_ = (ps_r1_ + -(io_5_6_.wwww));
                    if (ps_r1_.x >= 0f) {
                        local_25 = 1f;
                    } else {
                        local_25 = 0f;
                    }
                    ps_r1_.x = local_25;
                    if (ps_r1_.y >= 0f) {
                        local_26 = 1f;
                    } else {
                        local_26 = 0f;
                    }
                    ps_r1_.y = local_26;
                    if (ps_r1_.z >= 0f) {
                        local_27 = 1f;
                    } else {
                        local_27 = 0f;
                    }
                    ps_r1_.z = local_27;
                    if (ps_r1_.w >= 0f) {
                        local_28 = 1f;
                    } else {
                        local_28 = 0f;
                    }
                    ps_r1_.w = local_28;
                    ps_r2_.y = (ps_r6_.x + -(io_5_6_.w));
                    if (ps_r2_.y >= 0f) {
                        local_29 = 1f;
                    } else {
                        local_29 = 0f;
                    }
                    ps_r2_.y = local_29;
                    ps_r1_.x = dot(ps_r1_, vec4<f32>(1f, 1f, 1f, 1f));
                    ps_r1_.x = (ps_r2_.y + ps_r1_.x);
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
    let _e2018 = (ps_r0_.www * ps_v0_.xyz);
    ps_r1_.x = _e2018.x;
    ps_r1_.y = _e2018.y;
    ps_r1_.z = _e2018.z;
    let _e2037 = ((ps_r0_.xyz * ps_r1_.xyz) + -(global.ps_uniforms_vec4_[2].xyz));
    ps_r0_.x = _e2037.x;
    ps_r0_.y = _e2037.y;
    ps_r0_.z = _e2037.z;
    let _e2055 = ((io_11_0_.xxx * ps_r0_.xyz) + global.ps_uniforms_vec4_[2].xyz);
    ps_oC0_.x = _e2055.x;
    ps_oC0_.y = _e2055.y;
    ps_oC0_.z = _e2055.z;
    return FragmentOutput(ps_oC0_);
}
