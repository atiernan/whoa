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
    var vs_r6_: vec4<f32>;
    var vs_r7_: vec4<f32>;
    var vs_o1_: vec4<f32>;
    var vs_o2_: vec4<f32>;
    var vs_o3_: vec4<f32>;
    var vs_o4_v: vec4<f32>;
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
    let _e78 = (-(vs_r0_.xyz) + global.vs_uniforms_vec4_[21].xyz);
    vs_r1_.x = _e78.x;
    vs_r1_.y = _e78.y;
    vs_r1_.z = _e78.z;
    vs_r2_.x = dot(vs_r1_.xyz, vs_r1_.xyz);
    if (vs_r2_.x == 0f) {
        local = FLT_MAX;
    } else {
        local = inverseSqrt(abs(vs_r2_.x));
    }
    vs_r3_.x = local;
    let _e111 = (-(vs_r0_.xyz) + global.vs_uniforms_vec4_[22].xyz);
    vs_r4_.x = _e111.x;
    vs_r4_.y = _e111.y;
    vs_r4_.z = _e111.z;
    vs_r2_.y = dot(vs_r4_.xyz, vs_r4_.xyz);
    if (vs_r2_.y == 0f) {
        local_1 = FLT_MAX;
    } else {
        local_1 = inverseSqrt(abs(vs_r2_.y));
    }
    vs_r3_.y = local_1;
    let _e144 = (-(vs_r0_.xyz) + global.vs_uniforms_vec4_[23].xyz);
    vs_r5_.x = _e144.x;
    vs_r5_.y = _e144.y;
    vs_r5_.z = _e144.z;
    let _e160 = (-(vs_r0_.xyz) + global.vs_uniforms_vec4_[24].xyz);
    vs_r0_.x = _e160.x;
    vs_r0_.y = _e160.y;
    vs_r0_.w = _e160.z;
    vs_r0_.z = ((vs_r0_.z * global.vs_uniforms_vec4_[30].x) + global.vs_uniforms_vec4_[30].y);
    vs_r0_.z = max(vs_r0_.z, 0f);
    vs_r1_.w = pow(abs(vs_r0_.z), global.vs_uniforms_vec4_[30].z);
    vs_o4_v.x = min(vs_r1_.w, 1f);
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
    let _e333 = normalize(vs_r2_.xyz);
    vs_r7_.x = _e333.x;
    vs_r7_.y = _e333.y;
    vs_r7_.z = _e333.z;
    vs_r1_.x = dot(vs_r1_.xyz, vs_r7_.xyz);
    vs_r1_.y = dot(vs_r4_.xyz, vs_r7_.xyz);
    vs_r1_.z = dot(vs_r5_.xyz, vs_r7_.xyz);
    vs_r1_.w = dot(vs_r0_.xyw, vs_r7_.xyz);
    vs_r0_.x = clamp(dot(-(global.vs_uniforms_vec4_[12].xyz), vs_r7_.xyz), 0f, 1f);
    let _e381 = global.vs_uniforms_vec4_[10].xyz;
    vs_r2_.x = _e381.x;
    vs_r2_.y = _e381.y;
    vs_r2_.z = _e381.z;
    let _e399 = ((vs_r0_.xxx * vs_r2_.xyz) + global.vs_uniforms_vec4_[11].xyz);
    vs_r0_.x = _e399.x;
    vs_r0_.y = _e399.y;
    vs_r0_.z = _e399.z;
    vs_r1_ = (vs_r3_ * vs_r1_);
    vs_r1_ = max(vs_r1_, vec4<f32>(0f, 0f, 0f, 0f));
    vs_r1_ = (vs_r6_ * vs_r1_);
    let _e431 = ((global.vs_uniforms_vec4_[17].xyz * vs_r1_.xxx) + vs_r0_.xyz);
    vs_r0_.x = _e431.x;
    vs_r0_.y = _e431.y;
    vs_r0_.z = _e431.z;
    let _e449 = ((global.vs_uniforms_vec4_[18].xyz * vs_r1_.yyy) + vs_r0_.xyz);
    vs_r0_.x = _e449.x;
    vs_r0_.y = _e449.y;
    vs_r0_.z = _e449.z;
    let _e467 = ((global.vs_uniforms_vec4_[19].xyz * vs_r1_.zzz) + vs_r0_.xyz);
    vs_r0_.x = _e467.x;
    vs_r0_.y = _e467.y;
    vs_r0_.z = _e467.z;
    let _e490 = clamp(((global.vs_uniforms_vec4_[20].xyz * vs_r1_.www) + vs_r0_.xyz), vec3(0f), vec3(1f));
    vs_r0_.x = _e490.x;
    vs_r0_.y = _e490.y;
    vs_r0_.z = _e490.z;
    vs_r0_.w = 1f;
    vs_r1_ = global.vs_uniforms_vec4_[28];
    vs_o1_ = clamp(((vs_r1_ * vs_r0_) + global.vs_uniforms_vec4_[29]), vec4(0f), vec4(1f));
    let _e535 = ((vs_v2_.xyx * vec3<f32>(1f, 1f, 0f)) + vec3<f32>(0f, 0f, 1f));
    vs_r0_.x = _e535.x;
    vs_r0_.y = _e535.y;
    vs_r0_.z = _e535.z;
    vs_o2_.x = dot(global.vs_uniforms_vec4_[6].xyw, vs_r0_.xyz);
    vs_o2_.y = dot(global.vs_uniforms_vec4_[7].xyw, vs_r0_.xyz);
    let _e575 = ((vs_v3_.xyx * vec3<f32>(1f, 1f, 0f)) + vec3<f32>(0f, 0f, 1f));
    vs_r0_.x = _e575.x;
    vs_r0_.y = _e575.y;
    vs_r0_.z = _e575.z;
    vs_o3_.x = dot(global.vs_uniforms_vec4_[8].xyw, vs_r0_.xyz);
    vs_o3_.y = dot(global.vs_uniforms_vec4_[9].xyw, vs_r0_.xyz);
    return VertexOutput(vs_o1_, vs_o2_, vs_o3_, vs_o4_v, gl_Position);
}
