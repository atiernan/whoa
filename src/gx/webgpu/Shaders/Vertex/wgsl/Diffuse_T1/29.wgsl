struct UniformBlock_0_ {
    vs_uniforms_vec4_: array<vec4<f32>, 256>,
}

struct VertexOutput {
    @location(0) vs_o1_: vec4<f32>,
    @location(1) vs_o2_: vec4<f32>,
    @location(10) vs_o3_v: vec4<f32>,
    @builtin(position) gl_Position: vec4<f32>,
}

const FLT_MAX: f32 = 100000000000000000000000000000000000000f;

@group(0) @binding(0) var<uniform> global: UniformBlock_0_;

@vertex fn main(@location(0) vs_v0_: vec4<f32>, @location(1) vs_v1_: vec4<f32>, @location(2) @interpolate(flat) vs_v2_u: vec4<u32>, @location(3) vs_v3_: vec4<f32>, @location(6) vs_v4_: vec4<f32>) -> VertexOutput {
    var vs_r0_: vec4<f32>;
    var vs_r1_: vec4<f32>;
    var vs_r2_: vec4<f32>;
    var vs_r3_: vec4<f32>;
    var vs_r4_: vec4<f32>;
    var vs_a0_: vec4<i32>;
    var vs_o1_: vec4<f32>;
    var vs_o2_: vec4<f32>;
    var vs_o3_v: vec4<f32>;
    var gl_Position: vec4<f32>;

    var vs_v2_: vec4<f32>;
    var local: f32;
    var local_1: f32;
    var local_2: f32;
    var local_3: f32;
    var local_4: f32;
    var local_5: f32;
    var local_6: f32;
    var local_7: f32;

    vs_v2_ = vec4<f32>(vs_v2_u);
    vs_r0_.w = 1f;
    vs_r1_ = (vec4<f32>(3f, 3f, 3f, 3f) * vs_v2_);
    vs_a0_ = vec4<i32>((floor((abs(vs_r1_) + vec4(0.5f))) * sign(vs_r1_)));
    vs_r1_ = (vs_v1_.yyyy * global.vs_uniforms_vec4_[(31i + vs_a0_.y)]);
    vs_r1_ = ((global.vs_uniforms_vec4_[(31i + vs_a0_.x)] * vs_v1_.xxxx) + vs_r1_);
    vs_r1_ = ((global.vs_uniforms_vec4_[(31i + vs_a0_.z)] * vs_v1_.zzzz) + vs_r1_);
    vs_r1_ = ((global.vs_uniforms_vec4_[(31i + vs_a0_.w)] * vs_v1_.wwww) + vs_r1_);
    vs_r0_.x = dot(vs_r1_, vs_v0_);
    vs_r1_.x = dot(vs_r1_.xyz, vs_v3_.xyz);
    vs_r2_ = (vs_v1_.yyyy * global.vs_uniforms_vec4_[(32i + vs_a0_.y)]);
    vs_r2_ = ((global.vs_uniforms_vec4_[(32i + vs_a0_.x)] * vs_v1_.xxxx) + vs_r2_);
    vs_r2_ = ((global.vs_uniforms_vec4_[(32i + vs_a0_.z)] * vs_v1_.zzzz) + vs_r2_);
    vs_r2_ = ((global.vs_uniforms_vec4_[(32i + vs_a0_.w)] * vs_v1_.wwww) + vs_r2_);
    vs_r0_.y = dot(vs_r2_, vs_v0_);
    vs_r1_.y = dot(vs_r2_.xyz, vs_v3_.xyz);
    vs_r2_ = (vs_v1_.yyyy * global.vs_uniforms_vec4_[(33i + vs_a0_.y)]);
    vs_r2_ = ((global.vs_uniforms_vec4_[(33i + vs_a0_.x)] * vs_v1_.xxxx) + vs_r2_);
    vs_r2_ = ((global.vs_uniforms_vec4_[(33i + vs_a0_.z)] * vs_v1_.zzzz) + vs_r2_);
    vs_r2_ = ((global.vs_uniforms_vec4_[(33i + vs_a0_.w)] * vs_v1_.wwww) + vs_r2_);
    vs_r0_.z = dot(vs_r2_, vs_v0_);
    vs_r1_.z = dot(vs_r2_.xyz, vs_v3_.xyz);
    let _e229 = normalize(vs_r1_.xyz);
    vs_r2_.x = _e229.x;
    vs_r2_.y = _e229.y;
    vs_r2_.z = _e229.z;
    gl_Position.x = dot(global.vs_uniforms_vec4_[2], vs_r0_);
    gl_Position.y = dot(global.vs_uniforms_vec4_[3], vs_r0_);
    gl_Position.z = dot(global.vs_uniforms_vec4_[4], vs_r0_);
    gl_Position.w = dot(global.vs_uniforms_vec4_[5], vs_r0_);
    let _e270 = (-(vs_r0_.xyz) + global.vs_uniforms_vec4_[21].xyz);
    vs_r1_.x = _e270.x;
    vs_r1_.y = _e270.y;
    vs_r1_.z = _e270.z;
    vs_r3_.x = dot(vs_r1_.xyz, vs_r2_.xyz);
    vs_r1_.x = dot(vs_r1_.xyz, vs_r1_.xyz);
    let _e298 = (-(vs_r0_.xyz) + global.vs_uniforms_vec4_[22].xyz);
    vs_r4_.x = _e298.x;
    vs_r4_.y = _e298.y;
    vs_r4_.z = _e298.z;
    vs_r3_.y = dot(vs_r4_.xyz, vs_r2_.xyz);
    vs_r1_.y = dot(vs_r4_.xyz, vs_r4_.xyz);
    let _e326 = (-(vs_r0_.xyz) + global.vs_uniforms_vec4_[23].xyz);
    vs_r4_.x = _e326.x;
    vs_r4_.y = _e326.y;
    vs_r4_.z = _e326.z;
    let _e342 = (-(vs_r0_.xyz) + global.vs_uniforms_vec4_[24].xyz);
    vs_r0_.x = _e342.x;
    vs_r0_.y = _e342.y;
    vs_r0_.w = _e342.z;
    vs_r0_.z = ((vs_r0_.z * global.vs_uniforms_vec4_[30].x) + global.vs_uniforms_vec4_[30].y);
    vs_r0_.z = max(vs_r0_.z, 0f);
    vs_r2_.w = pow(abs(vs_r0_.z), global.vs_uniforms_vec4_[30].z);
    vs_o3_v.x = min(vs_r2_.w, 1f);
    vs_r3_.z = dot(vs_r4_.xyz, vs_r2_.xyz);
    vs_r1_.z = dot(vs_r4_.xyz, vs_r4_.xyz);
    vs_r3_.w = dot(vs_r0_.xyw, vs_r2_.xyz);
    vs_r1_.w = dot(vs_r0_.xyw, vs_r0_.xyw);
    vs_r0_.x = clamp(dot(-(global.vs_uniforms_vec4_[12].xyz), vs_r2_.xyz), 0f, 1f);
    let _e430 = global.vs_uniforms_vec4_[10].xyz;
    vs_r2_.x = _e430.x;
    vs_r2_.y = _e430.y;
    vs_r2_.z = _e430.z;
    let _e448 = ((vs_r0_.xxx * vs_r2_.xyz) + global.vs_uniforms_vec4_[11].xyz);
    vs_r0_.x = _e448.x;
    vs_r0_.y = _e448.y;
    vs_r0_.z = _e448.z;
    if (vs_r1_.x == 0f) {
        local = FLT_MAX;
    } else {
        local = inverseSqrt(abs(vs_r1_.x));
    }
    vs_r2_.x = local;
    if (vs_r1_.y == 0f) {
        local_1 = FLT_MAX;
    } else {
        local_1 = inverseSqrt(abs(vs_r1_.y));
    }
    vs_r2_.y = local_1;
    if (vs_r1_.z == 0f) {
        local_2 = FLT_MAX;
    } else {
        local_2 = inverseSqrt(abs(vs_r1_.z));
    }
    vs_r2_.z = local_2;
    if (vs_r1_.w == 0f) {
        local_3 = FLT_MAX;
    } else {
        local_3 = inverseSqrt(abs(vs_r1_.w));
    }
    vs_r2_.w = local_3;
    vs_r3_ = (vs_r3_ * vs_r2_);
    vs_r2_ = (vs_r1_ * vs_r2_);
    vs_r2_ = (vs_r2_ * global.vs_uniforms_vec4_[26]);
    vs_r1_ = ((vs_r1_ * global.vs_uniforms_vec4_[27]) + vs_r2_);
    vs_r1_ = (vs_r1_ + global.vs_uniforms_vec4_[25]);
    vs_r2_ = max(vs_r3_, vec4<f32>(0f, 0f, 0f, 0f));
    if (vs_r1_.x == 0f) {
        local_4 = FLT_MAX;
    } else {
        local_4 = (1f / vs_r1_.x);
    }
    vs_r3_.x = local_4;
    if (vs_r1_.y == 0f) {
        local_5 = FLT_MAX;
    } else {
        local_5 = (1f / vs_r1_.y);
    }
    vs_r3_.y = local_5;
    if (vs_r1_.z == 0f) {
        local_6 = FLT_MAX;
    } else {
        local_6 = (1f / vs_r1_.z);
    }
    vs_r3_.z = local_6;
    if (vs_r1_.w == 0f) {
        local_7 = FLT_MAX;
    } else {
        local_7 = (1f / vs_r1_.w);
    }
    vs_r3_.w = local_7;
    vs_r1_ = (vs_r2_ * vs_r3_);
    let _e588 = ((global.vs_uniforms_vec4_[17].xyz * vs_r1_.xxx) + vs_r0_.xyz);
    vs_r0_.x = _e588.x;
    vs_r0_.y = _e588.y;
    vs_r0_.z = _e588.z;
    let _e606 = ((global.vs_uniforms_vec4_[18].xyz * vs_r1_.yyy) + vs_r0_.xyz);
    vs_r0_.x = _e606.x;
    vs_r0_.y = _e606.y;
    vs_r0_.z = _e606.z;
    let _e624 = ((global.vs_uniforms_vec4_[19].xyz * vs_r1_.zzz) + vs_r0_.xyz);
    vs_r0_.x = _e624.x;
    vs_r0_.y = _e624.y;
    vs_r0_.z = _e624.z;
    let _e647 = clamp(((global.vs_uniforms_vec4_[20].xyz * vs_r1_.www) + vs_r0_.xyz), vec3(0f), vec3(1f));
    vs_r0_.x = _e647.x;
    vs_r0_.y = _e647.y;
    vs_r0_.z = _e647.z;
    vs_r0_.w = 1f;
    vs_r1_ = global.vs_uniforms_vec4_[28];
    vs_o1_ = clamp(((vs_r1_ * vs_r0_) + global.vs_uniforms_vec4_[29]), vec4(0f), vec4(1f));
    let _e692 = ((vs_v4_.xyx * vec3<f32>(1f, 1f, 0f)) + vec3<f32>(0f, 0f, 1f));
    vs_r0_.x = _e692.x;
    vs_r0_.y = _e692.y;
    vs_r0_.z = _e692.z;
    vs_o2_.x = dot(global.vs_uniforms_vec4_[6].xyw, vs_r0_.xyz);
    vs_o2_.y = dot(global.vs_uniforms_vec4_[7].xyw, vs_r0_.xyz);
    return VertexOutput(vs_o1_, vs_o2_, vs_o3_v, gl_Position);
}
