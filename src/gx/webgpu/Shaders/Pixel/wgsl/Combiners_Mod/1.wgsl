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

@fragment fn main(@location(0) ps_v0_: vec4<f32>, @location(1) ps_v1_: vec4<f32>, @location(2) ps_v2_: vec4<f32>, @location(3) ps_v3_: vec4<f32>, @location(4) ps_v4_: vec4<f32>, @location(10) io_11_0_: vec4<f32>) -> FragmentOutput {
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

    ps_r0_ = textureSample(ps_s0_tex, ps_s0_smp, ps_v1_.xy);
    ps_oC0_.w = (ps_r0_.w * ps_v0_.w);
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
                    let _e121 = ((ps_v4_.xy * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
                    ps_r1_.x = _e121.x;
                    ps_r1_.y = _e121.y;
                    let _e134 = (ps_r1_.xy + global.ps_uniforms_vec4_[5].xy);
                    ps_r2_.x = _e134.x;
                    ps_r2_.y = _e134.y;
                    let _e147 = (ps_r1_.xy + global.ps_uniforms_vec4_[7].xy);
                    ps_r3_.x = _e147.x;
                    ps_r3_.y = _e147.y;
                    let _e160 = (ps_r1_.xy + global.ps_uniforms_vec4_[9].xy);
                    ps_r4_.x = _e160.x;
                    ps_r4_.y = _e160.y;
                    let _e173 = (ps_r1_.xy + global.ps_uniforms_vec4_[11].xy);
                    ps_r1_.x = _e173.x;
                    ps_r1_.y = _e173.y;
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
                    ps_r1_.x = (ps_r1_.x + -(ps_v4_.z));
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
                    ps_r2_.x = min(ps_r1_.x, 1f);
                }
            } else {
                {
                    let _e435 = ((ps_v4_.xy * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
                    ps_r1_.x = _e435.x;
                    ps_r1_.y = _e435.y;
                    let _e448 = (ps_r1_.xy + global.ps_uniforms_vec4_[5].xy);
                    ps_r3_.x = _e448.x;
                    ps_r3_.y = _e448.y;
                    let _e461 = (ps_r1_.xy + global.ps_uniforms_vec4_[6].xy);
                    ps_r4_.x = _e461.x;
                    ps_r4_.y = _e461.y;
                    let _e474 = (ps_r1_.xy + global.ps_uniforms_vec4_[7].xy);
                    ps_r5_.x = _e474.x;
                    ps_r5_.y = _e474.y;
                    let _e487 = (ps_r1_.xy + global.ps_uniforms_vec4_[8].xy);
                    ps_r6_.x = _e487.x;
                    ps_r6_.y = _e487.y;
                    let _e500 = (ps_r1_.xy + global.ps_uniforms_vec4_[9].xy);
                    ps_r7_.x = _e500.x;
                    ps_r7_.y = _e500.y;
                    let _e513 = (ps_r1_.xy + global.ps_uniforms_vec4_[10].xy);
                    ps_r8_.x = _e513.x;
                    ps_r8_.y = _e513.y;
                    let _e526 = (ps_r1_.xy + global.ps_uniforms_vec4_[11].xy);
                    ps_r9_.x = _e526.x;
                    ps_r9_.y = _e526.y;
                    let _e539 = (ps_r1_.xy + global.ps_uniforms_vec4_[12].xy);
                    ps_r1_.x = _e539.x;
                    ps_r1_.y = _e539.y;
                    ps_r10_ = ((ps_v4_.xyxx * vec4<f32>(0.5f, 0.5f, 0f, 0f)) + vec4<f32>(0.5f, 0.5f, 0f, 0f));
                    ps_r10_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r10_.xy, ps_r10_.w);
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
                    ps_r1_.z = 0f;
                    ps_r1_.w = 0f;
                    ps_r1_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r1_.xy, ps_r1_.w);
                    ps_r10_.y = ps_r3_.x;
                    ps_r10_.z = ps_r4_.x;
                    ps_r10_.w = ps_r5_.x;
                    ps_r3_ = (ps_r10_ + -(ps_v4_.zzzz));
                    if (ps_r3_.x >= 0f) {
                        local_6 = 1f;
                    } else {
                        local_6 = 0f;
                    }
                    ps_r3_.x = local_6;
                    if (ps_r3_.y >= 0f) {
                        local_7 = 1f;
                    } else {
                        local_7 = 0f;
                    }
                    ps_r3_.y = local_7;
                    if (ps_r3_.z >= 0f) {
                        local_8 = 1f;
                    } else {
                        local_8 = 0f;
                    }
                    ps_r3_.z = local_8;
                    if (ps_r3_.w >= 0f) {
                        local_9 = 1f;
                    } else {
                        local_9 = 0f;
                    }
                    ps_r3_.w = local_9;
                    ps_r6_.y = ps_r7_.x;
                    ps_r6_.z = ps_r8_.x;
                    ps_r6_.w = ps_r9_.x;
                    ps_r4_ = (ps_r6_ + -(ps_v4_.zzzz));
                    if (ps_r4_.x >= 0f) {
                        local_10 = 1f;
                    } else {
                        local_10 = 0f;
                    }
                    ps_r4_.x = local_10;
                    if (ps_r4_.y >= 0f) {
                        local_11 = 1f;
                    } else {
                        local_11 = 0f;
                    }
                    ps_r4_.y = local_11;
                    if (ps_r4_.z >= 0f) {
                        local_12 = 1f;
                    } else {
                        local_12 = 0f;
                    }
                    ps_r4_.z = local_12;
                    if (ps_r4_.w >= 0f) {
                        local_13 = 1f;
                    } else {
                        local_13 = 0f;
                    }
                    ps_r4_.w = local_13;
                    ps_r1_.x = (ps_r1_.x + -(ps_v4_.z));
                    if (ps_r1_.x >= 0f) {
                        local_14 = 1f;
                    } else {
                        local_14 = 0f;
                    }
                    ps_r1_.x = local_14;
                    ps_r1_.y = dot(ps_r3_, vec4<f32>(1f, 1f, 1f, 1f));
                    ps_r1_.z = dot(ps_r4_, vec4<f32>(1f, 1f, 1f, 1f));
                    ps_r1_.y = (ps_r1_.y + ps_r1_.z);
                    ps_r1_.x = (ps_r1_.x + ps_r1_.y);
                    ps_r1_.x = ((ps_r1_.x * 0.11111111f) + -1f);
                    ps_r0_.w = ((ps_r0_.w * ps_r1_.x) + 1f);
                    ps_r2_.x = min(ps_r0_.w, 1f);
                }
            }
        }
    } else {
        {
            ps_r2_.x = 1f;
        }
    }
    ps_r0_.w = dot(ps_v2_.xyz, global.ps_uniforms_vec4_[3].xyz);
    ps_r0_.w = clamp((ps_r0_.w + global.ps_uniforms_vec4_[3].w), 0f, 1f);
    ps_r1_.x = mix(ps_r2_.x, 1f, ps_r0_.w);
    ps_r0_.w = dot(global.ps_uniforms_vec4_[4].xyz, ps_v3_.xyz);
    ps_r0_.w = (-(abs(ps_r0_.w)) + 1.2f);
    ps_r0_.w = (ps_r0_.w * ps_r0_.w);
    ps_r0_.w = clamp((ps_r0_.w * ps_r0_.w), 0f, 1f);
    ps_r2_.x = mix(ps_r1_.x, 1f, ps_r0_.w);
    ps_r0_.w = ((ps_r2_.x * 0.3f) + 0.7f);
    let _e1041 = (ps_r0_.www * ps_v0_.xyz);
    ps_r1_.x = _e1041.x;
    ps_r1_.y = _e1041.y;
    ps_r1_.z = _e1041.z;
    let _e1060 = ((ps_r0_.xyz * ps_r1_.xyz) + -(global.ps_uniforms_vec4_[2].xyz));
    ps_r0_.x = _e1060.x;
    ps_r0_.y = _e1060.y;
    ps_r0_.z = _e1060.z;
    let _e1078 = ((io_11_0_.xxx * ps_r0_.xyz) + global.ps_uniforms_vec4_[2].xyz);
    ps_oC0_.x = _e1078.x;
    ps_oC0_.y = _e1078.y;
    ps_oC0_.z = _e1078.z;
    return FragmentOutput(ps_oC0_);
}
