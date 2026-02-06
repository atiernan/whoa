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
    @location(6) io_5_5_: vec4<f32>,
    @location(10) vs_o8_v: vec4<f32>,
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
    var vs_r5_: vec4<f32>;
    var vs_r6_: vec4<f32>;
    var vs_a0_: vec4<i32>;
    var vs_o1_: vec4<f32>;
    var vs_o2_: vec4<f32>;
    var vs_o3_: vec4<f32>;
    var vs_o4_: vec4<f32>;
    var vs_o5_: vec4<f32>;
    var io_5_4_: vec4<f32>;
    var io_5_5_: vec4<f32>;
    var vs_o8_v: vec4<f32>;
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
    vs_r2_ = (vs_v1_.yyyy * global.vs_uniforms_vec4_[(33i + vs_a0_.y)]);
    vs_r2_ = ((global.vs_uniforms_vec4_[(33i + vs_a0_.x)] * vs_v1_.xxxx) + vs_r2_);
    vs_r2_ = ((global.vs_uniforms_vec4_[(33i + vs_a0_.z)] * vs_v1_.zzzz) + vs_r2_);
    vs_r2_ = ((global.vs_uniforms_vec4_[(33i + vs_a0_.w)] * vs_v1_.wwww) + vs_r2_);
    vs_r1_.z = dot(vs_r2_, vs_v0_);
    vs_r0_.z = dot(vs_r2_.xyz, vs_v3_.xyz);
    let _e230 = normalize(vs_r0_.xyz);
    vs_r2_.x = _e230.x;
    vs_r2_.y = _e230.y;
    vs_r2_.z = _e230.z;
    vs_r1_.w = 1f;
    gl_Position.x = dot(global.vs_uniforms_vec4_[2], vs_r1_);
    gl_Position.y = dot(global.vs_uniforms_vec4_[3], vs_r1_);
    gl_Position.z = dot(global.vs_uniforms_vec4_[4], vs_r1_);
    gl_Position.w = dot(global.vs_uniforms_vec4_[5], vs_r1_);
    vs_r0_.w = 1f;
    vs_r2_.w = clamp(dot(-(global.vs_uniforms_vec4_[12].xyz), vs_r2_.xyz), 0f, 1f);
    let _e291 = global.vs_uniforms_vec4_[10].xyz;
    vs_r3_.x = _e291.x;
    vs_r3_.y = _e291.y;
    vs_r3_.z = _e291.z;
    let _e309 = ((vs_r2_.www * vs_r3_.xyz) + global.vs_uniforms_vec4_[11].xyz);
    vs_r3_.x = _e309.x;
    vs_r3_.y = _e309.y;
    vs_r3_.z = _e309.z;
    let _e325 = (-(vs_r1_.xyz) + global.vs_uniforms_vec4_[21].xyz);
    vs_r4_.x = _e325.x;
    vs_r4_.y = _e325.y;
    vs_r4_.z = _e325.z;
    vs_r5_.x = dot(vs_r4_.xyz, vs_r2_.xyz);
    vs_r4_.x = dot(vs_r4_.xyz, vs_r4_.xyz);
    let _e353 = (-(vs_r1_.xyz) + global.vs_uniforms_vec4_[22].xyz);
    vs_r6_.x = _e353.x;
    vs_r6_.y = _e353.y;
    vs_r6_.z = _e353.z;
    vs_r5_.y = dot(vs_r6_.xyz, vs_r2_.xyz);
    vs_r4_.y = dot(vs_r6_.xyz, vs_r6_.xyz);
    let _e381 = (-(vs_r1_.xyz) + global.vs_uniforms_vec4_[23].xyz);
    vs_r6_.x = _e381.x;
    vs_r6_.y = _e381.y;
    vs_r6_.z = _e381.z;
    vs_r5_.z = dot(vs_r6_.xyz, vs_r2_.xyz);
    let _e397 = vs_r2_.xyz;
    vs_o4_.x = _e397.x;
    vs_o4_.y = _e397.y;
    vs_o4_.z = _e397.z;
    vs_r4_.z = dot(vs_r6_.xyz, vs_r6_.xyz);
    if (vs_r4_.x == 0f) {
        local = FLT_MAX;
    } else {
        local = inverseSqrt(abs(vs_r4_.x));
    }
    vs_r2_.x = local;
    if (vs_r4_.y == 0f) {
        local_1 = FLT_MAX;
    } else {
        local_1 = inverseSqrt(abs(vs_r4_.y));
    }
    vs_r2_.y = local_1;
    if (vs_r4_.z == 0f) {
        local_2 = FLT_MAX;
    } else {
        local_2 = inverseSqrt(abs(vs_r4_.z));
    }
    vs_r2_.z = local_2;
    let _e449 = (vs_r5_.xyz * vs_r2_.xyz);
    vs_r5_.x = _e449.x;
    vs_r5_.y = _e449.y;
    vs_r5_.z = _e449.z;
    let _e462 = (vs_r4_.xyz * vs_r2_.xyz);
    vs_r2_.x = _e462.x;
    vs_r2_.y = _e462.y;
    vs_r2_.z = _e462.z;
    let _e477 = (vs_r2_.xyz * global.vs_uniforms_vec4_[26].xyz);
    vs_r2_.x = _e477.x;
    vs_r2_.y = _e477.y;
    vs_r2_.z = _e477.z;
    let _e495 = ((vs_r4_.xyz * global.vs_uniforms_vec4_[27].xyz) + vs_r2_.xyz);
    vs_r2_.x = _e495.x;
    vs_r2_.y = _e495.y;
    vs_r2_.z = _e495.z;
    let _e510 = (vs_r2_.xyz + global.vs_uniforms_vec4_[25].xyz);
    vs_r2_.x = _e510.x;
    vs_r2_.y = _e510.y;
    vs_r2_.z = _e510.z;
    let _e527 = max(vs_r5_.xyz, vec3<f32>(0f, 0f, 0f));
    vs_r4_.x = _e527.x;
    vs_r4_.y = _e527.y;
    vs_r4_.z = _e527.z;
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
    let _e573 = (vs_r4_.xyz * vs_r5_.xyz);
    vs_r2_.x = _e573.x;
    vs_r2_.y = _e573.y;
    vs_r2_.z = _e573.z;
    let _e591 = ((global.vs_uniforms_vec4_[17].xyz * vs_r2_.xxx) + vs_r3_.xyz);
    vs_r3_.x = _e591.x;
    vs_r3_.y = _e591.y;
    vs_r3_.z = _e591.z;
    let _e609 = ((global.vs_uniforms_vec4_[18].xyz * vs_r2_.yyy) + vs_r3_.xyz);
    vs_r2_.x = _e609.x;
    vs_r2_.y = _e609.y;
    vs_r2_.w = _e609.z;
    let _e632 = clamp(((global.vs_uniforms_vec4_[19].xyz * vs_r2_.zzz) + vs_r2_.xyw), vec3(0f), vec3(1f));
    vs_r0_.x = _e632.x;
    vs_r0_.y = _e632.y;
    vs_r0_.z = _e632.z;
    vs_r2_ = global.vs_uniforms_vec4_[28];
    vs_o1_ = clamp(((vs_r2_ * vs_r0_) + global.vs_uniforms_vec4_[29]), vec4(0f), vec4(1f));
    vs_r0_.x = ((vs_r1_.z * global.vs_uniforms_vec4_[30].x) + global.vs_uniforms_vec4_[30].y);
    vs_r0_.x = max(vs_r0_.x, 0f);
    vs_r2_.x = pow(abs(vs_r0_.x), global.vs_uniforms_vec4_[30].z);
    vs_o8_v.x = min(vs_r2_.x, 1f);
    let _e711 = ((vs_v4_.xyx * vec3<f32>(1f, 1f, 0f)) + vec3<f32>(0f, 0f, 1f));
    vs_r0_.x = _e711.x;
    vs_r0_.y = _e711.y;
    vs_r0_.z = _e711.z;
    vs_o2_.x = dot(global.vs_uniforms_vec4_[6].xyw, vs_r0_.xyz);
    vs_o2_.y = dot(global.vs_uniforms_vec4_[7].xyw, vs_r0_.xyz);
    vs_o5_.x = dot(vs_r1_, global.vs_uniforms_vec4_[224]);
    vs_o5_.y = dot(vs_r1_, global.vs_uniforms_vec4_[225]);
    vs_o5_.z = dot(vs_r1_, global.vs_uniforms_vec4_[226]);
    io_5_4_.x = dot(vs_r1_, global.vs_uniforms_vec4_[227]);
    io_5_4_.y = dot(vs_r1_, global.vs_uniforms_vec4_[228]);
    io_5_4_.z = dot(vs_r1_, global.vs_uniforms_vec4_[229]);
    io_5_5_.x = dot(vs_r1_, global.vs_uniforms_vec4_[230]);
    io_5_5_.y = dot(vs_r1_, global.vs_uniforms_vec4_[231]);
    io_5_5_.z = dot(vs_r1_, global.vs_uniforms_vec4_[232]);
    vs_o5_.w = dot(vs_r1_, global.vs_uniforms_vec4_[233]);
    io_5_4_.w = dot(vs_r1_, global.vs_uniforms_vec4_[234]);
    io_5_5_.w = dot(vs_r1_, global.vs_uniforms_vec4_[235]);
    let _e809 = vs_r1_.xyz;
    vs_o3_.x = _e809.x;
    vs_o3_.y = _e809.y;
    vs_o3_.z = _e809.z;
    return VertexOutput(vs_o1_, vs_o2_, vs_o3_, vs_o4_, vs_o5_, io_5_4_, io_5_5_, vs_o8_v, gl_Position);
}
