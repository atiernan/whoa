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
    var vs_r4_: vec4<f32>;
    var vs_r5_: vec4<f32>;
    var vs_o1_: vec4<f32>;
    var vs_o2_: vec4<f32>;
    var vs_o3_v: vec4<f32>;
    var gl_Position: vec4<f32>;

    var local: f32;
    var local_1: f32;
    var local_2: f32;
    var local_3: f32;

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
    let _e90 = (-(vs_r0_.xyz) + global.vs_uniforms_vec4_[22].xyz);
    vs_r0_.x = _e90.x;
    vs_r0_.y = _e90.y;
    vs_r0_.w = _e90.z;
    vs_r0_.z = ((vs_r0_.z * global.vs_uniforms_vec4_[30].x) + global.vs_uniforms_vec4_[30].y);
    vs_r0_.z = max(vs_r0_.z, 0f);
    vs_r1_.w = pow(abs(vs_r0_.z), global.vs_uniforms_vec4_[30].z);
    vs_o3_v.x = min(vs_r1_.w, 1f);
    vs_r2_.x = dot(vs_r1_.xyz, vs_r1_.xyz);
    vs_r2_.y = dot(vs_r0_.xyw, vs_r0_.xyw);
    if (vs_r2_.x == 0f) {
        local = FLT_MAX;
    } else {
        local = inverseSqrt(abs(vs_r2_.x));
    }
    vs_r3_.x = local;
    if (vs_r2_.y == 0f) {
        local_1 = FLT_MAX;
    } else {
        local_1 = inverseSqrt(abs(vs_r2_.y));
    }
    vs_r3_.y = local_1;
    let _e177 = (vs_r2_.xy * vs_r3_.xy);
    vs_r2_.z = _e177.x;
    vs_r2_.w = _e177.y;
    let _e190 = (vs_r2_.zw * global.vs_uniforms_vec4_[26].xy);
    vs_r2_.z = _e190.x;
    vs_r2_.w = _e190.y;
    let _e206 = ((vs_r2_.xy * global.vs_uniforms_vec4_[27].xy) + vs_r2_.zw);
    vs_r2_.x = _e206.x;
    vs_r2_.y = _e206.y;
    let _e219 = (vs_r2_.xy + global.vs_uniforms_vec4_[25].xy);
    vs_r2_.x = _e219.x;
    vs_r2_.y = _e219.y;
    if (vs_r2_.x == 0f) {
        local_2 = FLT_MAX;
    } else {
        local_2 = (1f / vs_r2_.x);
    }
    vs_r4_.x = local_2;
    if (vs_r2_.y == 0f) {
        local_3 = FLT_MAX;
    } else {
        local_3 = (1f / vs_r2_.y);
    }
    vs_r4_.y = local_3;
    vs_r2_.x = dot(global.vs_uniforms_vec4_[31].xyz, vs_v1_.xyz);
    vs_r2_.y = dot(global.vs_uniforms_vec4_[32].xyz, vs_v1_.xyz);
    vs_r2_.z = dot(global.vs_uniforms_vec4_[33].xyz, vs_v1_.xyz);
    let _e274 = normalize(vs_r2_.xyz);
    vs_r5_.x = _e274.x;
    vs_r5_.y = _e274.y;
    vs_r5_.z = _e274.z;
    vs_r1_.x = dot(vs_r1_.xyz, vs_r5_.xyz);
    vs_r1_.y = dot(vs_r0_.xyw, vs_r5_.xyz);
    vs_r0_.x = clamp(dot(-(global.vs_uniforms_vec4_[12].xyz), vs_r5_.xyz), 0f, 1f);
    let _e310 = global.vs_uniforms_vec4_[10].xyz;
    vs_r2_.x = _e310.x;
    vs_r2_.y = _e310.y;
    vs_r2_.z = _e310.z;
    let _e328 = ((vs_r0_.xxx * vs_r2_.xyz) + global.vs_uniforms_vec4_[11].xyz);
    vs_r0_.x = _e328.x;
    vs_r0_.y = _e328.y;
    vs_r0_.z = _e328.z;
    let _e341 = (vs_r3_.xy * vs_r1_.xy);
    vs_r1_.x = _e341.x;
    vs_r1_.y = _e341.y;
    let _e356 = max(vs_r1_.xy, vec2<f32>(0f, 0f));
    vs_r1_.x = _e356.x;
    vs_r1_.y = _e356.y;
    let _e367 = (vs_r4_.xy * vs_r1_.xy);
    vs_r1_.x = _e367.x;
    vs_r1_.y = _e367.y;
    let _e383 = ((global.vs_uniforms_vec4_[17].xyz * vs_r1_.xxx) + vs_r0_.xyz);
    vs_r0_.x = _e383.x;
    vs_r0_.y = _e383.y;
    vs_r0_.z = _e383.z;
    let _e406 = clamp(((global.vs_uniforms_vec4_[18].xyz * vs_r1_.yyy) + vs_r0_.xyz), vec3(0f), vec3(1f));
    vs_r0_.x = _e406.x;
    vs_r0_.y = _e406.y;
    vs_r0_.z = _e406.z;
    vs_r0_.w = 1f;
    vs_r1_ = global.vs_uniforms_vec4_[28];
    vs_o1_ = clamp(((vs_r1_ * vs_r0_) + global.vs_uniforms_vec4_[29]), vec4(0f), vec4(1f));
    let _e451 = ((vs_v2_.xyx * vec3<f32>(1f, 1f, 0f)) + vec3<f32>(0f, 0f, 1f));
    vs_r0_.x = _e451.x;
    vs_r0_.y = _e451.y;
    vs_r0_.z = _e451.z;
    vs_o2_.x = dot(global.vs_uniforms_vec4_[6].xyw, vs_r0_.xyz);
    vs_o2_.y = dot(global.vs_uniforms_vec4_[7].xyw, vs_r0_.xyz);
    return VertexOutput(vs_o1_, vs_o2_, vs_o3_v, gl_Position);
}
