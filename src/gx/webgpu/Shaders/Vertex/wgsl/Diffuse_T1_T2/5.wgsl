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

@vertex fn main(@location(0) vs_v0_: vec4<f32>, @location(3) vs_v1_: vec4<f32>, @location(6) vs_v2_: vec4<f32>, @location(7) vs_v3_: vec4<f32>) -> VertexOutput {
    var vs_r0_: vec4<f32>;
    var vs_r1_: vec4<f32>;
    var vs_r2_: vec4<f32>;
    var vs_r3_: vec4<f32>;
    var vs_r4_: vec4<f32>;
    var vs_r5_: vec4<f32>;
    var vs_o1_: vec4<f32>;
    var vs_o2_: vec4<f32>;
    var vs_o3_: vec4<f32>;
    var vs_o4_v: vec4<f32>;
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
    let _e76 = (-(vs_r0_.xyz) + global.vs_uniforms_vec4_[21].xyz);
    vs_r1_.x = _e76.x;
    vs_r1_.y = _e76.y;
    vs_r1_.z = _e76.z;
    let _e92 = (-(vs_r0_.xyz) + global.vs_uniforms_vec4_[22].xyz);
    vs_r0_.x = _e92.x;
    vs_r0_.y = _e92.y;
    vs_r0_.w = _e92.z;
    vs_r0_.z = ((vs_r0_.z * global.vs_uniforms_vec4_[30].x) + global.vs_uniforms_vec4_[30].y);
    vs_r0_.z = max(vs_r0_.z, 0f);
    vs_r1_.w = pow(abs(vs_r0_.z), global.vs_uniforms_vec4_[30].z);
    vs_o4_v.x = min(vs_r1_.w, 1f);
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
    let _e179 = (vs_r2_.xy * vs_r3_.xy);
    vs_r2_.z = _e179.x;
    vs_r2_.w = _e179.y;
    let _e192 = (vs_r2_.zw * global.vs_uniforms_vec4_[26].xy);
    vs_r2_.z = _e192.x;
    vs_r2_.w = _e192.y;
    let _e208 = ((vs_r2_.xy * global.vs_uniforms_vec4_[27].xy) + vs_r2_.zw);
    vs_r2_.x = _e208.x;
    vs_r2_.y = _e208.y;
    let _e221 = (vs_r2_.xy + global.vs_uniforms_vec4_[25].xy);
    vs_r2_.x = _e221.x;
    vs_r2_.y = _e221.y;
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
    let _e276 = normalize(vs_r2_.xyz);
    vs_r5_.x = _e276.x;
    vs_r5_.y = _e276.y;
    vs_r5_.z = _e276.z;
    vs_r1_.x = dot(vs_r1_.xyz, vs_r5_.xyz);
    vs_r1_.y = dot(vs_r0_.xyw, vs_r5_.xyz);
    vs_r0_.x = clamp(dot(-(global.vs_uniforms_vec4_[12].xyz), vs_r5_.xyz), 0f, 1f);
    let _e312 = global.vs_uniforms_vec4_[10].xyz;
    vs_r2_.x = _e312.x;
    vs_r2_.y = _e312.y;
    vs_r2_.z = _e312.z;
    let _e330 = ((vs_r0_.xxx * vs_r2_.xyz) + global.vs_uniforms_vec4_[11].xyz);
    vs_r0_.x = _e330.x;
    vs_r0_.y = _e330.y;
    vs_r0_.z = _e330.z;
    let _e343 = (vs_r3_.xy * vs_r1_.xy);
    vs_r1_.x = _e343.x;
    vs_r1_.y = _e343.y;
    let _e358 = max(vs_r1_.xy, vec2<f32>(0f, 0f));
    vs_r1_.x = _e358.x;
    vs_r1_.y = _e358.y;
    let _e369 = (vs_r4_.xy * vs_r1_.xy);
    vs_r1_.x = _e369.x;
    vs_r1_.y = _e369.y;
    let _e385 = ((global.vs_uniforms_vec4_[17].xyz * vs_r1_.xxx) + vs_r0_.xyz);
    vs_r0_.x = _e385.x;
    vs_r0_.y = _e385.y;
    vs_r0_.z = _e385.z;
    let _e408 = clamp(((global.vs_uniforms_vec4_[18].xyz * vs_r1_.yyy) + vs_r0_.xyz), vec3(0f), vec3(1f));
    vs_r0_.x = _e408.x;
    vs_r0_.y = _e408.y;
    vs_r0_.z = _e408.z;
    vs_r0_.w = 1f;
    vs_r1_ = global.vs_uniforms_vec4_[28];
    vs_o1_ = clamp(((vs_r1_ * vs_r0_) + global.vs_uniforms_vec4_[29]), vec4(0f), vec4(1f));
    let _e453 = ((vs_v2_.xyx * vec3<f32>(1f, 1f, 0f)) + vec3<f32>(0f, 0f, 1f));
    vs_r0_.x = _e453.x;
    vs_r0_.y = _e453.y;
    vs_r0_.z = _e453.z;
    vs_o2_.x = dot(global.vs_uniforms_vec4_[6].xyw, vs_r0_.xyz);
    vs_o2_.y = dot(global.vs_uniforms_vec4_[7].xyw, vs_r0_.xyz);
    let _e493 = ((vs_v3_.xyx * vec3<f32>(1f, 1f, 0f)) + vec3<f32>(0f, 0f, 1f));
    vs_r0_.x = _e493.x;
    vs_r0_.y = _e493.y;
    vs_r0_.z = _e493.z;
    vs_o3_.x = dot(global.vs_uniforms_vec4_[8].xyw, vs_r0_.xyz);
    vs_o3_.y = dot(global.vs_uniforms_vec4_[9].xyw, vs_r0_.xyz);
    return VertexOutput(vs_o1_, vs_o2_, vs_o3_, vs_o4_v, gl_Position);
}
