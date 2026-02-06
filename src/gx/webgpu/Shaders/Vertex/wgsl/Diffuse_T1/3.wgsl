struct UniformBlock_0_ {
    vs_uniforms_vec4_: array<vec4<f32>, 34>,
}

struct VertexOutput {
    @location(0) vs_o1_: vec4<f32>,
    @location(1) vs_o2_: vec4<f32>,
    @location(10) vs_o3_v: vec4<f32>,
    @builtin(position) gl_Position: vec4<f32>,
}

const FLT_MAX: f32 = 100000000000000000000000000000000000000f;

@group(0) @binding(0) var<uniform> global: UniformBlock_0_;

@vertex fn main(@location(0) vs_v0_: vec4<f32>, @location(3) vs_v1_: vec4<f32>, @location(6) vs_v2_: vec4<f32>) -> VertexOutput {
    var vs_r0_: vec4<f32>;
    var vs_r1_: vec4<f32>;
    var vs_r2_: vec4<f32>;
    var vs_r3_: vec4<f32>;
    var vs_o1_: vec4<f32>;
    var vs_o2_: vec4<f32>;
    var vs_o3_v: vec4<f32>;
    var gl_Position: vec4<f32>;

    var local: f32;
    var local_1: f32;

    vs_r0_.w = 1f;
    vs_r0_.x = dot(global.vs_uniforms_vec4_[31], vs_v0_);
    vs_r0_.y = dot(global.vs_uniforms_vec4_[32], vs_v0_);
    vs_r0_.z = dot(global.vs_uniforms_vec4_[33], vs_v0_);
    gl_Position.x = dot(global.vs_uniforms_vec4_[2], vs_r0_);
    gl_Position.y = dot(global.vs_uniforms_vec4_[3], vs_r0_);
    gl_Position.z = dot(global.vs_uniforms_vec4_[4], vs_r0_);
    gl_Position.w = dot(global.vs_uniforms_vec4_[5], vs_r0_);
    let _e72 = (-(vs_r0_.xyz) + global.vs_uniforms_vec4_[21].xyz);
    vs_r0_.x = _e72.x;
    vs_r0_.y = _e72.y;
    vs_r0_.w = _e72.z;
    vs_r0_.z = ((vs_r0_.z * global.vs_uniforms_vec4_[30].x) + global.vs_uniforms_vec4_[30].y);
    vs_r0_.z = max(vs_r0_.z, 0f);
    vs_r1_.x = pow(abs(vs_r0_.z), global.vs_uniforms_vec4_[30].z);
    vs_o3_v.x = min(vs_r1_.x, 1f);
    vs_r0_.z = dot(vs_r0_.xyw, vs_r0_.xyw);
    if (vs_r0_.z == 0f) {
        local = FLT_MAX;
    } else {
        local = inverseSqrt(abs(vs_r0_.z));
    }
    vs_r1_.x = local;
    vs_r1_.y = (vs_r0_.z * vs_r1_.x);
    vs_r1_.y = (vs_r1_.y * global.vs_uniforms_vec4_[26].x);
    vs_r0_.z = ((vs_r0_.z * global.vs_uniforms_vec4_[27].x) + vs_r1_.y);
    vs_r0_.z = (vs_r0_.z + global.vs_uniforms_vec4_[25].x);
    if (vs_r0_.z == 0f) {
        local_1 = FLT_MAX;
    } else {
        local_1 = (1f / vs_r0_.z);
    }
    vs_r0_.z = local_1;
    vs_r2_.x = dot(global.vs_uniforms_vec4_[31].xyz, vs_v1_.xyz);
    vs_r2_.y = dot(global.vs_uniforms_vec4_[32].xyz, vs_v1_.xyz);
    vs_r2_.z = dot(global.vs_uniforms_vec4_[33].xyz, vs_v1_.xyz);
    let _e208 = normalize(vs_r2_.xyz);
    vs_r3_.x = _e208.x;
    vs_r3_.y = _e208.y;
    vs_r3_.z = _e208.z;
    vs_r0_.x = dot(vs_r0_.xyw, vs_r3_.xyz);
    vs_r0_.y = clamp(dot(-(global.vs_uniforms_vec4_[12].xyz), vs_r3_.xyz), 0f, 1f);
    let _e238 = global.vs_uniforms_vec4_[10].xyz;
    vs_r2_.x = _e238.x;
    vs_r2_.y = _e238.y;
    vs_r2_.z = _e238.z;
    let _e256 = ((vs_r0_.yyy * vs_r2_.xyz) + global.vs_uniforms_vec4_[11].xyz);
    vs_r1_.y = _e256.x;
    vs_r1_.z = _e256.y;
    vs_r1_.w = _e256.z;
    vs_r0_.x = (vs_r1_.x * vs_r0_.x);
    vs_r0_.x = max(vs_r0_.x, 0f);
    vs_r0_.x = (vs_r0_.z * vs_r0_.x);
    let _e300 = clamp(((global.vs_uniforms_vec4_[17].xyz * vs_r0_.xxx) + vs_r1_.yzw), vec3(0f), vec3(1f));
    vs_r0_.x = _e300.x;
    vs_r0_.y = _e300.y;
    vs_r0_.z = _e300.z;
    vs_r0_.w = 1f;
    vs_r1_ = global.vs_uniforms_vec4_[28];
    vs_o1_ = clamp(((vs_r1_ * vs_r0_) + global.vs_uniforms_vec4_[29]), vec4(0f), vec4(1f));
    let _e345 = ((vs_v2_.xyx * vec3<f32>(1f, 1f, 0f)) + vec3<f32>(0f, 0f, 1f));
    vs_r0_.x = _e345.x;
    vs_r0_.y = _e345.y;
    vs_r0_.z = _e345.z;
    vs_o2_.x = dot(global.vs_uniforms_vec4_[6].xyw, vs_r0_.xyz);
    vs_o2_.y = dot(global.vs_uniforms_vec4_[7].xyw, vs_r0_.xyz);
    return VertexOutput(vs_o1_, vs_o2_, vs_o3_v, gl_Position);
}
