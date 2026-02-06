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
    var ps_oC0_: vec4<f32>;

    var local: f32;

    ps_r0_ = textureSample(ps_s0_tex, ps_s0_smp, ps_v1_.xy);
    ps_oC0_.w = (ps_r0_.w * ps_v0_.w);
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
                    ps_r1_ = ((ps_v4_.xyzx * vec4<f32>(0.5f, 0.5f, 1f, 0f)) + vec4<f32>(0.5f, 0.5f, 0f, 0f));
                    ps_r1_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r1_.xy, ps_r1_.w);
                    let _e136 = ((ps_v4_.xy * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
                    ps_r1_.y = _e136.x;
                    ps_r1_.z = _e136.y;
                    let _e149 = (ps_r1_.yz + global.ps_uniforms_vec4_[5].xy);
                    ps_r2_.x = _e149.x;
                    ps_r2_.y = _e149.y;
                    let _e164 = (vec2<f32>(1f, 0f) * ps_v4_.zx);
                    ps_r2_.z = _e164.x;
                    ps_r2_.w = _e164.y;
                    ps_r2_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r2_.xy, ps_r2_.w);
                    ps_r0_.w = (ps_r1_.x + ps_r2_.x);
                    let _e188 = (ps_r1_.yz + global.ps_uniforms_vec4_[7].xy);
                    ps_r2_.x = _e188.x;
                    ps_r2_.y = _e188.y;
                    let _e203 = (vec2<f32>(1f, 0f) * ps_v4_.zx);
                    ps_r2_.z = _e203.x;
                    ps_r2_.w = _e203.y;
                    ps_r2_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r2_.xy, ps_r2_.w);
                    ps_r0_.w = (ps_r0_.w + ps_r2_.x);
                    let _e227 = (ps_r1_.yz + global.ps_uniforms_vec4_[9].xy);
                    ps_r2_.x = _e227.x;
                    ps_r2_.y = _e227.y;
                    let _e242 = (vec2<f32>(1f, 0f) * ps_v4_.zx);
                    ps_r2_.z = _e242.x;
                    ps_r2_.w = _e242.y;
                    ps_r2_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r2_.xy, ps_r2_.w);
                    ps_r0_.w = (ps_r0_.w + ps_r2_.x);
                    let _e266 = (ps_r1_.yz + global.ps_uniforms_vec4_[11].xy);
                    ps_r1_.x = _e266.x;
                    ps_r1_.y = _e266.y;
                    let _e281 = (vec2<f32>(1f, 0f) * ps_v4_.zx);
                    ps_r1_.z = _e281.x;
                    ps_r1_.w = _e281.y;
                    ps_r1_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r1_.xy, ps_r1_.w);
                    ps_r0_.w = (ps_r0_.w + ps_r1_.x);
                    ps_r0_.w = (ps_r0_.w * 0.2f);
                }
            } else {
                {
                    ps_r1_ = ((ps_v4_.xyzx * vec4<f32>(0.5f, 0.5f, 1f, 0f)) + vec4<f32>(0.5f, 0.5f, 0f, 0f));
                    ps_r1_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r1_.xy, ps_r1_.w);
                    let _e344 = ((ps_v4_.xy * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
                    ps_r1_.y = _e344.x;
                    ps_r1_.z = _e344.y;
                    let _e357 = (ps_r1_.yz + global.ps_uniforms_vec4_[5].xy);
                    ps_r2_.x = _e357.x;
                    ps_r2_.y = _e357.y;
                    let _e372 = (vec2<f32>(1f, 0f) * ps_v4_.zx);
                    ps_r2_.z = _e372.x;
                    ps_r2_.w = _e372.y;
                    ps_r2_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r2_.xy, ps_r2_.w);
                    ps_r1_.x = (ps_r1_.x + ps_r2_.x);
                    let _e396 = (ps_r1_.yz + global.ps_uniforms_vec4_[7].xy);
                    ps_r2_.x = _e396.x;
                    ps_r2_.y = _e396.y;
                    let _e411 = (vec2<f32>(1f, 0f) * ps_v4_.zx);
                    ps_r2_.z = _e411.x;
                    ps_r2_.w = _e411.y;
                    ps_r2_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r2_.xy, ps_r2_.w);
                    ps_r1_.x = (ps_r1_.x + ps_r2_.x);
                    let _e435 = (ps_r1_.yz + global.ps_uniforms_vec4_[9].xy);
                    ps_r2_.x = _e435.x;
                    ps_r2_.y = _e435.y;
                    let _e450 = (vec2<f32>(1f, 0f) * ps_v4_.zx);
                    ps_r2_.z = _e450.x;
                    ps_r2_.w = _e450.y;
                    ps_r2_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r2_.xy, ps_r2_.w);
                    ps_r1_.x = (ps_r1_.x + ps_r2_.x);
                    let _e474 = (ps_r1_.yz + global.ps_uniforms_vec4_[11].xy);
                    ps_r2_.x = _e474.x;
                    ps_r2_.y = _e474.y;
                    let _e489 = (vec2<f32>(1f, 0f) * ps_v4_.zx);
                    ps_r2_.z = _e489.x;
                    ps_r2_.w = _e489.y;
                    ps_r2_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r2_.xy, ps_r2_.w);
                    ps_r1_.x = (ps_r1_.x + ps_r2_.x);
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
            ps_r1_ = ((io_5_4_.xyzx * vec4<f32>(0.5f, 0.5f, 1f, 0f)) + vec4<f32>(0.5f, 0.5f, 0f, 0f));
            ps_r1_ = textureSampleLevel(ps_s5_tex, ps_s5_smp, ps_r1_.xy, ps_r1_.w);
            let _e604 = ((io_5_4_.xy * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
            ps_r1_.y = _e604.x;
            ps_r1_.z = _e604.y;
            let _e617 = (ps_r1_.yz + global.ps_uniforms_vec4_[5].xy);
            ps_r3_.x = _e617.x;
            ps_r3_.y = _e617.y;
            let _e632 = (vec2<f32>(1f, 0f) * io_5_4_.zx);
            ps_r3_.z = _e632.x;
            ps_r3_.w = _e632.y;
            ps_r3_ = textureSampleLevel(ps_s5_tex, ps_s5_smp, ps_r3_.xy, ps_r3_.w);
            ps_r0_.w = (ps_r1_.x + ps_r3_.x);
            let _e656 = (ps_r1_.yz + global.ps_uniforms_vec4_[7].xy);
            ps_r3_.x = _e656.x;
            ps_r3_.y = _e656.y;
            let _e671 = (vec2<f32>(1f, 0f) * io_5_4_.zx);
            ps_r3_.z = _e671.x;
            ps_r3_.w = _e671.y;
            ps_r3_ = textureSampleLevel(ps_s5_tex, ps_s5_smp, ps_r3_.xy, ps_r3_.w);
            ps_r0_.w = (ps_r0_.w + ps_r3_.x);
            let _e695 = (ps_r1_.yz + global.ps_uniforms_vec4_[9].xy);
            ps_r3_.x = _e695.x;
            ps_r3_.y = _e695.y;
            let _e710 = (vec2<f32>(1f, 0f) * io_5_4_.zx);
            ps_r3_.z = _e710.x;
            ps_r3_.w = _e710.y;
            ps_r3_ = textureSampleLevel(ps_s5_tex, ps_s5_smp, ps_r3_.xy, ps_r3_.w);
            ps_r0_.w = (ps_r0_.w + ps_r3_.x);
            let _e734 = (ps_r1_.yz + global.ps_uniforms_vec4_[11].xy);
            ps_r1_.x = _e734.x;
            ps_r1_.y = _e734.y;
            let _e749 = (vec2<f32>(1f, 0f) * io_5_4_.zx);
            ps_r1_.z = _e749.x;
            ps_r1_.w = _e749.y;
            ps_r1_ = textureSampleLevel(ps_s5_tex, ps_s5_smp, ps_r1_.xy, ps_r1_.w);
            ps_r0_.w = (ps_r0_.w + ps_r1_.x);
            ps_r0_.w = (ps_r0_.w * 0.2f);
        }
    } else {
        {
            ps_r1_.x = max(abs(io_5_5_.x), abs(io_5_5_.y));
            if (ps_r1_.x < 1f) {
                {
                    ps_r1_ = ((io_5_5_.xyzx * vec4<f32>(0.5f, 0.5f, 1f, 0f)) + vec4<f32>(0.5f, 0.5f, 0f, 0f));
                    ps_r1_ = textureSampleLevel(ps_s6_tex, ps_s6_smp, ps_r1_.xy, ps_r1_.w);
                    let _e828 = ((io_5_5_.xy * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
                    ps_r1_.y = _e828.x;
                    ps_r1_.z = _e828.y;
                    let _e841 = (ps_r1_.yz + global.ps_uniforms_vec4_[5].xy);
                    ps_r3_.x = _e841.x;
                    ps_r3_.y = _e841.y;
                    let _e856 = (vec2<f32>(1f, 0f) * io_5_5_.zx);
                    ps_r3_.z = _e856.x;
                    ps_r3_.w = _e856.y;
                    ps_r3_ = textureSampleLevel(ps_s6_tex, ps_s6_smp, ps_r3_.xy, ps_r3_.w);
                    ps_r1_.x = (ps_r1_.x + ps_r3_.x);
                    let _e880 = (ps_r1_.yz + global.ps_uniforms_vec4_[7].xy);
                    ps_r3_.x = _e880.x;
                    ps_r3_.y = _e880.y;
                    let _e895 = (vec2<f32>(1f, 0f) * io_5_5_.zx);
                    ps_r3_.z = _e895.x;
                    ps_r3_.w = _e895.y;
                    ps_r3_ = textureSampleLevel(ps_s6_tex, ps_s6_smp, ps_r3_.xy, ps_r3_.w);
                    ps_r1_.x = (ps_r1_.x + ps_r3_.x);
                    let _e919 = (ps_r1_.yz + global.ps_uniforms_vec4_[9].xy);
                    ps_r3_.x = _e919.x;
                    ps_r3_.y = _e919.y;
                    let _e934 = (vec2<f32>(1f, 0f) * io_5_5_.zx);
                    ps_r3_.z = _e934.x;
                    ps_r3_.w = _e934.y;
                    ps_r3_ = textureSampleLevel(ps_s6_tex, ps_s6_smp, ps_r3_.xy, ps_r3_.w);
                    ps_r1_.x = (ps_r1_.x + ps_r3_.x);
                    let _e958 = (ps_r1_.yz + global.ps_uniforms_vec4_[11].xy);
                    ps_r3_.x = _e958.x;
                    ps_r3_.y = _e958.y;
                    let _e973 = (vec2<f32>(1f, 0f) * io_5_5_.zx);
                    ps_r3_.z = _e973.x;
                    ps_r3_.w = _e973.y;
                    ps_r3_ = textureSampleLevel(ps_s6_tex, ps_s6_smp, ps_r3_.xy, ps_r3_.w);
                    ps_r1_.x = (ps_r1_.x + ps_r3_.x);
                    ps_r0_.w = (ps_r1_.x * 0.2f);
                }
            } else {
                {
                    let _e1015 = ((ps_v4_.ww * vec2<f32>(0.5f, 0f)) + vec2<f32>(0.5f, 0f));
                    ps_r1_.x = _e1015.x;
                    ps_r1_.w = _e1015.y;
                    ps_r1_.y = ((io_5_4_.w * 0.5f) + 0.5f);
                    ps_r1_.z = io_5_5_.w;
                    ps_r3_ = textureSampleLevel(ps_s7_tex, ps_s7_smp, ps_r1_.xy, ps_r1_.w);
                    let _e1051 = (ps_r1_.xy + global.ps_uniforms_vec4_[5].xy);
                    ps_r4_.x = _e1051.x;
                    ps_r4_.y = _e1051.y;
                    let _e1059 = ps_r1_.zw;
                    ps_r4_.z = _e1059.x;
                    ps_r4_.w = _e1059.y;
                    ps_r5_ = textureSampleLevel(ps_s7_tex, ps_s7_smp, ps_r4_.xy, ps_r4_.w);
                    ps_r1_.z = (ps_r3_.x + ps_r5_.x);
                    let _e1083 = (ps_r1_.xy + global.ps_uniforms_vec4_[7].xy);
                    ps_r4_.x = _e1083.x;
                    ps_r4_.y = _e1083.y;
                    ps_r3_ = textureSampleLevel(ps_s7_tex, ps_s7_smp, ps_r4_.xy, ps_r4_.w);
                    ps_r1_.z = (ps_r1_.z + ps_r3_.x);
                    let _e1107 = (ps_r1_.xy + global.ps_uniforms_vec4_[9].xy);
                    ps_r4_.x = _e1107.x;
                    ps_r4_.y = _e1107.y;
                    ps_r3_ = textureSampleLevel(ps_s7_tex, ps_s7_smp, ps_r4_.xy, ps_r4_.w);
                    ps_r1_.z = (ps_r1_.z + ps_r3_.x);
                    let _e1131 = (ps_r1_.xy + global.ps_uniforms_vec4_[11].xy);
                    ps_r4_.x = _e1131.x;
                    ps_r4_.y = _e1131.y;
                    ps_r3_ = textureSampleLevel(ps_s7_tex, ps_s7_smp, ps_r4_.xy, ps_r4_.w);
                    ps_r1_.x = (ps_r1_.z + ps_r3_.x);
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
    let _e1278 = (ps_r0_.www * ps_v0_.xyz);
    ps_r1_.x = _e1278.x;
    ps_r1_.y = _e1278.y;
    ps_r1_.z = _e1278.z;
    let _e1297 = ((ps_r0_.xyz * ps_r1_.xyz) + -(global.ps_uniforms_vec4_[2].xyz));
    ps_r0_.x = _e1297.x;
    ps_r0_.y = _e1297.y;
    ps_r0_.z = _e1297.z;
    let _e1315 = ((io_11_0_.xxx * ps_r0_.xyz) + global.ps_uniforms_vec4_[2].xyz);
    ps_oC0_.x = _e1315.x;
    ps_oC0_.y = _e1315.y;
    ps_oC0_.z = _e1315.z;
    return FragmentOutput(ps_oC0_);
}
