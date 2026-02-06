struct UniformBlock_0_ {
    vs_uniforms_vec4_: array<vec4<f32>, 34>,
}

struct VertexOutput {
    @location(0) vs_o1_: vec4<f32>,
    @location(1) vs_o2_: vec4<f32>,
    @location(2) vs_o3_: vec4<f32>,
    @location(10) vs_o4_v: vec4<f32>,
    @builtin(position) gl_Position: vec4<f32>,
}

@group(0) @binding(0) var<uniform> global: UniformBlock_0_;

@vertex fn main(@location(0) vs_v0_: vec4<f32>, @location(3) vs_v1_: vec4<f32>, @location(6) vs_v2_: vec4<f32>, @location(7) vs_v3_: vec4<f32>) -> VertexOutput {
    var vs_r0_: vec4<f32>;
    var vs_r1_: vec4<f32>;
    var vs_o1_: vec4<f32>;
    var vs_o2_: vec4<f32>;
    var vs_o3_: vec4<f32>;
    var vs_o4_v: vec4<f32>;
    var gl_Position: vec4<f32>;

    vs_r0_.x = dot(global.vs_uniforms_vec4_[31], vs_v0_);
    vs_r0_.y = dot(global.vs_uniforms_vec4_[32], vs_v0_);
    vs_r0_.w = 1f;
    vs_r0_.z = dot(global.vs_uniforms_vec4_[33], vs_v0_);
    gl_Position.x = dot(global.vs_uniforms_vec4_[2], vs_r0_);
    gl_Position.y = dot(global.vs_uniforms_vec4_[3], vs_r0_);
    gl_Position.z = dot(global.vs_uniforms_vec4_[4], vs_r0_);
    gl_Position.w = dot(global.vs_uniforms_vec4_[5], vs_r0_);
    vs_r0_.x = ((vs_r0_.z * global.vs_uniforms_vec4_[30].x) + global.vs_uniforms_vec4_[30].y);
    vs_r0_.x = max(vs_r0_.x, 0f);
    vs_r1_.x = pow(abs(vs_r0_.x), global.vs_uniforms_vec4_[30].z);
    vs_o4_v.x = min(vs_r1_.x, 1f);
    vs_r0_.x = dot(global.vs_uniforms_vec4_[31].xyz, vs_v1_.xyz);
    vs_r0_.y = dot(global.vs_uniforms_vec4_[32].xyz, vs_v1_.xyz);
    vs_r0_.z = dot(global.vs_uniforms_vec4_[33].xyz, vs_v1_.xyz);
    let _e130 = normalize(vs_r0_.xyz);
    vs_r1_.x = _e130.x;
    vs_r1_.y = _e130.y;
    vs_r1_.z = _e130.z;
    vs_r0_.x = clamp(dot(-(global.vs_uniforms_vec4_[12].xyz), vs_r1_.xyz), 0f, 1f);
    let _e154 = global.vs_uniforms_vec4_[10].xyz;
    vs_r1_.x = _e154.x;
    vs_r1_.y = _e154.y;
    vs_r1_.z = _e154.z;
    let _e177 = clamp(((vs_r0_.xxx * vs_r1_.xyz) + global.vs_uniforms_vec4_[11].xyz), vec3(0f), vec3(1f));
    vs_r0_.x = _e177.x;
    vs_r0_.y = _e177.y;
    vs_r0_.z = _e177.z;
    vs_r0_.w = 1f;
    vs_r1_ = global.vs_uniforms_vec4_[28];
    vs_o1_ = clamp(((vs_r1_ * vs_r0_) + global.vs_uniforms_vec4_[29]), vec4(0f), vec4(1f));
    let _e222 = ((vs_v2_.xyx * vec3<f32>(1f, 1f, 0f)) + vec3<f32>(0f, 0f, 1f));
    vs_r0_.x = _e222.x;
    vs_r0_.y = _e222.y;
    vs_r0_.z = _e222.z;
    vs_o2_.x = dot(global.vs_uniforms_vec4_[6].xyw, vs_r0_.xyz);
    vs_o2_.y = dot(global.vs_uniforms_vec4_[7].xyw, vs_r0_.xyz);
    let _e262 = ((vs_v3_.xyx * vec3<f32>(1f, 1f, 0f)) + vec3<f32>(0f, 0f, 1f));
    vs_r0_.x = _e262.x;
    vs_r0_.y = _e262.y;
    vs_r0_.z = _e262.z;
    vs_o3_.x = dot(global.vs_uniforms_vec4_[8].xyw, vs_r0_.xyz);
    vs_o3_.y = dot(global.vs_uniforms_vec4_[9].xyw, vs_r0_.xyz);
    return VertexOutput(vs_o1_, vs_o2_, vs_o3_, vs_o4_v, gl_Position);
}
