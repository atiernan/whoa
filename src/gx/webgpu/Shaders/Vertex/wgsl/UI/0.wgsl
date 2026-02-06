struct UniformBlock_0_ {
    vs_uniforms_vec4_: array<vec4<f32>, 4>,
}

struct VertexOutput {
    @location(0) vs_o1_: vec4<f32>,
    @location(1) vs_o2_: vec4<f32>,
    @builtin(position) gl_Position: vec4<f32>,
}

@group(0) @binding(0) var<uniform> global: UniformBlock_0_;

@vertex fn main(@location(0) vs_v0_: vec4<f32>, @location(4) vs_v1_: vec4<f32>, @location(6) vs_v2_: vec4<f32>) -> VertexOutput {
    var vs_o1_: vec4<f32>;
    var vs_o2_: vec4<f32>;
    var gl_Position: vec4<f32>;

    gl_Position.x = dot(global.vs_uniforms_vec4_[0], vs_v0_);
    gl_Position.y = dot(global.vs_uniforms_vec4_[1], vs_v0_);
    gl_Position.z = dot(global.vs_uniforms_vec4_[2], vs_v0_);
    gl_Position.w = dot(global.vs_uniforms_vec4_[3], vs_v0_);
    vs_o1_ = vs_v1_;
    let _e36 = vs_v2_.xy;
    vs_o2_.x = _e36.x;
    vs_o2_.y = _e36.y;
    return VertexOutput(vs_o1_, vs_o2_, gl_Position);
}
