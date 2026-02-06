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
    ps_r1_.y = (-(ps_r0_.w) + 0.01f);
    if (ps_r1_.y >= 0f) {
        local = 0f;
    } else {
        local = 1f;
    }
    ps_r1_.y = local;
    if (ps_r1_.y != -(ps_r1_.y)) {
        {
            if (10f < ps_v2_.z) {
                {
                    ps_r2_ = ((ps_v4_.xyzx * vec4<f32>(0.5f, 0.5f, 1f, 0f)) + vec4<f32>(0.5f, 0.5f, 0f, 0f));
                    ps_r2_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r2_.xy, ps_r2_.w);
                    let _e163 = ((ps_v4_.xy * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
                    ps_r1_.y = _e163.x;
                    ps_r1_.z = _e163.y;
                    let _e176 = (ps_r1_.yz + global.ps_uniforms_vec4_[5].xy);
                    ps_r3_.x = _e176.x;
                    ps_r3_.y = _e176.y;
                    let _e191 = (vec2<f32>(1f, 0f) * ps_v4_.zx);
                    ps_r3_.z = _e191.x;
                    ps_r3_.w = _e191.y;
                    ps_r3_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r3_.xy, ps_r3_.w);
                    ps_r1_.w = (ps_r2_.x + ps_r3_.x);
                    let _e215 = (ps_r1_.yz + global.ps_uniforms_vec4_[7].xy);
                    ps_r2_.x = _e215.x;
                    ps_r2_.y = _e215.y;
                    let _e230 = (vec2<f32>(1f, 0f) * ps_v4_.zx);
                    ps_r2_.z = _e230.x;
                    ps_r2_.w = _e230.y;
                    ps_r2_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r2_.xy, ps_r2_.w);
                    ps_r1_.w = (ps_r1_.w + ps_r2_.x);
                    let _e254 = (ps_r1_.yz + global.ps_uniforms_vec4_[9].xy);
                    ps_r2_.x = _e254.x;
                    ps_r2_.y = _e254.y;
                    let _e269 = (vec2<f32>(1f, 0f) * ps_v4_.zx);
                    ps_r2_.z = _e269.x;
                    ps_r2_.w = _e269.y;
                    ps_r2_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r2_.xy, ps_r2_.w);
                    ps_r1_.w = (ps_r1_.w + ps_r2_.x);
                    let _e293 = (ps_r1_.yz + global.ps_uniforms_vec4_[11].xy);
                    ps_r2_.x = _e293.x;
                    ps_r2_.y = _e293.y;
                    let _e308 = (vec2<f32>(1f, 0f) * ps_v4_.zx);
                    ps_r2_.z = _e308.x;
                    ps_r2_.w = _e308.y;
                    ps_r2_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r2_.xy, ps_r2_.w);
                    ps_r1_.y = (ps_r1_.w + ps_r2_.x);
                    ps_r1_.y = ((ps_r1_.y * 0.2f) + -1f);
                    ps_r1_.y = ((ps_r0_.w * ps_r1_.y) + 1f);
                }
            } else {
                {
                    ps_r2_ = ((ps_v4_.xyzx * vec4<f32>(0.5f, 0.5f, 1f, 0f)) + vec4<f32>(0.5f, 0.5f, 0f, 0f));
                    ps_r2_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r2_.xy, ps_r2_.w);
                    let _e391 = ((ps_v4_.xy * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
                    ps_r1_.z = _e391.x;
                    ps_r1_.w = _e391.y;
                    let _e404 = (ps_r1_.zw + global.ps_uniforms_vec4_[5].xy);
                    ps_r3_.x = _e404.x;
                    ps_r3_.y = _e404.y;
                    let _e419 = (vec2<f32>(1f, 0f) * ps_v4_.zx);
                    ps_r3_.z = _e419.x;
                    ps_r3_.w = _e419.y;
                    ps_r3_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r3_.xy, ps_r3_.w);
                    ps_r2_.x = (ps_r2_.x + ps_r3_.x);
                    let _e443 = (ps_r1_.zw + global.ps_uniforms_vec4_[6].xy);
                    ps_r3_.x = _e443.x;
                    ps_r3_.y = _e443.y;
                    let _e458 = (vec2<f32>(1f, 0f) * ps_v4_.zx);
                    ps_r3_.z = _e458.x;
                    ps_r3_.w = _e458.y;
                    ps_r3_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r3_.xy, ps_r3_.w);
                    ps_r2_.x = (ps_r2_.x + ps_r3_.x);
                    let _e482 = (ps_r1_.zw + global.ps_uniforms_vec4_[7].xy);
                    ps_r3_.x = _e482.x;
                    ps_r3_.y = _e482.y;
                    let _e497 = (vec2<f32>(1f, 0f) * ps_v4_.zx);
                    ps_r3_.z = _e497.x;
                    ps_r3_.w = _e497.y;
                    ps_r3_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r3_.xy, ps_r3_.w);
                    ps_r2_.x = (ps_r2_.x + ps_r3_.x);
                    let _e521 = (ps_r1_.zw + global.ps_uniforms_vec4_[8].xy);
                    ps_r3_.x = _e521.x;
                    ps_r3_.y = _e521.y;
                    let _e536 = (vec2<f32>(1f, 0f) * ps_v4_.zx);
                    ps_r3_.z = _e536.x;
                    ps_r3_.w = _e536.y;
                    ps_r3_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r3_.xy, ps_r3_.w);
                    ps_r2_.x = (ps_r2_.x + ps_r3_.x);
                    let _e560 = (ps_r1_.zw + global.ps_uniforms_vec4_[9].xy);
                    ps_r3_.x = _e560.x;
                    ps_r3_.y = _e560.y;
                    let _e575 = (vec2<f32>(1f, 0f) * ps_v4_.zx);
                    ps_r3_.z = _e575.x;
                    ps_r3_.w = _e575.y;
                    ps_r3_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r3_.xy, ps_r3_.w);
                    ps_r2_.x = (ps_r2_.x + ps_r3_.x);
                    let _e599 = (ps_r1_.zw + global.ps_uniforms_vec4_[10].xy);
                    ps_r3_.x = _e599.x;
                    ps_r3_.y = _e599.y;
                    let _e614 = (vec2<f32>(1f, 0f) * ps_v4_.zx);
                    ps_r3_.z = _e614.x;
                    ps_r3_.w = _e614.y;
                    ps_r3_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r3_.xy, ps_r3_.w);
                    ps_r2_.x = (ps_r2_.x + ps_r3_.x);
                    let _e638 = (ps_r1_.zw + global.ps_uniforms_vec4_[11].xy);
                    ps_r3_.x = _e638.x;
                    ps_r3_.y = _e638.y;
                    let _e653 = (vec2<f32>(1f, 0f) * ps_v4_.zx);
                    ps_r3_.z = _e653.x;
                    ps_r3_.w = _e653.y;
                    ps_r3_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r3_.xy, ps_r3_.w);
                    ps_r2_.x = (ps_r2_.x + ps_r3_.x);
                    let _e677 = (ps_r1_.zw + global.ps_uniforms_vec4_[12].xy);
                    ps_r3_.x = _e677.x;
                    ps_r3_.y = _e677.y;
                    let _e692 = (vec2<f32>(1f, 0f) * ps_v4_.zx);
                    ps_r3_.z = _e692.x;
                    ps_r3_.w = _e692.y;
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
    ps_r0_.w = dot(ps_v2_.xyz, global.ps_uniforms_vec4_[3].xyz);
    ps_r0_.w = clamp((ps_r0_.w + global.ps_uniforms_vec4_[3].w), 0f, 1f);
    ps_r2_.x = mix(ps_r1_.y, 1f, ps_r0_.w);
    ps_r0_.w = max(abs(io_5_4_.x), abs(io_5_4_.y));
    if (ps_r0_.w < 1f) {
        {
            ps_r3_ = ((io_5_4_.xyzx * vec4<f32>(0.5f, 0.5f, 1f, 0f)) + vec4<f32>(0.5f, 0.5f, 0f, 0f));
            ps_r3_ = textureSampleLevel(ps_s5_tex, ps_s5_smp, ps_r3_.xy, ps_r3_.w);
            let _e825 = ((io_5_4_.xy * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
            ps_r1_.y = _e825.x;
            ps_r1_.z = _e825.y;
            let _e838 = (ps_r1_.yz + global.ps_uniforms_vec4_[5].xy);
            ps_r4_.x = _e838.x;
            ps_r4_.y = _e838.y;
            let _e853 = (vec2<f32>(1f, 0f) * io_5_4_.zx);
            ps_r4_.z = _e853.x;
            ps_r4_.w = _e853.y;
            ps_r4_ = textureSampleLevel(ps_s5_tex, ps_s5_smp, ps_r4_.xy, ps_r4_.w);
            ps_r0_.w = (ps_r3_.x + ps_r4_.x);
            let _e877 = (ps_r1_.yz + global.ps_uniforms_vec4_[7].xy);
            ps_r3_.x = _e877.x;
            ps_r3_.y = _e877.y;
            let _e892 = (vec2<f32>(1f, 0f) * io_5_4_.zx);
            ps_r3_.z = _e892.x;
            ps_r3_.w = _e892.y;
            ps_r3_ = textureSampleLevel(ps_s5_tex, ps_s5_smp, ps_r3_.xy, ps_r3_.w);
            ps_r0_.w = (ps_r0_.w + ps_r3_.x);
            let _e916 = (ps_r1_.yz + global.ps_uniforms_vec4_[9].xy);
            ps_r3_.x = _e916.x;
            ps_r3_.y = _e916.y;
            let _e931 = (vec2<f32>(1f, 0f) * io_5_4_.zx);
            ps_r3_.z = _e931.x;
            ps_r3_.w = _e931.y;
            ps_r3_ = textureSampleLevel(ps_s5_tex, ps_s5_smp, ps_r3_.xy, ps_r3_.w);
            ps_r0_.w = (ps_r0_.w + ps_r3_.x);
            let _e955 = (ps_r1_.yz + global.ps_uniforms_vec4_[11].xy);
            ps_r3_.x = _e955.x;
            ps_r3_.y = _e955.y;
            let _e970 = (vec2<f32>(1f, 0f) * io_5_4_.zx);
            ps_r3_.z = _e970.x;
            ps_r3_.w = _e970.y;
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
                    let _e1050 = ((io_5_5_.xy * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
                    ps_r1_.y = _e1050.x;
                    ps_r1_.z = _e1050.y;
                    let _e1063 = (ps_r1_.yz + global.ps_uniforms_vec4_[5].xy);
                    ps_r4_.x = _e1063.x;
                    ps_r4_.y = _e1063.y;
                    let _e1078 = (vec2<f32>(1f, 0f) * io_5_5_.zx);
                    ps_r4_.z = _e1078.x;
                    ps_r4_.w = _e1078.y;
                    ps_r4_ = textureSampleLevel(ps_s6_tex, ps_s6_smp, ps_r4_.xy, ps_r4_.w);
                    ps_r1_.w = (ps_r3_.x + ps_r4_.x);
                    let _e1102 = (ps_r1_.yz + global.ps_uniforms_vec4_[7].xy);
                    ps_r3_.x = _e1102.x;
                    ps_r3_.y = _e1102.y;
                    let _e1117 = (vec2<f32>(1f, 0f) * io_5_5_.zx);
                    ps_r3_.z = _e1117.x;
                    ps_r3_.w = _e1117.y;
                    ps_r3_ = textureSampleLevel(ps_s6_tex, ps_s6_smp, ps_r3_.xy, ps_r3_.w);
                    ps_r1_.w = (ps_r1_.w + ps_r3_.x);
                    let _e1141 = (ps_r1_.yz + global.ps_uniforms_vec4_[9].xy);
                    ps_r3_.x = _e1141.x;
                    ps_r3_.y = _e1141.y;
                    let _e1156 = (vec2<f32>(1f, 0f) * io_5_5_.zx);
                    ps_r3_.z = _e1156.x;
                    ps_r3_.w = _e1156.y;
                    ps_r3_ = textureSampleLevel(ps_s6_tex, ps_s6_smp, ps_r3_.xy, ps_r3_.w);
                    ps_r1_.w = (ps_r1_.w + ps_r3_.x);
                    let _e1180 = (ps_r1_.yz + global.ps_uniforms_vec4_[11].xy);
                    ps_r3_.x = _e1180.x;
                    ps_r3_.y = _e1180.y;
                    let _e1195 = (vec2<f32>(1f, 0f) * io_5_5_.zx);
                    ps_r3_.z = _e1195.x;
                    ps_r3_.w = _e1195.y;
                    ps_r3_ = textureSampleLevel(ps_s6_tex, ps_s6_smp, ps_r3_.xy, ps_r3_.w);
                    ps_r1_.y = (ps_r1_.w + ps_r3_.x);
                    ps_r0_.w = (ps_r1_.y * 0.2f);
                }
            } else {
                {
                    let _e1238 = ((ps_v4_.ww * vec2<f32>(0.5f, 0f)) + vec2<f32>(0.5f, 0f));
                    ps_r3_.x = _e1238.x;
                    ps_r3_.w = _e1238.y;
                    ps_r3_.y = ((io_5_4_.w * 0.5f) + 0.5f);
                    ps_r3_.z = io_5_5_.w;
                    ps_r4_ = textureSampleLevel(ps_s7_tex, ps_s7_smp, ps_r3_.xy, ps_r3_.w);
                    let _e1274 = (ps_r3_.xy + global.ps_uniforms_vec4_[5].xy);
                    ps_r5_.x = _e1274.x;
                    ps_r5_.y = _e1274.y;
                    let _e1282 = ps_r3_.zw;
                    ps_r5_.z = _e1282.x;
                    ps_r5_.w = _e1282.y;
                    ps_r6_ = textureSampleLevel(ps_s7_tex, ps_s7_smp, ps_r5_.xy, ps_r5_.w);
                    ps_r1_.y = (ps_r4_.x + ps_r6_.x);
                    let _e1306 = (ps_r3_.xy + global.ps_uniforms_vec4_[7].xy);
                    ps_r5_.x = _e1306.x;
                    ps_r5_.y = _e1306.y;
                    ps_r4_ = textureSampleLevel(ps_s7_tex, ps_s7_smp, ps_r5_.xy, ps_r5_.w);
                    ps_r1_.y = (ps_r1_.y + ps_r4_.x);
                    let _e1330 = (ps_r3_.xy + global.ps_uniforms_vec4_[9].xy);
                    ps_r5_.x = _e1330.x;
                    ps_r5_.y = _e1330.y;
                    ps_r4_ = textureSampleLevel(ps_s7_tex, ps_s7_smp, ps_r5_.xy, ps_r5_.w);
                    ps_r1_.y = (ps_r1_.y + ps_r4_.x);
                    let _e1354 = (ps_r3_.xy + global.ps_uniforms_vec4_[11].xy);
                    ps_r5_.x = _e1354.x;
                    ps_r5_.y = _e1354.y;
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
    let _e1503 = (ps_r0_.www * ps_v0_.xyz);
    ps_r1_.y = _e1503.x;
    ps_r1_.z = _e1503.y;
    ps_r1_.w = _e1503.z;
    let _e1522 = ((ps_r0_.xyz * ps_r1_.yzw) + -(global.ps_uniforms_vec4_[2].xyz));
    ps_r0_.x = _e1522.x;
    ps_r0_.y = _e1522.y;
    ps_r0_.z = _e1522.z;
    let _e1540 = ((io_11_0_.xxx * ps_r0_.xyz) + global.ps_uniforms_vec4_[2].xyz);
    ps_oC0_.x = _e1540.x;
    ps_oC0_.y = _e1540.y;
    ps_oC0_.z = _e1540.z;
    ps_oC0_.w = ps_r1_.x;
    return FragmentOutput(ps_oC0_);
}
