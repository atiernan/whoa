struct UniformBlock_1_ {
    ps_uniforms_vec4_: array<vec4<f32>, 3>,
}

struct FragmentOutput {
    @location(0) ps_oC0_: vec4<f32>,
}

@group(0) @binding(1) var<uniform> global: UniformBlock_1_;
@group(1) @binding(0) var ps_s0_smp: sampler;
@group(1) @binding(1) var ps_s0_tex: texture_2d<f32>;
@group(1) @binding(2) var ps_s1_smp: sampler;
@group(1) @binding(3) var ps_s1_tex: texture_2d<f32>;

@fragment fn main(@location(0) ps_v0_: vec4<f32>, @location(1) ps_v1_: vec4<f32>, @location(2) ps_v2_: vec4<f32>, @location(10) io_11_0_: vec4<f32>) -> FragmentOutput {
    var ps_r0_: vec4<f32>;
    var ps_r1_: vec4<f32>;
    var ps_oC0_: vec4<f32>;

    ps_r0_ = textureSample(ps_s0_tex, ps_s0_smp, ps_v1_.xy);
    ps_r0_.w = (ps_r0_.w * ps_v0_.w);
    ps_r1_ = textureSample(ps_s1_tex, ps_s1_smp, ps_v2_.xy);
    ps_oC0_.w = (ps_r0_.w * ps_r1_.w);
    let _e37 = (ps_r0_.xyz * ps_r1_.xyz);
    ps_r0_.x = _e37.x;
    ps_r0_.y = _e37.y;
    ps_r0_.z = _e37.z;
    let _e56 = ((ps_r0_.xyz * ps_v0_.xyz) + -(global.ps_uniforms_vec4_[2].xyz));
    ps_r0_.x = _e56.x;
    ps_r0_.y = _e56.y;
    ps_r0_.z = _e56.z;
    let _e74 = ((io_11_0_.xxx * ps_r0_.xyz) + global.ps_uniforms_vec4_[2].xyz);
    ps_oC0_.x = _e74.x;
    ps_oC0_.y = _e74.y;
    ps_oC0_.z = _e74.z;
    return FragmentOutput(ps_oC0_);
}
