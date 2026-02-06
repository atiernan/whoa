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

    vs_v2_ = vec4<f32>(vs_v2_u);
    vs_r0_ = (vec4<f32>(3f, 3f, 3f, 3f) * vs_v2_);
    vs_a0_ = vec4<i32>((floor((abs(vs_r0_) + vec4(0.5f))) * sign(vs_r0_)));
    vs_r0_ = (vs_v1_.yyyy * global.vs_uniforms_vec4_[(31i + vs_a0_.y)]);
    vs_r0_ = ((global.vs_uniforms_vec4_[(31i + vs_a0_.x)] * vs_v1_.xxxx) + vs_r0_);
    vs_r0_ = ((global.vs_uniforms_vec4_[(31i + vs_a0_.z)] * vs_v1_.zzzz) + vs_r0_);
    vs_r0_ = ((global.vs_uniforms_vec4_[(31i + vs_a0_.w)] * vs_v1_.wwww) + vs_r0_);
    vs_r1_.x = dot(vs_r0_, vs_v0_);
    vs_r0_.x = dot(vs_r0_.xyz, vs_v3_.xyz);
    vs_r2_ = (vs_v1_.yyyy * global.vs_uniforms_vec4_[(32i + vs_a0_.y)]);
    vs_r2_ = ((global.vs_uniforms_vec4_[(32i + vs_a0_.x)] * vs_v1_.xxxx) + vs_r2_);
    vs_r2_ = ((global.vs_uniforms_vec4_[(32i + vs_a0_.z)] * vs_v1_.zzzz) + vs_r2_);
    vs_r2_ = ((global.vs_uniforms_vec4_[(32i + vs_a0_.w)] * vs_v1_.wwww) + vs_r2_);
    vs_r1_.y = dot(vs_r2_, vs_v0_);
    vs_r0_.y = dot(vs_r2_.xyz, vs_v3_.xyz);
    vs_r1_.w = 1f;
    vs_r2_ = (vs_v1_.yyyy * global.vs_uniforms_vec4_[(33i + vs_a0_.y)]);
    vs_r2_ = ((global.vs_uniforms_vec4_[(33i + vs_a0_.x)] * vs_v1_.xxxx) + vs_r2_);
    vs_r2_ = ((global.vs_uniforms_vec4_[(33i + vs_a0_.z)] * vs_v1_.zzzz) + vs_r2_);
    vs_r2_ = ((global.vs_uniforms_vec4_[(33i + vs_a0_.w)] * vs_v1_.wwww) + vs_r2_);
    vs_r1_.z = dot(vs_r2_, vs_v0_);
    vs_r0_.z = dot(vs_r2_.xyz, vs_v3_.xyz);
    let _e229 = normalize(vs_r0_.xyz);
    vs_r2_.x = _e229.x;
    vs_r2_.y = _e229.y;
    vs_r2_.z = _e229.z;
    gl_Position.x = dot(global.vs_uniforms_vec4_[2], vs_r1_);
    gl_Position.y = dot(global.vs_uniforms_vec4_[3], vs_r1_);
    gl_Position.z = dot(global.vs_uniforms_vec4_[4], vs_r1_);
    gl_Position.w = dot(global.vs_uniforms_vec4_[5], vs_r1_);
    let _e270 = (-(vs_r1_.xyz) + global.vs_uniforms_vec4_[21].xyz);
    vs_r0_.x = _e270.x;
    vs_r0_.y = _e270.y;
    vs_r0_.z = _e270.z;
    vs_r3_.x = dot(vs_r0_.xyz, vs_r2_.xyz);
    vs_r0_.x = dot(vs_r0_.xyz, vs_r0_.xyz);
    let _e298 = (-(vs_r1_.xyz) + global.vs_uniforms_vec4_[22].xyz);
    vs_r4_.x = _e298.x;
    vs_r4_.y = _e298.y;
    vs_r4_.z = _e298.z;
    let _e314 = (-(vs_r1_.xyz) + global.vs_uniforms_vec4_[23].xyz);
    vs_r1_.x = _e314.x;
    vs_r1_.y = _e314.y;
    vs_r1_.w = _e314.z;
    vs_r0_.w = ((vs_r1_.z * global.vs_uniforms_vec4_[30].x) + global.vs_uniforms_vec4_[30].y);
    vs_r0_.w = max(vs_r0_.w, 0f);
    vs_r1_.z = pow(abs(vs_r0_.w), global.vs_uniforms_vec4_[30].z);
    vs_o3_v.x = min(vs_r1_.z, 1f);
    vs_r3_.y = dot(vs_r4_.xyz, vs_r2_.xyz);
    vs_r0_.y = dot(vs_r4_.xyz, vs_r4_.xyz);
    vs_r3_.z = dot(vs_r1_.xyw, vs_r2_.xyz);
    vs_r0_.z = dot(vs_r1_.xyw, vs_r1_.xyw);
    vs_r0_.w = clamp(dot(-(global.vs_uniforms_vec4_[12].xyz), vs_r2_.xyz), 0f, 1f);
    let _e402 = global.vs_uniforms_vec4_[10].xyz;
    vs_r1_.x = _e402.x;
    vs_r1_.y = _e402.y;
    vs_r1_.z = _e402.z;
    let _e420 = ((vs_r0_.www * vs_r1_.xyz) + global.vs_uniforms_vec4_[11].xyz);
    vs_r1_.x = _e420.x;
    vs_r1_.y = _e420.y;
    vs_r1_.z = _e420.z;
    if (vs_r0_.x == 0f) {
        local = FLT_MAX;
    } else {
        local = inverseSqrt(abs(vs_r0_.x));
    }
    vs_r2_.x = local;
    if (vs_r0_.y == 0f) {
        local_1 = FLT_MAX;
    } else {
        local_1 = inverseSqrt(abs(vs_r0_.y));
    }
    vs_r2_.y = local_1;
    if (vs_r0_.z == 0f) {
        local_2 = FLT_MAX;
    } else {
        local_2 = inverseSqrt(abs(vs_r0_.z));
    }
    vs_r2_.z = local_2;
    let _e466 = (vs_r3_.xyz * vs_r2_.xyz);
    vs_r3_.x = _e466.x;
    vs_r3_.y = _e466.y;
    vs_r3_.z = _e466.z;
    let _e479 = (vs_r0_.xyz * vs_r2_.xyz);
    vs_r2_.x = _e479.x;
    vs_r2_.y = _e479.y;
    vs_r2_.z = _e479.z;
    let _e494 = (vs_r2_.xyz * global.vs_uniforms_vec4_[26].xyz);
    vs_r2_.x = _e494.x;
    vs_r2_.y = _e494.y;
    vs_r2_.z = _e494.z;
    let _e512 = ((vs_r0_.xyz * global.vs_uniforms_vec4_[27].xyz) + vs_r2_.xyz);
    vs_r0_.x = _e512.x;
    vs_r0_.y = _e512.y;
    vs_r0_.z = _e512.z;
    let _e527 = (vs_r0_.xyz + global.vs_uniforms_vec4_[25].xyz);
    vs_r0_.x = _e527.x;
    vs_r0_.y = _e527.y;
    vs_r0_.z = _e527.z;
    let _e544 = max(vs_r3_.xyz, vec3<f32>(0f, 0f, 0f));
    vs_r2_.x = _e544.x;
    vs_r2_.y = _e544.y;
    vs_r2_.z = _e544.z;
    if (vs_r0_.x == 0f) {
        local_3 = FLT_MAX;
    } else {
        local_3 = (1f / vs_r0_.x);
    }
    vs_r3_.x = local_3;
    if (vs_r0_.y == 0f) {
        local_4 = FLT_MAX;
    } else {
        local_4 = (1f / vs_r0_.y);
    }
    vs_r3_.y = local_4;
    if (vs_r0_.z == 0f) {
        local_5 = FLT_MAX;
    } else {
        local_5 = (1f / vs_r0_.z);
    }
    vs_r3_.z = local_5;
    let _e590 = (vs_r2_.xyz * vs_r3_.xyz);
    vs_r0_.x = _e590.x;
    vs_r0_.y = _e590.y;
    vs_r0_.z = _e590.z;
    let _e608 = ((global.vs_uniforms_vec4_[17].xyz * vs_r0_.xxx) + vs_r1_.xyz);
    vs_r1_.x = _e608.x;
    vs_r1_.y = _e608.y;
    vs_r1_.z = _e608.z;
    let _e626 = ((global.vs_uniforms_vec4_[18].xyz * vs_r0_.yyy) + vs_r1_.xyz);
    vs_r0_.x = _e626.x;
    vs_r0_.y = _e626.y;
    vs_r0_.w = _e626.z;
    let _e649 = clamp(((global.vs_uniforms_vec4_[19].xyz * vs_r0_.zzz) + vs_r0_.xyw), vec3(0f), vec3(1f));
    vs_r0_.x = _e649.x;
    vs_r0_.y = _e649.y;
    vs_r0_.z = _e649.z;
    vs_r0_.w = 1f;
    vs_r1_ = global.vs_uniforms_vec4_[28];
    vs_o1_ = clamp(((vs_r1_ * vs_r0_) + global.vs_uniforms_vec4_[29]), vec4(0f), vec4(1f));
    let _e694 = ((vs_v4_.xyx * vec3<f32>(1f, 1f, 0f)) + vec3<f32>(0f, 0f, 1f));
    vs_r0_.x = _e694.x;
    vs_r0_.y = _e694.y;
    vs_r0_.z = _e694.z;
    vs_o2_.x = dot(global.vs_uniforms_vec4_[6].xyw, vs_r0_.xyz);
    vs_o2_.y = dot(global.vs_uniforms_vec4_[7].xyw, vs_r0_.xyz);
    return VertexOutput(vs_o1_, vs_o2_, vs_o3_v, gl_Position);
}
