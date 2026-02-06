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
    var ps_r2_: vec4<f32>;
    var ps_oC0_: vec4<f32>;

    ps_r0_ = textureSample(ps_s0_tex, ps_s0_smp, ps_v1_.xy);
    ps_r0_.w = (ps_r0_.w * ps_v0_.w);
    ps_r1_ = textureSample(ps_s1_tex, ps_s1_smp, ps_v2_.xy);
    ps_r2_ = vec4((dot(ps_r0_.ww, ps_r1_.ww) + -(global.ps_uniforms_vec4_[2].w)));
    ps_r0_.w = (dot(ps_r0_.ww, ps_r1_.ww) + 0f);
    let _e57 = (ps_r0_.xyz * ps_r1_.xyz);
    ps_r0_.x = _e57.x;
    ps_r0_.y = _e57.y;
    ps_r0_.z = _e57.z;
    let _e70 = (ps_r0_.xyz + ps_r0_.xyz);
    ps_r0_.x = _e70.x;
    ps_r0_.y = _e70.y;
    ps_r0_.z = _e70.z;
    let _e89 = ((ps_r0_.xyz * ps_v0_.xyz) + -(global.ps_uniforms_vec4_[2].xyz));
    ps_r0_.x = _e89.x;
    ps_r0_.y = _e89.y;
    ps_r0_.z = _e89.z;
    let _e107 = ((io_11_0_.xxx * ps_r0_.xyz) + global.ps_uniforms_vec4_[2].xyz);
    ps_oC0_.x = _e107.x;
    ps_oC0_.y = _e107.y;
    ps_oC0_.z = _e107.z;
    ps_oC0_.w = ps_r0_.w;
    if any((ps_r2_.xyz < vec3(0f))) {
        discard;
    } else {
    }
    return FragmentOutput(ps_oC0_);
}
