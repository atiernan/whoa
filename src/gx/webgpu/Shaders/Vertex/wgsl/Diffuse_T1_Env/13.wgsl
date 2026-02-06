struct UniformBlock_0_ {
    vs_uniforms_vec4_: array<vec4<f32>, 256>,
}

struct VertexOutput {
    @location(0) vs_o1_: vec4<f32>,
    @location(1) vs_o2_: vec4<f32>,
    @location(2) vs_o3_: vec4<f32>,
    @location(10) vs_o4_v: vec4<f32>,
    @builtin(position) gl_Position: vec4<f32>,
}

const FLT_MAX: f32 = 100000000000000000000000000000000000000f;

@group(0) @binding(0) var<uniform> global: UniformBlock_0_;

@vertex fn main(@location(0) vs_v0_: vec4<f32>, @location(2) @interpolate(flat) vs_v1_u: vec4<u32>, @location(3) vs_v2_: vec4<f32>, @location(6) vs_v3_: vec4<f32>) -> VertexOutput {
    var vs_r0_: vec4<f32>;
    var vs_r1_: vec4<f32>;
    var vs_r2_: vec4<f32>;
    var vs_r3_: vec4<f32>;
    var vs_a0_: vec4<i32>;
    var vs_o1_: vec4<f32>;
    var vs_o2_: vec4<f32>;
    var vs_o3_: vec4<f32>;
    var vs_o4_v: vec4<f32>;
    var gl_Position: vec4<f32>;

    var vs_v1_: vec4<f32>;
    var local: f32;
    var local_1: f32;
    var local_2: f32;

    vs_v1_ = vec4<f32>(vs_v1_u);
    vs_r0_.w = 1f;
    vs_r1_.x = (3f * vs_v1_.x);
    vs_a0_.x = i32((floor((abs(vs_r1_.x) + 0.5f)) * sign(vs_r1_.x)));
    vs_r0_.x = dot(global.vs_uniforms_vec4_[(31i + vs_a0_.x)], vs_v0_);
    vs_r0_.y = dot(global.vs_uniforms_vec4_[(32i + vs_a0_.x)], vs_v0_);
    vs_r0_.z = dot(global.vs_uniforms_vec4_[(33i + vs_a0_.x)], vs_v0_);
    gl_Position.x = dot(global.vs_uniforms_vec4_[2], vs_r0_);
    gl_Position.y = dot(global.vs_uniforms_vec4_[3], vs_r0_);
    gl_Position.z = dot(global.vs_uniforms_vec4_[4], vs_r0_);
    gl_Position.w = dot(global.vs_uniforms_vec4_[5], vs_r0_);
    vs_r1_.x = dot((global.vs_uniforms_vec4_[(31i + vs_a0_.x)]).xyz, vs_v2_.xyz);
    vs_r1_.y = dot((global.vs_uniforms_vec4_[(32i + vs_a0_.x)]).xyz, vs_v2_.xyz);
    vs_r1_.z = dot((global.vs_uniforms_vec4_[(33i + vs_a0_.x)]).xyz, vs_v2_.xyz);
    let _e148 = normalize(vs_r1_.xyz);
    vs_r2_.x = _e148.x;
    vs_r2_.y = _e148.y;
    vs_r2_.z = _e148.z;
    let _e164 = (-(vs_r0_.xyz) + global.vs_uniforms_vec4_[21].xyz);
    vs_r1_.x = _e164.x;
    vs_r1_.y = _e164.y;
    vs_r1_.z = _e164.z;
    let _e175 = normalize(vs_r0_.xyz);
    vs_r3_.x = _e175.x;
    vs_r3_.y = _e175.y;
    vs_r3_.z = _e175.z;
    vs_r0_.x = ((vs_r0_.z * global.vs_uniforms_vec4_[30].x) + global.vs_uniforms_vec4_[30].y);
    vs_r0_.x = max(vs_r0_.x, 0f);
    vs_r1_.w = pow(abs(vs_r0_.x), global.vs_uniforms_vec4_[30].z);
    vs_o4_v.x = min(vs_r1_.w, 1f);
    vs_r0_.x = dot(vs_r1_.xyz, vs_r2_.xyz);
    vs_r0_.y = dot(vs_r1_.xyz, vs_r1_.xyz);
    if (vs_r0_.y == 0f) {
        local = FLT_MAX;
    } else {
        local = inverseSqrt(abs(vs_r0_.y));
    }
    vs_r0_.z = local;
    let _e251 = (vs_r0_.xy * vs_r0_.zz);
    vs_r0_.x = _e251.x;
    vs_r0_.z = _e251.y;
    vs_r0_.z = (vs_r0_.z * global.vs_uniforms_vec4_[26].x);
    vs_r0_.y = ((vs_r0_.y * global.vs_uniforms_vec4_[27].x) + vs_r0_.z);
    vs_r0_.y = (vs_r0_.y + global.vs_uniforms_vec4_[25].x);
    if (vs_r0_.y == 0f) {
        local_1 = FLT_MAX;
    } else {
        local_1 = (1f / vs_r0_.y);
    }
    vs_r0_.y = local_1;
    vs_r0_.x = max(vs_r0_.x, 0f);
    vs_r0_.x = (vs_r0_.y * vs_r0_.x);
    vs_r0_.y = clamp(dot(-(global.vs_uniforms_vec4_[12].xyz), vs_r2_.xyz), 0f, 1f);
    let _e326 = global.vs_uniforms_vec4_[10].xyz;
    vs_r1_.x = _e326.x;
    vs_r1_.y = _e326.y;
    vs_r1_.z = _e326.z;
    let _e344 = ((vs_r0_.yyy * vs_r1_.xyz) + global.vs_uniforms_vec4_[11].xyz);
    vs_r0_.y = _e344.x;
    vs_r0_.z = _e344.y;
    vs_r0_.w = _e344.z;
    let _e367 = clamp(((global.vs_uniforms_vec4_[17].xyz * vs_r0_.xxx) + vs_r0_.yzw), vec3(0f), vec3(1f));
    vs_r0_.x = _e367.x;
    vs_r0_.y = _e367.y;
    vs_r0_.z = _e367.z;
    vs_r0_.w = 1f;
    vs_r1_ = global.vs_uniforms_vec4_[28];
    vs_o1_ = clamp(((vs_r1_ * vs_r0_) + global.vs_uniforms_vec4_[29]), vec4(0f), vec4(1f));
    let _e412 = ((vs_v3_.xyx * vec3<f32>(1f, 1f, 0f)) + vec3<f32>(0f, 0f, 1f));
    vs_r0_.x = _e412.x;
    vs_r0_.y = _e412.y;
    vs_r0_.z = _e412.z;
    vs_o2_.x = dot(global.vs_uniforms_vec4_[6].xyw, vs_r0_.xyz);
    vs_o2_.y = dot(global.vs_uniforms_vec4_[7].xyw, vs_r0_.xyz);
    vs_r0_.x = dot(-(vs_r3_.xyz), vs_r2_.xyz);
    vs_r0_.x = (vs_r0_.x + vs_r0_.x);
    let _e459 = ((vs_r0_.xxx * -(vs_r2_.xyz)) + -(vs_r3_.xyz));
    vs_r0_.x = _e459.x;
    vs_r0_.y = _e459.y;
    vs_r0_.z = _e459.z;
    vs_r0_.w = (vs_r0_.z + 1f);
    vs_r0_.z = dot(vs_r0_.xyw, vs_r0_.xyw);
    if (vs_r0_.z == 0f) {
        local_2 = FLT_MAX;
    } else {
        local_2 = inverseSqrt(abs(vs_r0_.z));
    }
    vs_r0_.z = local_2;
    let _e498 = (vs_r0_.xy * vs_r0_.zz);
    vs_r0_.x = _e498.x;
    vs_r0_.y = _e498.y;
    let _e520 = ((vs_r0_.xy * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    vs_o3_.x = _e520.x;
    vs_o3_.y = _e520.y;
    return VertexOutput(vs_o1_, vs_o2_, vs_o3_, vs_o4_v, gl_Position);
}
