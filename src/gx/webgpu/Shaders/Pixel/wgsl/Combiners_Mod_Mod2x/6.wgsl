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
    var ps_oC0_: vec4<f32>;

    var local: f32;

    ps_r0_ = textureSample(ps_s0_tex, ps_s0_smp, ps_v1_.xy);
    ps_r1_ = textureSample(ps_s1_tex, ps_s1_smp, ps_v2_.xy);
    let _e46 = (ps_r0_.xyz * ps_r1_.xyz);
    ps_r0_.x = _e46.x;
    ps_r0_.y = _e46.y;
    ps_r0_.z = _e46.z;
    let _e59 = (ps_r0_.xyz + ps_r0_.xyz);
    ps_r0_.x = _e59.x;
    ps_r0_.y = _e59.y;
    ps_r0_.z = _e59.z;
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
                    ps_r1_ = ((io_5_4_.xyzx * vec4<f32>(0.5f, 0.5f, 1f, 0f)) + vec4<f32>(0.5f, 0.5f, 0f, 0f));
                    ps_r1_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r1_.xy, ps_r1_.w);
                    let _e189 = ((io_5_4_.xy * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
                    ps_r1_.y = _e189.x;
                    ps_r1_.z = _e189.y;
                    let _e202 = (ps_r1_.yz + global.ps_uniforms_vec4_[5].xy);
                    ps_r2_.x = _e202.x;
                    ps_r2_.y = _e202.y;
                    let _e217 = (vec2<f32>(1f, 0f) * io_5_4_.zx);
                    ps_r2_.z = _e217.x;
                    ps_r2_.w = _e217.y;
                    ps_r2_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r2_.xy, ps_r2_.w);
                    ps_r1_.x = (ps_r1_.x + ps_r2_.x);
                    let _e241 = (ps_r1_.yz + global.ps_uniforms_vec4_[7].xy);
                    ps_r2_.x = _e241.x;
                    ps_r2_.y = _e241.y;
                    let _e256 = (vec2<f32>(1f, 0f) * io_5_4_.zx);
                    ps_r2_.z = _e256.x;
                    ps_r2_.w = _e256.y;
                    ps_r2_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r2_.xy, ps_r2_.w);
                    ps_r1_.x = (ps_r1_.x + ps_r2_.x);
                    let _e280 = (ps_r1_.yz + global.ps_uniforms_vec4_[9].xy);
                    ps_r2_.x = _e280.x;
                    ps_r2_.y = _e280.y;
                    let _e295 = (vec2<f32>(1f, 0f) * io_5_4_.zx);
                    ps_r2_.z = _e295.x;
                    ps_r2_.w = _e295.y;
                    ps_r2_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r2_.xy, ps_r2_.w);
                    ps_r1_.x = (ps_r1_.x + ps_r2_.x);
                    let _e319 = (ps_r1_.yz + global.ps_uniforms_vec4_[11].xy);
                    ps_r2_.x = _e319.x;
                    ps_r2_.y = _e319.y;
                    let _e334 = (vec2<f32>(1f, 0f) * io_5_4_.zx);
                    ps_r2_.z = _e334.x;
                    ps_r2_.w = _e334.y;
                    ps_r2_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r2_.xy, ps_r2_.w);
                    ps_r1_.x = (ps_r1_.x + ps_r2_.x);
                    ps_r1_.x = ((ps_r1_.x * 0.2f) + -1f);
                    ps_r1_.x = ((ps_r0_.w * ps_r1_.x) + 1f);
                }
            } else {
                {
                    ps_r2_ = ((io_5_4_.xyzx * vec4<f32>(0.5f, 0.5f, 1f, 0f)) + vec4<f32>(0.5f, 0.5f, 0f, 0f));
                    ps_r2_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r2_.xy, ps_r2_.w);
                    let _e415 = ((io_5_4_.xy * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
                    ps_r1_.y = _e415.x;
                    ps_r1_.z = _e415.y;
                    let _e428 = (ps_r1_.yz + global.ps_uniforms_vec4_[5].xy);
                    ps_r3_.x = _e428.x;
                    ps_r3_.y = _e428.y;
                    let _e443 = (vec2<f32>(1f, 0f) * io_5_4_.zx);
                    ps_r3_.z = _e443.x;
                    ps_r3_.w = _e443.y;
                    ps_r3_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r3_.xy, ps_r3_.w);
                    ps_r1_.w = (ps_r2_.x + ps_r3_.x);
                    let _e467 = (ps_r1_.yz + global.ps_uniforms_vec4_[6].xy);
                    ps_r2_.x = _e467.x;
                    ps_r2_.y = _e467.y;
                    let _e482 = (vec2<f32>(1f, 0f) * io_5_4_.zx);
                    ps_r2_.z = _e482.x;
                    ps_r2_.w = _e482.y;
                    ps_r2_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r2_.xy, ps_r2_.w);
                    ps_r1_.w = (ps_r1_.w + ps_r2_.x);
                    let _e506 = (ps_r1_.yz + global.ps_uniforms_vec4_[7].xy);
                    ps_r2_.x = _e506.x;
                    ps_r2_.y = _e506.y;
                    let _e521 = (vec2<f32>(1f, 0f) * io_5_4_.zx);
                    ps_r2_.z = _e521.x;
                    ps_r2_.w = _e521.y;
                    ps_r2_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r2_.xy, ps_r2_.w);
                    ps_r1_.w = (ps_r1_.w + ps_r2_.x);
                    let _e545 = (ps_r1_.yz + global.ps_uniforms_vec4_[8].xy);
                    ps_r2_.x = _e545.x;
                    ps_r2_.y = _e545.y;
                    let _e560 = (vec2<f32>(1f, 0f) * io_5_4_.zx);
                    ps_r2_.z = _e560.x;
                    ps_r2_.w = _e560.y;
                    ps_r2_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r2_.xy, ps_r2_.w);
                    ps_r1_.w = (ps_r1_.w + ps_r2_.x);
                    let _e584 = (ps_r1_.yz + global.ps_uniforms_vec4_[9].xy);
                    ps_r2_.x = _e584.x;
                    ps_r2_.y = _e584.y;
                    let _e599 = (vec2<f32>(1f, 0f) * io_5_4_.zx);
                    ps_r2_.z = _e599.x;
                    ps_r2_.w = _e599.y;
                    ps_r2_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r2_.xy, ps_r2_.w);
                    ps_r1_.w = (ps_r1_.w + ps_r2_.x);
                    let _e623 = (ps_r1_.yz + global.ps_uniforms_vec4_[10].xy);
                    ps_r2_.x = _e623.x;
                    ps_r2_.y = _e623.y;
                    let _e638 = (vec2<f32>(1f, 0f) * io_5_4_.zx);
                    ps_r2_.z = _e638.x;
                    ps_r2_.w = _e638.y;
                    ps_r2_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r2_.xy, ps_r2_.w);
                    ps_r1_.w = (ps_r1_.w + ps_r2_.x);
                    let _e662 = (ps_r1_.yz + global.ps_uniforms_vec4_[11].xy);
                    ps_r2_.x = _e662.x;
                    ps_r2_.y = _e662.y;
                    let _e677 = (vec2<f32>(1f, 0f) * io_5_4_.zx);
                    ps_r2_.z = _e677.x;
                    ps_r2_.w = _e677.y;
                    ps_r2_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r2_.xy, ps_r2_.w);
                    ps_r1_.w = (ps_r1_.w + ps_r2_.x);
                    let _e701 = (ps_r1_.yz + global.ps_uniforms_vec4_[12].xy);
                    ps_r2_.x = _e701.x;
                    ps_r2_.y = _e701.y;
                    let _e716 = (vec2<f32>(1f, 0f) * io_5_4_.zx);
                    ps_r2_.z = _e716.x;
                    ps_r2_.w = _e716.y;
                    ps_r2_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r2_.xy, ps_r2_.w);
                    ps_r1_.y = (ps_r1_.w + ps_r2_.x);
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
            ps_r1_ = ((io_5_5_.xyzx * vec4<f32>(0.5f, 0.5f, 1f, 0f)) + vec4<f32>(0.5f, 0.5f, 0f, 0f));
            ps_r1_ = textureSampleLevel(ps_s5_tex, ps_s5_smp, ps_r1_.xy, ps_r1_.w);
            let _e849 = ((io_5_5_.xy * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
            ps_r1_.y = _e849.x;
            ps_r1_.z = _e849.y;
            let _e862 = (ps_r1_.yz + global.ps_uniforms_vec4_[5].xy);
            ps_r3_.x = _e862.x;
            ps_r3_.y = _e862.y;
            let _e877 = (vec2<f32>(1f, 0f) * io_5_5_.zx);
            ps_r3_.z = _e877.x;
            ps_r3_.w = _e877.y;
            ps_r3_ = textureSampleLevel(ps_s5_tex, ps_s5_smp, ps_r3_.xy, ps_r3_.w);
            ps_r0_.w = (ps_r1_.x + ps_r3_.x);
            let _e901 = (ps_r1_.yz + global.ps_uniforms_vec4_[7].xy);
            ps_r3_.x = _e901.x;
            ps_r3_.y = _e901.y;
            let _e916 = (vec2<f32>(1f, 0f) * io_5_5_.zx);
            ps_r3_.z = _e916.x;
            ps_r3_.w = _e916.y;
            ps_r3_ = textureSampleLevel(ps_s5_tex, ps_s5_smp, ps_r3_.xy, ps_r3_.w);
            ps_r0_.w = (ps_r0_.w + ps_r3_.x);
            let _e940 = (ps_r1_.yz + global.ps_uniforms_vec4_[9].xy);
            ps_r3_.x = _e940.x;
            ps_r3_.y = _e940.y;
            let _e955 = (vec2<f32>(1f, 0f) * io_5_5_.zx);
            ps_r3_.z = _e955.x;
            ps_r3_.w = _e955.y;
            ps_r3_ = textureSampleLevel(ps_s5_tex, ps_s5_smp, ps_r3_.xy, ps_r3_.w);
            ps_r0_.w = (ps_r0_.w + ps_r3_.x);
            let _e979 = (ps_r1_.yz + global.ps_uniforms_vec4_[11].xy);
            ps_r1_.x = _e979.x;
            ps_r1_.y = _e979.y;
            let _e994 = (vec2<f32>(1f, 0f) * io_5_5_.zx);
            ps_r1_.z = _e994.x;
            ps_r1_.w = _e994.y;
            ps_r1_ = textureSampleLevel(ps_s5_tex, ps_s5_smp, ps_r1_.xy, ps_r1_.w);
            ps_r0_.w = (ps_r0_.w + ps_r1_.x);
            ps_r0_.w = (ps_r0_.w * 0.2f);
        }
    } else {
        {
            ps_r1_.x = max(abs(io_5_6_.x), abs(io_5_6_.y));
            if (ps_r1_.x < 1f) {
                {
                    ps_r1_ = ((io_5_6_.xyzx * vec4<f32>(0.5f, 0.5f, 1f, 0f)) + vec4<f32>(0.5f, 0.5f, 0f, 0f));
                    ps_r1_ = textureSampleLevel(ps_s6_tex, ps_s6_smp, ps_r1_.xy, ps_r1_.w);
                    let _e1073 = ((io_5_6_.xy * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
                    ps_r1_.y = _e1073.x;
                    ps_r1_.z = _e1073.y;
                    let _e1086 = (ps_r1_.yz + global.ps_uniforms_vec4_[5].xy);
                    ps_r3_.x = _e1086.x;
                    ps_r3_.y = _e1086.y;
                    let _e1101 = (vec2<f32>(1f, 0f) * io_5_6_.zx);
                    ps_r3_.z = _e1101.x;
                    ps_r3_.w = _e1101.y;
                    ps_r3_ = textureSampleLevel(ps_s6_tex, ps_s6_smp, ps_r3_.xy, ps_r3_.w);
                    ps_r1_.x = (ps_r1_.x + ps_r3_.x);
                    let _e1125 = (ps_r1_.yz + global.ps_uniforms_vec4_[7].xy);
                    ps_r3_.x = _e1125.x;
                    ps_r3_.y = _e1125.y;
                    let _e1140 = (vec2<f32>(1f, 0f) * io_5_6_.zx);
                    ps_r3_.z = _e1140.x;
                    ps_r3_.w = _e1140.y;
                    ps_r3_ = textureSampleLevel(ps_s6_tex, ps_s6_smp, ps_r3_.xy, ps_r3_.w);
                    ps_r1_.x = (ps_r1_.x + ps_r3_.x);
                    let _e1164 = (ps_r1_.yz + global.ps_uniforms_vec4_[9].xy);
                    ps_r3_.x = _e1164.x;
                    ps_r3_.y = _e1164.y;
                    let _e1179 = (vec2<f32>(1f, 0f) * io_5_6_.zx);
                    ps_r3_.z = _e1179.x;
                    ps_r3_.w = _e1179.y;
                    ps_r3_ = textureSampleLevel(ps_s6_tex, ps_s6_smp, ps_r3_.xy, ps_r3_.w);
                    ps_r1_.x = (ps_r1_.x + ps_r3_.x);
                    let _e1203 = (ps_r1_.yz + global.ps_uniforms_vec4_[11].xy);
                    ps_r3_.x = _e1203.x;
                    ps_r3_.y = _e1203.y;
                    let _e1218 = (vec2<f32>(1f, 0f) * io_5_6_.zx);
                    ps_r3_.z = _e1218.x;
                    ps_r3_.w = _e1218.y;
                    ps_r3_ = textureSampleLevel(ps_s6_tex, ps_s6_smp, ps_r3_.xy, ps_r3_.w);
                    ps_r1_.x = (ps_r1_.x + ps_r3_.x);
                    ps_r0_.w = (ps_r1_.x * 0.2f);
                }
            } else {
                {
                    let _e1260 = ((io_5_4_.ww * vec2<f32>(0.5f, 0f)) + vec2<f32>(0.5f, 0f));
                    ps_r1_.x = _e1260.x;
                    ps_r1_.w = _e1260.y;
                    ps_r1_.y = ((io_5_5_.w * 0.5f) + 0.5f);
                    ps_r1_.z = io_5_6_.w;
                    ps_r3_ = textureSampleLevel(ps_s7_tex, ps_s7_smp, ps_r1_.xy, ps_r1_.w);
                    let _e1296 = (ps_r1_.xy + global.ps_uniforms_vec4_[5].xy);
                    ps_r4_.x = _e1296.x;
                    ps_r4_.y = _e1296.y;
                    let _e1304 = ps_r1_.zw;
                    ps_r4_.z = _e1304.x;
                    ps_r4_.w = _e1304.y;
                    ps_r5_ = textureSampleLevel(ps_s7_tex, ps_s7_smp, ps_r4_.xy, ps_r4_.w);
                    ps_r1_.z = (ps_r3_.x + ps_r5_.x);
                    let _e1328 = (ps_r1_.xy + global.ps_uniforms_vec4_[7].xy);
                    ps_r4_.x = _e1328.x;
                    ps_r4_.y = _e1328.y;
                    ps_r3_ = textureSampleLevel(ps_s7_tex, ps_s7_smp, ps_r4_.xy, ps_r4_.w);
                    ps_r1_.z = (ps_r1_.z + ps_r3_.x);
                    let _e1352 = (ps_r1_.xy + global.ps_uniforms_vec4_[9].xy);
                    ps_r4_.x = _e1352.x;
                    ps_r4_.y = _e1352.y;
                    ps_r3_ = textureSampleLevel(ps_s7_tex, ps_s7_smp, ps_r4_.xy, ps_r4_.w);
                    ps_r1_.z = (ps_r1_.z + ps_r3_.x);
                    let _e1376 = (ps_r1_.xy + global.ps_uniforms_vec4_[11].xy);
                    ps_r4_.x = _e1376.x;
                    ps_r4_.y = _e1376.y;
                    ps_r3_ = textureSampleLevel(ps_s7_tex, ps_s7_smp, ps_r4_.xy, ps_r4_.w);
                    ps_r1_.x = (ps_r1_.z + ps_r3_.x);
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
    let _e1523 = (ps_r0_.www * ps_v0_.xyz);
    ps_r1_.x = _e1523.x;
    ps_r1_.y = _e1523.y;
    ps_r1_.z = _e1523.z;
    let _e1542 = ((ps_r0_.xyz * ps_r1_.xyz) + -(global.ps_uniforms_vec4_[2].xyz));
    ps_r0_.x = _e1542.x;
    ps_r0_.y = _e1542.y;
    ps_r0_.z = _e1542.z;
    let _e1560 = ((io_11_0_.xxx * ps_r0_.xyz) + global.ps_uniforms_vec4_[2].xyz);
    ps_oC0_.x = _e1560.x;
    ps_oC0_.y = _e1560.y;
    ps_oC0_.z = _e1560.z;
    return FragmentOutput(ps_oC0_);
}
