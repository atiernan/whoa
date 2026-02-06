struct UniformBlock_0_ {
    vs_uniforms_vec4_: array<vec4<f32>, 256>,
}

struct VertexOutput {
    @location(0) vs_o1_: vec4<f32>,
    @location(1) vs_o2_: vec4<f32>,
    @location(2) vs_o3_: vec4<f32>,
    @location(3) vs_o4_: vec4<f32>,
    @location(4) vs_o5_: vec4<f32>,
    @location(10) vs_o6_v: vec4<f32>,
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
    var vs_o4_: vec4<f32>;
    var vs_o5_: vec4<f32>;
    var vs_o6_v: vec4<f32>;
    var gl_Position: vec4<f32>;

    var vs_v1_: vec4<f32>;
    var local: f32;
    var local_1: f32;

    vs_v1_ = vec4<f32>(vs_v1_u);
    vs_r0_.x = (3f * vs_v1_.x);
    vs_a0_.x = i32((floor((abs(vs_r0_.x) + 0.5f)) * sign(vs_r0_.x)));
    vs_r0_.x = dot(global.vs_uniforms_vec4_[(31i + vs_a0_.x)], vs_v0_);
    vs_r0_.y = dot(global.vs_uniforms_vec4_[(32i + vs_a0_.x)], vs_v0_);
    vs_r0_.w = 1f;
    vs_r0_.z = dot(global.vs_uniforms_vec4_[(33i + vs_a0_.x)], vs_v0_);
    gl_Position.x = dot(global.vs_uniforms_vec4_[2], vs_r0_);
    gl_Position.y = dot(global.vs_uniforms_vec4_[3], vs_r0_);
    gl_Position.z = dot(global.vs_uniforms_vec4_[4], vs_r0_);
    gl_Position.w = dot(global.vs_uniforms_vec4_[5], vs_r0_);
    vs_r1_.x = dot((global.vs_uniforms_vec4_[(31i + vs_a0_.x)]).xyz, vs_v2_.xyz);
    vs_r1_.y = dot((global.vs_uniforms_vec4_[(32i + vs_a0_.x)]).xyz, vs_v2_.xyz);
    vs_r1_.z = dot((global.vs_uniforms_vec4_[(33i + vs_a0_.x)]).xyz, vs_v2_.xyz);
    let _e150 = normalize(vs_r1_.xyz);
    vs_r2_.x = _e150.x;
    vs_r2_.y = _e150.y;
    vs_r2_.z = _e150.z;
    vs_r1_.x = clamp(dot(-(global.vs_uniforms_vec4_[12].xyz), vs_r2_.xyz), 0f, 1f);
    let _e174 = global.vs_uniforms_vec4_[10].xyz;
    vs_r3_.x = _e174.x;
    vs_r3_.y = _e174.y;
    vs_r3_.z = _e174.z;
    let _e192 = ((vs_r1_.xxx * vs_r3_.xyz) + global.vs_uniforms_vec4_[11].xyz);
    vs_r1_.x = _e192.x;
    vs_r1_.y = _e192.y;
    vs_r1_.z = _e192.z;
    let _e208 = (-(vs_r0_.xyz) + global.vs_uniforms_vec4_[21].xyz);
    vs_r3_.x = _e208.x;
    vs_r3_.y = _e208.y;
    vs_r3_.z = _e208.z;
    vs_r1_.w = dot(vs_r3_.xyz, vs_r2_.xyz);
    let _e224 = vs_r2_.xyz;
    vs_o4_.x = _e224.x;
    vs_o4_.y = _e224.y;
    vs_o4_.z = _e224.z;
    vs_r2_.x = dot(vs_r3_.xyz, vs_r3_.xyz);
    if (vs_r2_.x == 0f) {
        local = FLT_MAX;
    } else {
        local = inverseSqrt(abs(vs_r2_.x));
    }
    vs_r2_.y = local;
    vs_r1_.w = (vs_r1_.w * vs_r2_.y);
    vs_r2_.y = (vs_r2_.x * vs_r2_.y);
    vs_r2_.y = (vs_r2_.y * global.vs_uniforms_vec4_[26].x);
    vs_r2_.x = ((vs_r2_.x * global.vs_uniforms_vec4_[27].x) + vs_r2_.y);
    vs_r2_.x = (vs_r2_.x + global.vs_uniforms_vec4_[25].x);
    if (vs_r2_.x == 0f) {
        local_1 = FLT_MAX;
    } else {
        local_1 = (1f / vs_r2_.x);
    }
    vs_r2_.x = local_1;
    vs_r1_.w = max(vs_r1_.w, 0f);
    vs_r1_.w = (vs_r2_.x * vs_r1_.w);
    let _e329 = clamp(((global.vs_uniforms_vec4_[17].xyz * vs_r1_.www) + vs_r1_.xyz), vec3(0f), vec3(1f));
    vs_r1_.x = _e329.x;
    vs_r1_.y = _e329.y;
    vs_r1_.z = _e329.z;
    vs_r1_.w = 1f;
    vs_r2_ = global.vs_uniforms_vec4_[28];
    vs_o1_ = clamp(((vs_r2_ * vs_r1_) + global.vs_uniforms_vec4_[29]), vec4(0f), vec4(1f));
    vs_r1_.x = ((vs_r0_.z * global.vs_uniforms_vec4_[30].x) + global.vs_uniforms_vec4_[30].y);
    vs_r1_.x = max(vs_r1_.x, 0f);
    vs_r2_.x = pow(abs(vs_r1_.x), global.vs_uniforms_vec4_[30].z);
    vs_o6_v.x = min(vs_r2_.x, 1f);
    let _e414 = ((vs_v3_.xyx * vec3<f32>(1f, 1f, 0f)) + vec3<f32>(0f, 0f, 1f));
    vs_r1_.x = _e414.x;
    vs_r1_.y = _e414.y;
    vs_r1_.z = _e414.z;
    vs_o2_.x = dot(global.vs_uniforms_vec4_[6].xyw, vs_r1_.xyz);
    vs_o2_.y = dot(global.vs_uniforms_vec4_[7].xyw, vs_r1_.xyz);
    vs_o5_.x = dot(vs_r0_, global.vs_uniforms_vec4_[224]);
    vs_o5_.y = dot(vs_r0_, global.vs_uniforms_vec4_[225]);
    vs_o5_.z = dot(vs_r0_, global.vs_uniforms_vec4_[226]);
    let _e458 = vs_r0_.xyz;
    vs_o3_.x = _e458.x;
    vs_o3_.y = _e458.y;
    vs_o3_.z = _e458.z;
    return VertexOutput(vs_o1_, vs_o2_, vs_o3_, vs_o4_, vs_o5_, vs_o6_v, gl_Position);
}
