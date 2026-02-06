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
    var vs_r6_: vec4<f32>;
    var vs_o1_: vec4<f32>;
    var vs_o2_: vec4<f32>;
    var vs_o3_v: vec4<f32>;
    var gl_Position: vec4<f32>;

    var local: f32;
    var local_1: f32;
    var local_2: f32;
    var local_3: f32;
    var local_4: f32;
    var local_5: f32;

    vs_r0_.w = 1f;
    vs_r0_.x = dot(global.vs_uniforms_vec4_[31], vs_v0_);
    vs_r0_.y = dot(global.vs_uniforms_vec4_[32], vs_v0_);
    vs_r0_.z = dot(global.vs_uniforms_vec4_[33], vs_v0_);
    gl_Position.x = dot(global.vs_uniforms_vec4_[2], vs_r0_);
    gl_Position.y = dot(global.vs_uniforms_vec4_[3], vs_r0_);
    gl_Position.z = dot(global.vs_uniforms_vec4_[4], vs_r0_);
    gl_Position.w = dot(global.vs_uniforms_vec4_[5], vs_r0_);
    let _e75 = (-(vs_r0_.xyz) + global.vs_uniforms_vec4_[21].xyz);
    vs_r1_.x = _e75.x;
    vs_r1_.y = _e75.y;
    vs_r1_.z = _e75.z;
    vs_r2_.x = dot(vs_r1_.xyz, vs_r1_.xyz);
    if (vs_r2_.x == 0f) {
        local = FLT_MAX;
    } else {
        local = inverseSqrt(abs(vs_r2_.x));
    }
    vs_r3_.x = local;
    let _e108 = (-(vs_r0_.xyz) + global.vs_uniforms_vec4_[22].xyz);
    vs_r4_.x = _e108.x;
    vs_r4_.y = _e108.y;
    vs_r4_.z = _e108.z;
    let _e124 = (-(vs_r0_.xyz) + global.vs_uniforms_vec4_[23].xyz);
    vs_r0_.x = _e124.x;
    vs_r0_.y = _e124.y;
    vs_r0_.w = _e124.z;
    vs_r0_.z = ((vs_r0_.z * global.vs_uniforms_vec4_[30].x) + global.vs_uniforms_vec4_[30].y);
    vs_r0_.z = max(vs_r0_.z, 0f);
    vs_r1_.w = pow(abs(vs_r0_.z), global.vs_uniforms_vec4_[30].z);
    vs_o3_v.x = min(vs_r1_.w, 1f);
    vs_r2_.y = dot(vs_r4_.xyz, vs_r4_.xyz);
    if (vs_r2_.y == 0f) {
        local_1 = FLT_MAX;
    } else {
        local_1 = inverseSqrt(abs(vs_r2_.y));
    }
    vs_r3_.y = local_1;
    vs_r2_.z = dot(vs_r0_.xyw, vs_r0_.xyw);
    if (vs_r2_.z == 0f) {
        local_2 = FLT_MAX;
    } else {
        local_2 = inverseSqrt(abs(vs_r2_.z));
    }
    vs_r3_.z = local_2;
    let _e211 = (vs_r2_.xyz * vs_r3_.xyz);
    vs_r5_.x = _e211.x;
    vs_r5_.y = _e211.y;
    vs_r5_.z = _e211.z;
    let _e226 = (vs_r5_.xyz * global.vs_uniforms_vec4_[26].xyz);
    vs_r5_.x = _e226.x;
    vs_r5_.y = _e226.y;
    vs_r5_.z = _e226.z;
    let _e244 = ((vs_r2_.xyz * global.vs_uniforms_vec4_[27].xyz) + vs_r5_.xyz);
    vs_r2_.x = _e244.x;
    vs_r2_.y = _e244.y;
    vs_r2_.z = _e244.z;
    let _e259 = (vs_r2_.xyz + global.vs_uniforms_vec4_[25].xyz);
    vs_r2_.x = _e259.x;
    vs_r2_.y = _e259.y;
    vs_r2_.z = _e259.z;
    if (vs_r2_.x == 0f) {
        local_3 = FLT_MAX;
    } else {
        local_3 = (1f / vs_r2_.x);
    }
    vs_r5_.x = local_3;
    if (vs_r2_.y == 0f) {
        local_4 = FLT_MAX;
    } else {
        local_4 = (1f / vs_r2_.y);
    }
    vs_r5_.y = local_4;
    if (vs_r2_.z == 0f) {
        local_5 = FLT_MAX;
    } else {
        local_5 = (1f / vs_r2_.z);
    }
    vs_r5_.z = local_5;
    vs_r2_.x = dot(global.vs_uniforms_vec4_[31].xyz, vs_v1_.xyz);
    vs_r2_.y = dot(global.vs_uniforms_vec4_[32].xyz, vs_v1_.xyz);
    vs_r2_.z = dot(global.vs_uniforms_vec4_[33].xyz, vs_v1_.xyz);
    let _e327 = normalize(vs_r2_.xyz);
    vs_r6_.x = _e327.x;
    vs_r6_.y = _e327.y;
    vs_r6_.z = _e327.z;
    vs_r1_.x = dot(vs_r1_.xyz, vs_r6_.xyz);
    vs_r1_.y = dot(vs_r4_.xyz, vs_r6_.xyz);
    vs_r1_.z = dot(vs_r0_.xyw, vs_r6_.xyz);
    vs_r0_.x = clamp(dot(-(global.vs_uniforms_vec4_[12].xyz), vs_r6_.xyz), 0f, 1f);
    let _e369 = global.vs_uniforms_vec4_[10].xyz;
    vs_r2_.x = _e369.x;
    vs_r2_.y = _e369.y;
    vs_r2_.z = _e369.z;
    let _e387 = ((vs_r0_.xxx * vs_r2_.xyz) + global.vs_uniforms_vec4_[11].xyz);
    vs_r0_.x = _e387.x;
    vs_r0_.y = _e387.y;
    vs_r0_.z = _e387.z;
    let _e400 = (vs_r3_.xyz * vs_r1_.xyz);
    vs_r1_.x = _e400.x;
    vs_r1_.y = _e400.y;
    vs_r1_.z = _e400.z;
    let _e417 = max(vs_r1_.xyz, vec3<f32>(0f, 0f, 0f));
    vs_r1_.x = _e417.x;
    vs_r1_.y = _e417.y;
    vs_r1_.z = _e417.z;
    let _e430 = (vs_r5_.xyz * vs_r1_.xyz);
    vs_r1_.x = _e430.x;
    vs_r1_.y = _e430.y;
    vs_r1_.z = _e430.z;
    let _e448 = ((global.vs_uniforms_vec4_[17].xyz * vs_r1_.xxx) + vs_r0_.xyz);
    vs_r0_.x = _e448.x;
    vs_r0_.y = _e448.y;
    vs_r0_.z = _e448.z;
    let _e466 = ((global.vs_uniforms_vec4_[18].xyz * vs_r1_.yyy) + vs_r0_.xyz);
    vs_r0_.x = _e466.x;
    vs_r0_.y = _e466.y;
    vs_r0_.z = _e466.z;
    let _e489 = clamp(((global.vs_uniforms_vec4_[19].xyz * vs_r1_.zzz) + vs_r0_.xyz), vec3(0f), vec3(1f));
    vs_r0_.x = _e489.x;
    vs_r0_.y = _e489.y;
    vs_r0_.z = _e489.z;
    vs_r0_.w = 1f;
    vs_r1_ = global.vs_uniforms_vec4_[28];
    vs_o1_ = clamp(((vs_r1_ * vs_r0_) + global.vs_uniforms_vec4_[29]), vec4(0f), vec4(1f));
    let _e534 = ((vs_v2_.xyx * vec3<f32>(1f, 1f, 0f)) + vec3<f32>(0f, 0f, 1f));
    vs_r0_.x = _e534.x;
    vs_r0_.y = _e534.y;
    vs_r0_.z = _e534.z;
    vs_o2_.x = dot(global.vs_uniforms_vec4_[6].xyw, vs_r0_.xyz);
    vs_o2_.y = dot(global.vs_uniforms_vec4_[7].xyw, vs_r0_.xyz);
    return VertexOutput(vs_o1_, vs_o2_, vs_o3_v, gl_Position);
}
