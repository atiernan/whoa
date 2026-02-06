struct UniformBlock_1_ {
    ps_uniforms_vec4_: array<vec4<f32>, 3>,
}

struct FragmentOutput {
    @location(0) ps_oC0_: vec4<f32>,
}

@group(0) @binding(1) var<uniform> global: UniformBlock_1_;
@group(1) @binding(0) var ps_s0_smp: sampler;
@group(1) @binding(1) var ps_s0_tex: texture_2d<f32>;

@fragment fn main(@location(0) ps_v0_: vec4<f32>, @location(1) ps_v1_: vec4<f32>, @location(10) io_11_0_: vec4<f32>) -> FragmentOutput {
    var ps_r0_: vec4<f32>;
    var ps_oC0_: vec4<f32>;

    ps_r0_ = textureSample(ps_s0_tex, ps_s0_smp, ps_v1_.xy);
    let _e24 = ((ps_r0_.xyz * ps_v0_.xyz) + -(global.ps_uniforms_vec4_[2].xyz));
    ps_r0_.x = _e24.x;
    ps_r0_.y = _e24.y;
    ps_r0_.z = _e24.z;
    let _e42 = ((io_11_0_.xxx * ps_r0_.xyz) + global.ps_uniforms_vec4_[2].xyz);
    ps_oC0_.x = _e42.x;
    ps_oC0_.y = _e42.y;
    ps_oC0_.z = _e42.z;
    ps_oC0_.w = ps_v0_.w;
    return FragmentOutput(ps_oC0_);
}
