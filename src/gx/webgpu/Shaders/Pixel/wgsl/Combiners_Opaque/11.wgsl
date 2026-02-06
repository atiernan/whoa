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

    ps_r0_ = textureSample(ps_s0_tex, ps_s0_smp, ps_v1_.xy);
    ps_r1_ = (-(global.ps_uniforms_vec4_[2].wwww) + ps_v0_.wwww);
    if any((ps_r1_.xyz < vec3(0f))) {
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
                    let _e124 = ((ps_v4_.xy * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
                    ps_r1_.x = _e124.x;
                    ps_r1_.y = _e124.y;
                    let _e137 = (ps_r1_.xy + global.ps_uniforms_vec4_[5].xy);
                    ps_r2_.x = _e137.x;
                    ps_r2_.y = _e137.y;
                    let _e150 = (ps_r1_.xy + global.ps_uniforms_vec4_[7].xy);
                    ps_r3_.x = _e150.x;
                    ps_r3_.y = _e150.y;
                    let _e163 = (ps_r1_.xy + global.ps_uniforms_vec4_[9].xy);
                    ps_r4_.x = _e163.x;
                    ps_r4_.y = _e163.y;
                    let _e176 = (ps_r1_.xy + global.ps_uniforms_vec4_[11].xy);
                    ps_r1_.x = _e176.x;
                    ps_r1_.y = _e176.y;
                    ps_r5_ = ((ps_v4_.xyxx * vec4<f32>(0.5f, 0.5f, 0f, 0f)) + vec4<f32>(0.5f, 0.5f, 0f, 0f));
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
                    ps_r2_ = (ps_r5_ + -(ps_v4_.zzzz));
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
                    ps_r0_.w = (ps_r1_.x + -(ps_v4_.z));
                    if (ps_r0_.w >= 0f) {
                        local_5 = 1f;
                    } else {
                        local_5 = 0f;
                    }
                    ps_r0_.w = local_5;
                    ps_r1_.x = dot(ps_r2_, vec4<f32>(1f, 1f, 1f, 1f));
                    ps_r0_.w = (ps_r0_.w + ps_r1_.x);
                    ps_r0_.w = (ps_r0_.w * 0.2f);
                }
            } else {
                {
                    let _e409 = ((ps_v4_.xy * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
                    ps_r1_.x = _e409.x;
                    ps_r1_.y = _e409.y;
                    let _e422 = (ps_r1_.xy + global.ps_uniforms_vec4_[5].xy);
                    ps_r2_.x = _e422.x;
                    ps_r2_.y = _e422.y;
                    let _e435 = (ps_r1_.xy + global.ps_uniforms_vec4_[7].xy);
                    ps_r3_.x = _e435.x;
                    ps_r3_.y = _e435.y;
                    let _e448 = (ps_r1_.xy + global.ps_uniforms_vec4_[9].xy);
                    ps_r4_.x = _e448.x;
                    ps_r4_.y = _e448.y;
                    let _e461 = (ps_r1_.xy + global.ps_uniforms_vec4_[11].xy);
                    ps_r1_.x = _e461.x;
                    ps_r1_.y = _e461.y;
                    ps_r5_ = ((ps_v4_.xyxx * vec4<f32>(0.5f, 0.5f, 0f, 0f)) + vec4<f32>(0.5f, 0.5f, 0f, 0f));
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
                    ps_r2_ = (ps_r5_ + -(ps_v4_.zzzz));
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
                    ps_r1_.x = (ps_r1_.x + -(ps_v4_.z));
                    if (ps_r1_.x >= 0f) {
                        local_10 = 1f;
                    } else {
                        local_10 = 0f;
                    }
                    ps_r1_.x = local_10;
                    ps_r1_.y = dot(ps_r2_, vec4<f32>(1f, 1f, 1f, 1f));
                    ps_r1_.x = (ps_r1_.x + ps_r1_.y);
                    ps_r0_.w = (ps_r1_.x * 0.2f);
                }
            }
        }
    } else {
        {
            ps_r0_.w = 1f;
        }
    }
    ps_r1_.x = dot(ps_v2_.xyz, global.ps_uniforms_vec4_[3].xyz);
    ps_r1_.x = clamp((ps_r1_.x + global.ps_uniforms_vec4_[3].w), 0f, 1f);
    ps_r2_.x = mix(ps_r0_.w, 1f, ps_r1_.x);
    ps_r0_.w = max(abs(io_5_4_.x), abs(io_5_4_.y));
    if (ps_r0_.w < 1f) {
        {
            let _e746 = ((io_5_4_.xy * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
            ps_r1_.x = _e746.x;
            ps_r1_.y = _e746.y;
            let _e759 = (ps_r1_.xy + global.ps_uniforms_vec4_[5].xy);
            ps_r3_.x = _e759.x;
            ps_r3_.y = _e759.y;
            let _e772 = (ps_r1_.xy + global.ps_uniforms_vec4_[7].xy);
            ps_r4_.x = _e772.x;
            ps_r4_.y = _e772.y;
            let _e785 = (ps_r1_.xy + global.ps_uniforms_vec4_[9].xy);
            ps_r5_.x = _e785.x;
            ps_r5_.y = _e785.y;
            let _e798 = (ps_r1_.xy + global.ps_uniforms_vec4_[11].xy);
            ps_r1_.x = _e798.x;
            ps_r1_.y = _e798.y;
            ps_r6_ = ((io_5_4_.xyxx * vec4<f32>(0.5f, 0.5f, 0f, 0f)) + vec4<f32>(0.5f, 0.5f, 0f, 0f));
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
            ps_r3_ = (ps_r6_ + -(io_5_4_.zzzz));
            if (ps_r3_.x >= 0f) {
                local_11 = 1f;
            } else {
                local_11 = 0f;
            }
            ps_r3_.x = local_11;
            if (ps_r3_.y >= 0f) {
                local_12 = 1f;
            } else {
                local_12 = 0f;
            }
            ps_r3_.y = local_12;
            if (ps_r3_.z >= 0f) {
                local_13 = 1f;
            } else {
                local_13 = 0f;
            }
            ps_r3_.z = local_13;
            if (ps_r3_.w >= 0f) {
                local_14 = 1f;
            } else {
                local_14 = 0f;
            }
            ps_r3_.w = local_14;
            ps_r0_.w = (ps_r1_.x + -(io_5_4_.z));
            if (ps_r0_.w >= 0f) {
                local_15 = 1f;
            } else {
                local_15 = 0f;
            }
            ps_r0_.w = local_15;
            ps_r1_.x = dot(ps_r3_, vec4<f32>(1f, 1f, 1f, 1f));
            ps_r0_.w = (ps_r0_.w + ps_r1_.x);
            ps_r0_.w = (ps_r0_.w * 0.2f);
        }
    } else {
        {
            ps_r1_.x = max(abs(io_5_5_.x), abs(io_5_5_.y));
            if (ps_r1_.x < 1f) {
                {
                    let _e1047 = ((io_5_5_.xy * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
                    ps_r1_.x = _e1047.x;
                    ps_r1_.y = _e1047.y;
                    let _e1060 = (ps_r1_.xy + global.ps_uniforms_vec4_[5].xy);
                    ps_r3_.x = _e1060.x;
                    ps_r3_.y = _e1060.y;
                    let _e1073 = (ps_r1_.xy + global.ps_uniforms_vec4_[7].xy);
                    ps_r4_.x = _e1073.x;
                    ps_r4_.y = _e1073.y;
                    let _e1086 = (ps_r1_.xy + global.ps_uniforms_vec4_[9].xy);
                    ps_r5_.x = _e1086.x;
                    ps_r5_.y = _e1086.y;
                    let _e1099 = (ps_r1_.xy + global.ps_uniforms_vec4_[11].xy);
                    ps_r1_.x = _e1099.x;
                    ps_r1_.y = _e1099.y;
                    ps_r6_ = ((io_5_5_.xyxx * vec4<f32>(0.5f, 0.5f, 0f, 0f)) + vec4<f32>(0.5f, 0.5f, 0f, 0f));
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
                    ps_r3_ = (ps_r6_ + -(io_5_5_.zzzz));
                    if (ps_r3_.x >= 0f) {
                        local_16 = 1f;
                    } else {
                        local_16 = 0f;
                    }
                    ps_r3_.x = local_16;
                    if (ps_r3_.y >= 0f) {
                        local_17 = 1f;
                    } else {
                        local_17 = 0f;
                    }
                    ps_r3_.y = local_17;
                    if (ps_r3_.z >= 0f) {
                        local_18 = 1f;
                    } else {
                        local_18 = 0f;
                    }
                    ps_r3_.z = local_18;
                    if (ps_r3_.w >= 0f) {
                        local_19 = 1f;
                    } else {
                        local_19 = 0f;
                    }
                    ps_r3_.w = local_19;
                    ps_r1_.x = (ps_r1_.x + -(io_5_5_.z));
                    if (ps_r1_.x >= 0f) {
                        local_20 = 1f;
                    } else {
                        local_20 = 0f;
                    }
                    ps_r1_.x = local_20;
                    ps_r1_.y = dot(ps_r3_, vec4<f32>(1f, 1f, 1f, 1f));
                    ps_r1_.x = (ps_r1_.x + ps_r1_.y);
                    ps_r0_.w = (ps_r1_.x * 0.2f);
                }
            } else {
                {
                    ps_r1_.x = ((ps_v4_.w * 0.5f) + 0.5f);
                    ps_r1_.y = ((io_5_4_.w * 0.5f) + 0.5f);
                    let _e1353 = (ps_r1_.xy + global.ps_uniforms_vec4_[5].xy);
                    ps_r3_.x = _e1353.x;
                    ps_r3_.y = _e1353.y;
                    let _e1366 = (ps_r1_.xy + global.ps_uniforms_vec4_[7].xy);
                    ps_r4_.x = _e1366.x;
                    ps_r4_.y = _e1366.y;
                    let _e1379 = (ps_r1_.xy + global.ps_uniforms_vec4_[9].xy);
                    ps_r5_.x = _e1379.x;
                    ps_r5_.y = _e1379.y;
                    let _e1392 = (ps_r1_.xy + global.ps_uniforms_vec4_[11].xy);
                    ps_r6_.x = _e1392.x;
                    ps_r6_.y = _e1392.y;
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
                    ps_r1_ = (ps_r1_ + -(io_5_5_.wwww));
                    if (ps_r1_.x >= 0f) {
                        local_21 = 1f;
                    } else {
                        local_21 = 0f;
                    }
                    ps_r1_.x = local_21;
                    if (ps_r1_.y >= 0f) {
                        local_22 = 1f;
                    } else {
                        local_22 = 0f;
                    }
                    ps_r1_.y = local_22;
                    if (ps_r1_.z >= 0f) {
                        local_23 = 1f;
                    } else {
                        local_23 = 0f;
                    }
                    ps_r1_.z = local_23;
                    if (ps_r1_.w >= 0f) {
                        local_24 = 1f;
                    } else {
                        local_24 = 0f;
                    }
                    ps_r1_.w = local_24;
                    ps_r2_.y = (ps_r6_.x + -(io_5_5_.w));
                    if (ps_r2_.y >= 0f) {
                        local_25 = 1f;
                    } else {
                        local_25 = 0f;
                    }
                    ps_r2_.y = local_25;
                    ps_r1_.x = dot(ps_r1_, vec4<f32>(1f, 1f, 1f, 1f));
                    ps_r1_.x = (ps_r2_.y + ps_r1_.x);
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
    let _e1724 = (ps_r0_.www * ps_v0_.xyz);
    ps_r1_.x = _e1724.x;
    ps_r1_.y = _e1724.y;
    ps_r1_.z = _e1724.z;
    let _e1743 = ((ps_r0_.xyz * ps_r1_.xyz) + -(global.ps_uniforms_vec4_[2].xyz));
    ps_r0_.x = _e1743.x;
    ps_r0_.y = _e1743.y;
    ps_r0_.z = _e1743.z;
    let _e1761 = ((io_11_0_.xxx * ps_r0_.xyz) + global.ps_uniforms_vec4_[2].xyz);
    ps_oC0_.x = _e1761.x;
    ps_oC0_.y = _e1761.y;
    ps_oC0_.z = _e1761.z;
    ps_oC0_.w = ps_v0_.w;
    return FragmentOutput(ps_oC0_);
}
