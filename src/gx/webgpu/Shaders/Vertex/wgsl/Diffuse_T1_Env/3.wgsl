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

const FLT_MAX: f32 = 100000000000000000000000000000000000000f;

@group(0) @binding(0) var<uniform> global: UniformBlock_0_;

@vertex fn main(@location(0) vs_v0_: vec4<f32>, @location(3) vs_v1_: vec4<f32>, @location(6) vs_v2_: vec4<f32>) -> VertexOutput {
    var vs_r0_: vec4<f32>;
    var vs_r1_: vec4<f32>;
    var vs_r2_: vec4<f32>;
    var vs_r3_: vec4<f32>;
    var vs_r4_: vec4<f32>;
    var vs_o1_: vec4<f32>;
    var vs_o2_: vec4<f32>;
    var vs_o3_: vec4<f32>;
    var vs_o4_v: vec4<f32>;
    var gl_Position: vec4<f32>;

    var local: f32;
    var local_1: f32;
    var local_2: f32;

    vs_r0_.w = 1f;
    vs_r0_.x = dot(global.vs_uniforms_vec4_[31], vs_v0_);
    vs_r0_.y = dot(global.vs_uniforms_vec4_[32], vs_v0_);
    vs_r0_.z = dot(global.vs_uniforms_vec4_[33], vs_v0_);
    gl_Position.x = dot(global.vs_uniforms_vec4_[2], vs_r0_);
    gl_Position.y = dot(global.vs_uniforms_vec4_[3], vs_r0_);
    gl_Position.z = dot(global.vs_uniforms_vec4_[4], vs_r0_);
    gl_Position.w = dot(global.vs_uniforms_vec4_[5], vs_r0_);
    let _e74 = (-(vs_r0_.xyz) + global.vs_uniforms_vec4_[21].xyz);
    vs_r1_.x = _e74.x;
    vs_r1_.y = _e74.y;
    vs_r1_.z = _e74.z;
    let _e85 = normalize(vs_r0_.xyz);
    vs_r2_.x = _e85.x;
    vs_r2_.y = _e85.y;
    vs_r2_.z = _e85.z;
    vs_r0_.x = ((vs_r0_.z * global.vs_uniforms_vec4_[30].x) + global.vs_uniforms_vec4_[30].y);
    vs_r0_.x = max(vs_r0_.x, 0f);
    vs_r1_.w = pow(abs(vs_r0_.x), global.vs_uniforms_vec4_[30].z);
    vs_o4_v.x = min(vs_r1_.w, 1f);
    vs_r0_.x = dot(vs_r1_.xyz, vs_r1_.xyz);
    if (vs_r0_.x == 0f) {
        local = FLT_MAX;
    } else {
        local = inverseSqrt(abs(vs_r0_.x));
    }
    vs_r0_.y = local;
    vs_r0_.z = (vs_r0_.x * vs_r0_.y);
    vs_r0_.z = (vs_r0_.z * global.vs_uniforms_vec4_[26].x);
    vs_r0_.x = ((vs_r0_.x * global.vs_uniforms_vec4_[27].x) + vs_r0_.z);
    vs_r0_.x = (vs_r0_.x + global.vs_uniforms_vec4_[25].x);
    if (vs_r0_.x == 0f) {
        local_1 = FLT_MAX;
    } else {
        local_1 = (1f / vs_r0_.x);
    }
    vs_r0_.x = local_1;
    vs_r3_.x = dot(global.vs_uniforms_vec4_[31].xyz, vs_v1_.xyz);
    vs_r3_.y = dot(global.vs_uniforms_vec4_[32].xyz, vs_v1_.xyz);
    vs_r3_.z = dot(global.vs_uniforms_vec4_[33].xyz, vs_v1_.xyz);
    let _e221 = normalize(vs_r3_.xyz);
    vs_r4_.x = _e221.x;
    vs_r4_.y = _e221.y;
    vs_r4_.z = _e221.z;
    vs_r0_.z = dot(vs_r1_.xyz, vs_r4_.xyz);
    vs_r0_.y = (vs_r0_.y * vs_r0_.z);
    vs_r0_.y = max(vs_r0_.y, 0f);
    vs_r0_.x = (vs_r0_.x * vs_r0_.y);
    vs_r0_.y = clamp(dot(-(global.vs_uniforms_vec4_[12].xyz), vs_r4_.xyz), 0f, 1f);
    let _e272 = global.vs_uniforms_vec4_[10].xyz;
    vs_r1_.x = _e272.x;
    vs_r1_.y = _e272.y;
    vs_r1_.z = _e272.z;
    let _e290 = ((vs_r0_.yyy * vs_r1_.xyz) + global.vs_uniforms_vec4_[11].xyz);
    vs_r0_.y = _e290.x;
    vs_r0_.z = _e290.y;
    vs_r0_.w = _e290.z;
    let _e313 = clamp(((global.vs_uniforms_vec4_[17].xyz * vs_r0_.xxx) + vs_r0_.yzw), vec3(0f), vec3(1f));
    vs_r0_.x = _e313.x;
    vs_r0_.y = _e313.y;
    vs_r0_.z = _e313.z;
    vs_r0_.w = 1f;
    vs_r1_ = global.vs_uniforms_vec4_[28];
    vs_o1_ = clamp(((vs_r1_ * vs_r0_) + global.vs_uniforms_vec4_[29]), vec4(0f), vec4(1f));
    let _e358 = ((vs_v2_.xyx * vec3<f32>(1f, 1f, 0f)) + vec3<f32>(0f, 0f, 1f));
    vs_r0_.x = _e358.x;
    vs_r0_.y = _e358.y;
    vs_r0_.z = _e358.z;
    vs_o2_.x = dot(global.vs_uniforms_vec4_[6].xyw, vs_r0_.xyz);
    vs_o2_.y = dot(global.vs_uniforms_vec4_[7].xyw, vs_r0_.xyz);
    vs_r0_.x = dot(-(vs_r2_.xyz), vs_r4_.xyz);
    vs_r0_.x = (vs_r0_.x + vs_r0_.x);
    let _e405 = ((vs_r0_.xxx * -(vs_r4_.xyz)) + -(vs_r2_.xyz));
    vs_r0_.x = _e405.x;
    vs_r0_.y = _e405.y;
    vs_r0_.z = _e405.z;
    vs_r0_.w = (vs_r0_.z + 1f);
    vs_r0_.z = dot(vs_r0_.xyw, vs_r0_.xyw);
    if (vs_r0_.z == 0f) {
        local_2 = FLT_MAX;
    } else {
        local_2 = inverseSqrt(abs(vs_r0_.z));
    }
    vs_r0_.z = local_2;
    let _e444 = (vs_r0_.xy * vs_r0_.zz);
    vs_r0_.x = _e444.x;
    vs_r0_.y = _e444.y;
    let _e466 = ((vs_r0_.xy * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    vs_o3_.x = _e466.x;
    vs_o3_.y = _e466.y;
    return VertexOutput(vs_o1_, vs_o2_, vs_o3_, vs_o4_v, gl_Position);
}
