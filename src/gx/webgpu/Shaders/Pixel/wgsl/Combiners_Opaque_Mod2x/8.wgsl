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

    ps_r0_ = textureSample(ps_s1_tex, ps_s1_smp, ps_v2_.xy);
    ps_r1_ = vec4((dot(ps_v0_.ww, ps_r0_.ww) + -(global.ps_uniforms_vec4_[2].w)));
    if any((ps_r1_.xyz < vec3(0f))) {
        discard;
    }
    ps_r1_ = textureSample(ps_s0_tex, ps_s0_smp, ps_v1_.xy);
    let _e44 = (ps_r0_.xyz * ps_r1_.xyz);
    ps_r0_.x = _e44.x;
    ps_r0_.y = _e44.y;
    ps_r0_.z = _e44.z;
    ps_r0_.w = (dot(ps_v0_.ww, ps_r0_.ww) + 0f);
    ps_oC0_.w = ps_r0_.w;
    let _e72 = (ps_r0_.xyz + ps_r0_.xyz);
    ps_r0_.x = _e72.x;
    ps_r0_.y = _e72.y;
    ps_r0_.z = _e72.z;
    let _e91 = ((ps_r0_.xyz * ps_v0_.xyz) + -(global.ps_uniforms_vec4_[2].xyz));
    ps_r0_.x = _e91.x;
    ps_r0_.y = _e91.y;
    ps_r0_.z = _e91.z;
    let _e109 = ((io_11_0_.xxx * ps_r0_.xyz) + global.ps_uniforms_vec4_[2].xyz);
    ps_oC0_.x = _e109.x;
    ps_oC0_.y = _e109.y;
    ps_oC0_.z = _e109.z;
    return FragmentOutput(ps_oC0_);
}
