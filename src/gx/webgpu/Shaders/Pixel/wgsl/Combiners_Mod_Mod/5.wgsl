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
    var ps_oC0_: vec4<f32>;

    var local: f32;

    ps_r0_ = textureSample(ps_s0_tex, ps_s0_smp, ps_v1_.xy);
    ps_r1_ = textureSample(ps_s1_tex, ps_s1_smp, ps_v2_.xy);
    let _e36 = (ps_r0_.xyz * ps_r1_.xyz);
    ps_r0_.x = _e36.x;
    ps_r0_.y = _e36.y;
    ps_r0_.z = _e36.z;
    ps_r0_.w = (ps_r0_.w * ps_v0_.w);
    ps_oC0_.w = (ps_r1_.w * ps_r0_.w);
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
                    let _e160 = ((io_5_4_.xy * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
                    ps_r1_.y = _e160.x;
                    ps_r1_.z = _e160.y;
                    let _e173 = (ps_r1_.yz + global.ps_uniforms_vec4_[5].xy);
                    ps_r2_.x = _e173.x;
                    ps_r2_.y = _e173.y;
                    let _e188 = (vec2<f32>(1f, 0f) * io_5_4_.zx);
                    ps_r2_.z = _e188.x;
                    ps_r2_.w = _e188.y;
                    ps_r2_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r2_.xy, ps_r2_.w);
                    ps_r1_.x = (ps_r1_.x + ps_r2_.x);
                    let _e212 = (ps_r1_.yz + global.ps_uniforms_vec4_[7].xy);
                    ps_r2_.x = _e212.x;
                    ps_r2_.y = _e212.y;
                    let _e227 = (vec2<f32>(1f, 0f) * io_5_4_.zx);
                    ps_r2_.z = _e227.x;
                    ps_r2_.w = _e227.y;
                    ps_r2_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r2_.xy, ps_r2_.w);
                    ps_r1_.x = (ps_r1_.x + ps_r2_.x);
                    let _e251 = (ps_r1_.yz + global.ps_uniforms_vec4_[9].xy);
                    ps_r2_.x = _e251.x;
                    ps_r2_.y = _e251.y;
                    let _e266 = (vec2<f32>(1f, 0f) * io_5_4_.zx);
                    ps_r2_.z = _e266.x;
                    ps_r2_.w = _e266.y;
                    ps_r2_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r2_.xy, ps_r2_.w);
                    ps_r1_.x = (ps_r1_.x + ps_r2_.x);
                    let _e290 = (ps_r1_.yz + global.ps_uniforms_vec4_[11].xy);
                    ps_r2_.x = _e290.x;
                    ps_r2_.y = _e290.y;
                    let _e305 = (vec2<f32>(1f, 0f) * io_5_4_.zx);
                    ps_r2_.z = _e305.x;
                    ps_r2_.w = _e305.y;
                    ps_r2_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r2_.xy, ps_r2_.w);
                    ps_r1_.x = (ps_r1_.x + ps_r2_.x);
                    ps_r1_.x = ((ps_r1_.x * 0.2f) + -1f);
                    ps_r1_.x = ((ps_r0_.w * ps_r1_.x) + 1f);
                    ps_r2_.x = min(ps_r1_.x, 1f);
                }
            } else {
                {
                    ps_r1_ = ((io_5_4_.xyzx * vec4<f32>(0.5f, 0.5f, 1f, 0f)) + vec4<f32>(0.5f, 0.5f, 0f, 0f));
                    ps_r1_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r1_.xy, ps_r1_.w);
                    let _e397 = ((io_5_4_.xy * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
                    ps_r1_.y = _e397.x;
                    ps_r1_.z = _e397.y;
                    let _e410 = (ps_r1_.yz + global.ps_uniforms_vec4_[5].xy);
                    ps_r3_.x = _e410.x;
                    ps_r3_.y = _e410.y;
                    let _e425 = (vec2<f32>(1f, 0f) * io_5_4_.zx);
                    ps_r3_.z = _e425.x;
                    ps_r3_.w = _e425.y;
                    ps_r3_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r3_.xy, ps_r3_.w);
                    ps_r1_.x = (ps_r1_.x + ps_r3_.x);
                    let _e449 = (ps_r1_.yz + global.ps_uniforms_vec4_[6].xy);
                    ps_r3_.x = _e449.x;
                    ps_r3_.y = _e449.y;
                    let _e464 = (vec2<f32>(1f, 0f) * io_5_4_.zx);
                    ps_r3_.z = _e464.x;
                    ps_r3_.w = _e464.y;
                    ps_r3_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r3_.xy, ps_r3_.w);
                    ps_r1_.x = (ps_r1_.x + ps_r3_.x);
                    let _e488 = (ps_r1_.yz + global.ps_uniforms_vec4_[7].xy);
                    ps_r3_.x = _e488.x;
                    ps_r3_.y = _e488.y;
                    let _e503 = (vec2<f32>(1f, 0f) * io_5_4_.zx);
                    ps_r3_.z = _e503.x;
                    ps_r3_.w = _e503.y;
                    ps_r3_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r3_.xy, ps_r3_.w);
                    ps_r1_.x = (ps_r1_.x + ps_r3_.x);
                    let _e527 = (ps_r1_.yz + global.ps_uniforms_vec4_[8].xy);
                    ps_r3_.x = _e527.x;
                    ps_r3_.y = _e527.y;
                    let _e542 = (vec2<f32>(1f, 0f) * io_5_4_.zx);
                    ps_r3_.z = _e542.x;
                    ps_r3_.w = _e542.y;
                    ps_r3_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r3_.xy, ps_r3_.w);
                    ps_r1_.x = (ps_r1_.x + ps_r3_.x);
                    let _e566 = (ps_r1_.yz + global.ps_uniforms_vec4_[9].xy);
                    ps_r3_.x = _e566.x;
                    ps_r3_.y = _e566.y;
                    let _e581 = (vec2<f32>(1f, 0f) * io_5_4_.zx);
                    ps_r3_.z = _e581.x;
                    ps_r3_.w = _e581.y;
                    ps_r3_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r3_.xy, ps_r3_.w);
                    ps_r1_.x = (ps_r1_.x + ps_r3_.x);
                    let _e605 = (ps_r1_.yz + global.ps_uniforms_vec4_[10].xy);
                    ps_r3_.x = _e605.x;
                    ps_r3_.y = _e605.y;
                    let _e620 = (vec2<f32>(1f, 0f) * io_5_4_.zx);
                    ps_r3_.z = _e620.x;
                    ps_r3_.w = _e620.y;
                    ps_r3_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r3_.xy, ps_r3_.w);
                    ps_r1_.x = (ps_r1_.x + ps_r3_.x);
                    let _e644 = (ps_r1_.yz + global.ps_uniforms_vec4_[11].xy);
                    ps_r3_.x = _e644.x;
                    ps_r3_.y = _e644.y;
                    let _e659 = (vec2<f32>(1f, 0f) * io_5_4_.zx);
                    ps_r3_.z = _e659.x;
                    ps_r3_.w = _e659.y;
                    ps_r3_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r3_.xy, ps_r3_.w);
                    ps_r1_.x = (ps_r1_.x + ps_r3_.x);
                    let _e683 = (ps_r1_.yz + global.ps_uniforms_vec4_[12].xy);
                    ps_r3_.x = _e683.x;
                    ps_r3_.y = _e683.y;
                    let _e698 = (vec2<f32>(1f, 0f) * io_5_4_.zx);
                    ps_r3_.z = _e698.x;
                    ps_r3_.w = _e698.y;
                    ps_r3_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r3_.xy, ps_r3_.w);
                    ps_r1_.x = (ps_r1_.x + ps_r3_.x);
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
    ps_r0_.w = dot(ps_v3_.xyz, global.ps_uniforms_vec4_[3].xyz);
    ps_r0_.w = clamp((ps_r0_.w + global.ps_uniforms_vec4_[3].w), 0f, 1f);
    ps_r1_.x = mix(ps_r2_.x, 1f, ps_r0_.w);
    ps_r0_.w = dot(global.ps_uniforms_vec4_[4].xyz, ps_v4_.xyz);
    ps_r0_.w = (-(abs(ps_r0_.w)) + 1.2f);
    ps_r0_.w = (ps_r0_.w * ps_r0_.w);
    ps_r0_.w = clamp((ps_r0_.w * ps_r0_.w), 0f, 1f);
    ps_r2_.x = mix(ps_r1_.x, 1f, ps_r0_.w);
    ps_r0_.w = ((ps_r2_.x * 0.3f) + 0.7f);
    let _e852 = (ps_r0_.www * ps_v0_.xyz);
    ps_r1_.x = _e852.x;
    ps_r1_.y = _e852.y;
    ps_r1_.z = _e852.z;
    let _e871 = ((ps_r0_.xyz * ps_r1_.xyz) + -(global.ps_uniforms_vec4_[2].xyz));
    ps_r0_.x = _e871.x;
    ps_r0_.y = _e871.y;
    ps_r0_.z = _e871.z;
    let _e889 = ((io_11_0_.xxx * ps_r0_.xyz) + global.ps_uniforms_vec4_[2].xyz);
    ps_oC0_.x = _e889.x;
    ps_oC0_.y = _e889.y;
    ps_oC0_.z = _e889.z;
    return FragmentOutput(ps_oC0_);
}
