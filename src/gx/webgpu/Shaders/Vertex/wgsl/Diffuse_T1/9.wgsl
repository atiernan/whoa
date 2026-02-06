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
    var vs_r7_: vec4<f32>;
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
    var local_6: f32;
    var local_7: f32;

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
    vs_r2_.x = dot(vs_r1_.xyz, vs_r1_.xyz);
    if (vs_r2_.x == 0f) {
        local = FLT_MAX;
    } else {
        local = inverseSqrt(abs(vs_r2_.x));
    }
    vs_r3_.x = local;
    let _e109 = (-(vs_r0_.xyz) + global.vs_uniforms_vec4_[22].xyz);
    vs_r4_.x = _e109.x;
    vs_r4_.y = _e109.y;
    vs_r4_.z = _e109.z;
    vs_r2_.y = dot(vs_r4_.xyz, vs_r4_.xyz);
    if (vs_r2_.y == 0f) {
        local_1 = FLT_MAX;
    } else {
        local_1 = inverseSqrt(abs(vs_r2_.y));
    }
    vs_r3_.y = local_1;
    let _e142 = (-(vs_r0_.xyz) + global.vs_uniforms_vec4_[23].xyz);
    vs_r5_.x = _e142.x;
    vs_r5_.y = _e142.y;
    vs_r5_.z = _e142.z;
    let _e158 = (-(vs_r0_.xyz) + global.vs_uniforms_vec4_[24].xyz);
    vs_r0_.x = _e158.x;
    vs_r0_.y = _e158.y;
    vs_r0_.w = _e158.z;
    vs_r0_.z = ((vs_r0_.z * global.vs_uniforms_vec4_[30].x) + global.vs_uniforms_vec4_[30].y);
    vs_r0_.z = max(vs_r0_.z, 0f);
    vs_r1_.w = pow(abs(vs_r0_.z), global.vs_uniforms_vec4_[30].z);
    vs_o3_v.x = min(vs_r1_.w, 1f);
    vs_r2_.z = dot(vs_r5_.xyz, vs_r5_.xyz);
    if (vs_r2_.z == 0f) {
        local_2 = FLT_MAX;
    } else {
        local_2 = inverseSqrt(abs(vs_r2_.z));
    }
    vs_r3_.z = local_2;
    vs_r2_.w = dot(vs_r0_.xyw, vs_r0_.xyw);
    if (vs_r2_.w == 0f) {
        local_3 = FLT_MAX;
    } else {
        local_3 = inverseSqrt(abs(vs_r2_.w));
    }
    vs_r3_.w = local_3;
    vs_r6_ = (vs_r2_ * vs_r3_);
    vs_r6_ = (vs_r6_ * global.vs_uniforms_vec4_[26]);
    vs_r2_ = ((vs_r2_ * global.vs_uniforms_vec4_[27]) + vs_r6_);
    vs_r2_ = (vs_r2_ + global.vs_uniforms_vec4_[25]);
    if (vs_r2_.x == 0f) {
        local_4 = FLT_MAX;
    } else {
        local_4 = (1f / vs_r2_.x);
    }
    vs_r6_.x = local_4;
    if (vs_r2_.y == 0f) {
        local_5 = FLT_MAX;
    } else {
        local_5 = (1f / vs_r2_.y);
    }
    vs_r6_.y = local_5;
    if (vs_r2_.z == 0f) {
        local_6 = FLT_MAX;
    } else {
        local_6 = (1f / vs_r2_.z);
    }
    vs_r6_.z = local_6;
    if (vs_r2_.w == 0f) {
        local_7 = FLT_MAX;
    } else {
        local_7 = (1f / vs_r2_.w);
    }
    vs_r6_.w = local_7;
    vs_r2_.x = dot(global.vs_uniforms_vec4_[31].xyz, vs_v1_.xyz);
    vs_r2_.y = dot(global.vs_uniforms_vec4_[32].xyz, vs_v1_.xyz);
    vs_r2_.z = dot(global.vs_uniforms_vec4_[33].xyz, vs_v1_.xyz);
    let _e331 = normalize(vs_r2_.xyz);
    vs_r7_.x = _e331.x;
    vs_r7_.y = _e331.y;
    vs_r7_.z = _e331.z;
    vs_r1_.x = dot(vs_r1_.xyz, vs_r7_.xyz);
    vs_r1_.y = dot(vs_r4_.xyz, vs_r7_.xyz);
    vs_r1_.z = dot(vs_r5_.xyz, vs_r7_.xyz);
    vs_r1_.w = dot(vs_r0_.xyw, vs_r7_.xyz);
    vs_r0_.x = clamp(dot(-(global.vs_uniforms_vec4_[12].xyz), vs_r7_.xyz), 0f, 1f);
    let _e379 = global.vs_uniforms_vec4_[10].xyz;
    vs_r2_.x = _e379.x;
    vs_r2_.y = _e379.y;
    vs_r2_.z = _e379.z;
    let _e397 = ((vs_r0_.xxx * vs_r2_.xyz) + global.vs_uniforms_vec4_[11].xyz);
    vs_r0_.x = _e397.x;
    vs_r0_.y = _e397.y;
    vs_r0_.z = _e397.z;
    vs_r1_ = (vs_r3_ * vs_r1_);
    vs_r1_ = max(vs_r1_, vec4<f32>(0f, 0f, 0f, 0f));
    vs_r1_ = (vs_r6_ * vs_r1_);
    let _e429 = ((global.vs_uniforms_vec4_[17].xyz * vs_r1_.xxx) + vs_r0_.xyz);
    vs_r0_.x = _e429.x;
    vs_r0_.y = _e429.y;
    vs_r0_.z = _e429.z;
    let _e447 = ((global.vs_uniforms_vec4_[18].xyz * vs_r1_.yyy) + vs_r0_.xyz);
    vs_r0_.x = _e447.x;
    vs_r0_.y = _e447.y;
    vs_r0_.z = _e447.z;
    let _e465 = ((global.vs_uniforms_vec4_[19].xyz * vs_r1_.zzz) + vs_r0_.xyz);
    vs_r0_.x = _e465.x;
    vs_r0_.y = _e465.y;
    vs_r0_.z = _e465.z;
    let _e488 = clamp(((global.vs_uniforms_vec4_[20].xyz * vs_r1_.www) + vs_r0_.xyz), vec3(0f), vec3(1f));
    vs_r0_.x = _e488.x;
    vs_r0_.y = _e488.y;
    vs_r0_.z = _e488.z;
    vs_r0_.w = 1f;
    vs_r1_ = global.vs_uniforms_vec4_[28];
    vs_o1_ = clamp(((vs_r1_ * vs_r0_) + global.vs_uniforms_vec4_[29]), vec4(0f), vec4(1f));
    let _e533 = ((vs_v2_.xyx * vec3<f32>(1f, 1f, 0f)) + vec3<f32>(0f, 0f, 1f));
    vs_r0_.x = _e533.x;
    vs_r0_.y = _e533.y;
    vs_r0_.z = _e533.z;
    vs_o2_.x = dot(global.vs_uniforms_vec4_[6].xyw, vs_r0_.xyz);
    vs_o2_.y = dot(global.vs_uniforms_vec4_[7].xyw, vs_r0_.xyz);
    return VertexOutput(vs_o1_, vs_o2_, vs_o3_v, gl_Position);
}
