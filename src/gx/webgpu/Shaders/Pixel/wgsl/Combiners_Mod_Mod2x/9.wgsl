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

@fragment fn main(@location(0) ps_v0_: vec4<f32>, @location(1) ps_v1_: vec4<f32>, @location(2) ps_v2_: vec4<f32>, @location(3) ps_v3_: vec4<f32>, @location(4) ps_v4_: vec4<f32>, @location(5) io_5_4_: vec4<f32>, @location(10) io_11_0_: vec4<f32>) -> FragmentOutput {
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
    var ps_r11_: vec4<f32>;
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
    ps_r1_ = textureSample(ps_s1_tex, ps_s1_smp, ps_v2_.xy);
    let _e44 = (ps_r0_.xyz * ps_r1_.xyz);
    ps_r0_.x = _e44.x;
    ps_r0_.y = _e44.y;
    ps_r0_.z = _e44.z;
    let _e57 = (ps_r0_.xyz + ps_r0_.xyz);
    ps_r0_.x = _e57.x;
    ps_r0_.y = _e57.y;
    ps_r0_.z = _e57.z;
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
                    let _e184 = ((io_5_4_.xy * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
                    ps_r1_.y = _e184.x;
                    ps_r1_.z = _e184.y;
                    let _e197 = (ps_r1_.yz + global.ps_uniforms_vec4_[5].xy);
                    ps_r2_.x = _e197.x;
                    ps_r2_.y = _e197.y;
                    let _e210 = (ps_r1_.yz + global.ps_uniforms_vec4_[7].xy);
                    ps_r3_.x = _e210.x;
                    ps_r3_.y = _e210.y;
                    let _e223 = (ps_r1_.yz + global.ps_uniforms_vec4_[9].xy);
                    ps_r4_.x = _e223.x;
                    ps_r4_.y = _e223.y;
                    let _e236 = (ps_r1_.yz + global.ps_uniforms_vec4_[11].xy);
                    ps_r5_.x = _e236.x;
                    ps_r5_.y = _e236.y;
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
                    ps_r1_.y = ((ps_r0_.w * ps_r1_.y) + 1f);
                    ps_r2_.x = min(ps_r1_.y, 1f);
                }
            } else {
                {
                    let _e496 = ((io_5_4_.xy * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
                    ps_r1_.y = _e496.x;
                    ps_r1_.z = _e496.y;
                    let _e509 = (ps_r1_.yz + global.ps_uniforms_vec4_[5].xy);
                    ps_r3_.x = _e509.x;
                    ps_r3_.y = _e509.y;
                    let _e522 = (ps_r1_.yz + global.ps_uniforms_vec4_[6].xy);
                    ps_r4_.x = _e522.x;
                    ps_r4_.y = _e522.y;
                    let _e535 = (ps_r1_.yz + global.ps_uniforms_vec4_[7].xy);
                    ps_r5_.x = _e535.x;
                    ps_r5_.y = _e535.y;
                    let _e548 = (ps_r1_.yz + global.ps_uniforms_vec4_[8].xy);
                    ps_r6_.x = _e548.x;
                    ps_r6_.y = _e548.y;
                    let _e561 = (ps_r1_.yz + global.ps_uniforms_vec4_[9].xy);
                    ps_r7_.x = _e561.x;
                    ps_r7_.y = _e561.y;
                    let _e574 = (ps_r1_.yz + global.ps_uniforms_vec4_[10].xy);
                    ps_r8_.x = _e574.x;
                    ps_r8_.y = _e574.y;
                    let _e587 = (ps_r1_.yz + global.ps_uniforms_vec4_[11].xy);
                    ps_r9_.x = _e587.x;
                    ps_r9_.y = _e587.y;
                    let _e600 = (ps_r1_.yz + global.ps_uniforms_vec4_[12].xy);
                    ps_r10_.x = _e600.x;
                    ps_r10_.y = _e600.y;
                    ps_r11_ = ((io_5_4_.xyxx * vec4<f32>(0.5f, 0.5f, 0f, 0f)) + vec4<f32>(0.5f, 0.5f, 0f, 0f));
                    ps_r11_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r11_.xy, ps_r11_.w);
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
                    ps_r10_.z = 0f;
                    ps_r10_.w = 0f;
                    ps_r10_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r10_.xy, ps_r10_.w);
                    ps_r11_.y = ps_r3_.x;
                    ps_r11_.z = ps_r4_.x;
                    ps_r11_.w = ps_r5_.x;
                    ps_r3_ = (ps_r11_ + -(io_5_4_.zzzz));
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
                    ps_r4_ = (ps_r6_ + -(io_5_4_.zzzz));
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
                    ps_r1_.y = (ps_r10_.x + -(io_5_4_.z));
                    if (ps_r1_.y >= 0f) {
                        local_14 = 1f;
                    } else {
                        local_14 = 0f;
                    }
                    ps_r1_.y = local_14;
                    ps_r1_.z = dot(ps_r3_, vec4<f32>(1f, 1f, 1f, 1f));
                    ps_r1_.w = dot(ps_r4_, vec4<f32>(1f, 1f, 1f, 1f));
                    ps_r1_.z = (ps_r1_.z + ps_r1_.w);
                    ps_r1_.y = (ps_r1_.y + ps_r1_.z);
                    ps_r1_.y = ((ps_r1_.y * 0.11111111f) + -1f);
                    ps_r0_.w = ((ps_r0_.w * ps_r1_.y) + 1f);
                    ps_r2_.x = min(ps_r0_.w, 1f);
                }
            }
        }
    } else {
        {
            ps_r2_.x = 1f;
        }
    }
    ps_r0_.w = dot(ps_v3_.xyz, global.ps_uniforms_vec4_[3].xyz);
    ps_r0_.w = clamp((ps_r0_.w + global.ps_uniforms_vec4_[3].w), 0f, 1f);
    ps_r1_.y = mix(ps_r2_.x, 1f, ps_r0_.w);
    ps_r0_.w = dot(global.ps_uniforms_vec4_[4].xyz, ps_v4_.xyz);
    ps_r0_.w = (-(abs(ps_r0_.w)) + 1.2f);
    ps_r0_.w = (ps_r0_.w * ps_r0_.w);
    ps_r0_.w = clamp((ps_r0_.w * ps_r0_.w), 0f, 1f);
    ps_r2_.x = mix(ps_r1_.y, 1f, ps_r0_.w);
    ps_r0_.w = ((ps_r2_.x * 0.3f) + 0.7f);
    let _e1102 = (ps_r0_.www * ps_v0_.xyz);
    ps_r1_.y = _e1102.x;
    ps_r1_.z = _e1102.y;
    ps_r1_.w = _e1102.z;
    let _e1121 = ((ps_r0_.xyz * ps_r1_.yzw) + -(global.ps_uniforms_vec4_[2].xyz));
    ps_r0_.x = _e1121.x;
    ps_r0_.y = _e1121.y;
    ps_r0_.z = _e1121.z;
    let _e1139 = ((io_11_0_.xxx * ps_r0_.xyz) + global.ps_uniforms_vec4_[2].xyz);
    ps_oC0_.x = _e1139.x;
    ps_oC0_.y = _e1139.y;
    ps_oC0_.z = _e1139.z;
    ps_oC0_.w = ps_r1_.x;
    return FragmentOutput(ps_oC0_);
}
