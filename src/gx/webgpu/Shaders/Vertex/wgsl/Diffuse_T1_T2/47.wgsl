struct UniformBlock_0_ {
    vs_uniforms_vec4_: array<vec4<f32>, 256>,
}

struct VertexOutput {
    @location(0) vs_o1_: vec4<f32>,
    @location(1) vs_o2_: vec4<f32>,
    @location(2) vs_o3_: vec4<f32>,
    @location(3) vs_o4_: vec4<f32>,
    @location(4) vs_o5_: vec4<f32>,
    @location(5) io_5_4_: vec4<f32>,
    @location(10) vs_o7_v: vec4<f32>,
    @builtin(position) gl_Position: vec4<f32>,
}

const FLT_MAX: f32 = 100000000000000000000000000000000000000f;

@group(0) @binding(0) var<uniform> global: UniformBlock_0_;

@vertex fn main(@location(0) vs_v0_: vec4<f32>, @location(2) @interpolate(flat) vs_v1_u: vec4<u32>, @location(3) vs_v2_: vec4<f32>, @location(6) vs_v3_: vec4<f32>, @location(7) vs_v4_: vec4<f32>) -> VertexOutput {
    var vs_r0_: vec4<f32>;
    var vs_r1_: vec4<f32>;
    var vs_r2_: vec4<f32>;
    var vs_r3_: vec4<f32>;
    var vs_r4_: vec4<f32>;
    var vs_a0_: vec4<i32>;
    var vs_o1_: vec4<f32>;
    var vs_o2_: vec4<f32>;
    var vs_o3_: vec4<f32>;
    var vs_o4_: vec4<f32>;
    var vs_o5_: vec4<f32>;
    var io_5_4_: vec4<f32>;
    var vs_o7_v: vec4<f32>;
    var gl_Position: vec4<f32>;

    var vs_v1_: vec4<f32>;
    var local: f32;
    var local_1: f32;
    var local_2: f32;
    var local_3: f32;
    var local_4: f32;
    var local_5: f32;

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
    let _e153 = normalize(vs_r1_.xyz);
    vs_r2_.x = _e153.x;
    vs_r2_.y = _e153.y;
    vs_r2_.z = _e153.z;
    let _e169 = (-(vs_r0_.xyz) + global.vs_uniforms_vec4_[21].xyz);
    vs_r1_.x = _e169.x;
    vs_r1_.y = _e169.y;
    vs_r1_.z = _e169.z;
    vs_r3_.x = dot(vs_r1_.xyz, vs_r2_.xyz);
    vs_r1_.x = dot(vs_r1_.xyz, vs_r1_.xyz);
    let _e197 = (-(vs_r0_.xyz) + global.vs_uniforms_vec4_[22].xyz);
    vs_r4_.x = _e197.x;
    vs_r4_.y = _e197.y;
    vs_r4_.z = _e197.z;
    vs_r3_.y = dot(vs_r4_.xyz, vs_r2_.xyz);
    vs_r1_.y = dot(vs_r4_.xyz, vs_r4_.xyz);
    let _e225 = (-(vs_r0_.xyz) + global.vs_uniforms_vec4_[23].xyz);
    vs_r4_.x = _e225.x;
    vs_r4_.y = _e225.y;
    vs_r4_.z = _e225.z;
    vs_r3_.z = dot(vs_r4_.xyz, vs_r2_.xyz);
    vs_r1_.z = dot(vs_r4_.xyz, vs_r4_.xyz);
    if (vs_r1_.x == 0f) {
        local = FLT_MAX;
    } else {
        local = inverseSqrt(abs(vs_r1_.x));
    }
    vs_r4_.x = local;
    if (vs_r1_.y == 0f) {
        local_1 = FLT_MAX;
    } else {
        local_1 = inverseSqrt(abs(vs_r1_.y));
    }
    vs_r4_.y = local_1;
    if (vs_r1_.z == 0f) {
        local_2 = FLT_MAX;
    } else {
        local_2 = inverseSqrt(abs(vs_r1_.z));
    }
    vs_r4_.z = local_2;
    let _e283 = (vs_r3_.xyz * vs_r4_.xyz);
    vs_r3_.x = _e283.x;
    vs_r3_.y = _e283.y;
    vs_r3_.z = _e283.z;
    let _e296 = (vs_r1_.xyz * vs_r4_.xyz);
    vs_r4_.x = _e296.x;
    vs_r4_.y = _e296.y;
    vs_r4_.z = _e296.z;
    let _e311 = (vs_r4_.xyz * global.vs_uniforms_vec4_[26].xyz);
    vs_r4_.x = _e311.x;
    vs_r4_.y = _e311.y;
    vs_r4_.z = _e311.z;
    let _e329 = ((vs_r1_.xyz * global.vs_uniforms_vec4_[27].xyz) + vs_r4_.xyz);
    vs_r1_.x = _e329.x;
    vs_r1_.y = _e329.y;
    vs_r1_.z = _e329.z;
    let _e344 = (vs_r1_.xyz + global.vs_uniforms_vec4_[25].xyz);
    vs_r1_.x = _e344.x;
    vs_r1_.y = _e344.y;
    vs_r1_.z = _e344.z;
    let _e361 = max(vs_r3_.xyz, vec3<f32>(0f, 0f, 0f));
    vs_r3_.x = _e361.x;
    vs_r3_.y = _e361.y;
    vs_r3_.z = _e361.z;
    if (vs_r1_.x == 0f) {
        local_3 = FLT_MAX;
    } else {
        local_3 = (1f / vs_r1_.x);
    }
    vs_r4_.x = local_3;
    if (vs_r1_.y == 0f) {
        local_4 = FLT_MAX;
    } else {
        local_4 = (1f / vs_r1_.y);
    }
    vs_r4_.y = local_4;
    if (vs_r1_.z == 0f) {
        local_5 = FLT_MAX;
    } else {
        local_5 = (1f / vs_r1_.z);
    }
    vs_r4_.z = local_5;
    let _e407 = (vs_r3_.xyz * vs_r4_.xyz);
    vs_r1_.x = _e407.x;
    vs_r1_.y = _e407.y;
    vs_r1_.z = _e407.z;
    vs_r1_.w = clamp(dot(-(global.vs_uniforms_vec4_[12].xyz), vs_r2_.xyz), 0f, 1f);
    let _e429 = vs_r2_.xyz;
    vs_o5_.x = _e429.x;
    vs_o5_.y = _e429.y;
    vs_o5_.z = _e429.z;
    let _e441 = global.vs_uniforms_vec4_[10].xyz;
    vs_r2_.x = _e441.x;
    vs_r2_.y = _e441.y;
    vs_r2_.z = _e441.z;
    let _e459 = ((vs_r1_.www * vs_r2_.xyz) + global.vs_uniforms_vec4_[11].xyz);
    vs_r2_.x = _e459.x;
    vs_r2_.y = _e459.y;
    vs_r2_.z = _e459.z;
    let _e477 = ((global.vs_uniforms_vec4_[17].xyz * vs_r1_.xxx) + vs_r2_.xyz);
    vs_r2_.x = _e477.x;
    vs_r2_.y = _e477.y;
    vs_r2_.z = _e477.z;
    let _e495 = ((global.vs_uniforms_vec4_[18].xyz * vs_r1_.yyy) + vs_r2_.xyz);
    vs_r1_.x = _e495.x;
    vs_r1_.y = _e495.y;
    vs_r1_.w = _e495.z;
    let _e518 = clamp(((global.vs_uniforms_vec4_[19].xyz * vs_r1_.zzz) + vs_r1_.xyw), vec3(0f), vec3(1f));
    vs_r1_.x = _e518.x;
    vs_r1_.y = _e518.y;
    vs_r1_.z = _e518.z;
    vs_r1_.w = 1f;
    vs_r2_ = global.vs_uniforms_vec4_[28];
    vs_o1_ = clamp(((vs_r2_ * vs_r1_) + global.vs_uniforms_vec4_[29]), vec4(0f), vec4(1f));
    vs_r1_.x = ((vs_r0_.z * global.vs_uniforms_vec4_[30].x) + global.vs_uniforms_vec4_[30].y);
    vs_r1_.x = max(vs_r1_.x, 0f);
    vs_r2_.x = pow(abs(vs_r1_.x), global.vs_uniforms_vec4_[30].z);
    vs_o7_v.x = min(vs_r2_.x, 1f);
    let _e603 = ((vs_v3_.xyx * vec3<f32>(1f, 1f, 0f)) + vec3<f32>(0f, 0f, 1f));
    vs_r1_.x = _e603.x;
    vs_r1_.y = _e603.y;
    vs_r1_.z = _e603.z;
    vs_o2_.x = dot(global.vs_uniforms_vec4_[6].xyw, vs_r1_.xyz);
    vs_o2_.y = dot(global.vs_uniforms_vec4_[7].xyw, vs_r1_.xyz);
    let _e643 = ((vs_v4_.xyx * vec3<f32>(1f, 1f, 0f)) + vec3<f32>(0f, 0f, 1f));
    vs_r1_.x = _e643.x;
    vs_r1_.y = _e643.y;
    vs_r1_.z = _e643.z;
    vs_o3_.x = dot(global.vs_uniforms_vec4_[8].xyw, vs_r1_.xyz);
    vs_o3_.y = dot(global.vs_uniforms_vec4_[9].xyw, vs_r1_.xyz);
    io_5_4_.x = dot(vs_r0_, global.vs_uniforms_vec4_[224]);
    io_5_4_.y = dot(vs_r0_, global.vs_uniforms_vec4_[225]);
    io_5_4_.z = dot(vs_r0_, global.vs_uniforms_vec4_[226]);
    let _e687 = vs_r0_.xyz;
    vs_o4_.x = _e687.x;
    vs_o4_.y = _e687.y;
    vs_o4_.z = _e687.z;
    return VertexOutput(vs_o1_, vs_o2_, vs_o3_, vs_o4_, vs_o5_, io_5_4_, vs_o7_v, gl_Position);
}
