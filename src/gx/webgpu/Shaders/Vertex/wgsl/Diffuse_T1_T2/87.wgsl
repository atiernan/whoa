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
    @location(7) io_5_6_: vec4<f32>,
    @location(10) vs_o9_v: vec4<f32>,
    @builtin(position) gl_Position: vec4<f32>,
}

const FLT_MAX: f32 = 100000000000000000000000000000000000000f;

@group(0) @binding(0) var<uniform> global: UniformBlock_0_;

@vertex fn main(@location(0) vs_v0_: vec4<f32>, @location(1) vs_v1_: vec4<f32>, @location(2) @interpolate(flat) vs_v2_u: vec4<u32>, @location(3) vs_v3_: vec4<f32>, @location(6) vs_v4_: vec4<f32>, @location(7) vs_v5_: vec4<f32>) -> VertexOutput {
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
    var io_5_6_: vec4<f32>;
    var vs_o9_v: vec4<f32>;
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
    let _e232 = normalize(vs_r0_.xyz);
    vs_r2_.x = _e232.x;
    vs_r2_.y = _e232.y;
    vs_r2_.z = _e232.z;
    vs_r1_.w = 1f;
    gl_Position.x = dot(global.vs_uniforms_vec4_[2], vs_r1_);
    gl_Position.y = dot(global.vs_uniforms_vec4_[3], vs_r1_);
    gl_Position.z = dot(global.vs_uniforms_vec4_[4], vs_r1_);
    gl_Position.w = dot(global.vs_uniforms_vec4_[5], vs_r1_);
    vs_r0_.w = 1f;
    vs_r2_.w = clamp(dot(-(global.vs_uniforms_vec4_[12].xyz), vs_r2_.xyz), 0f, 1f);
    let _e293 = global.vs_uniforms_vec4_[10].xyz;
    vs_r3_.x = _e293.x;
    vs_r3_.y = _e293.y;
    vs_r3_.z = _e293.z;
    let _e311 = ((vs_r2_.www * vs_r3_.xyz) + global.vs_uniforms_vec4_[11].xyz);
    vs_r3_.x = _e311.x;
    vs_r3_.y = _e311.y;
    vs_r3_.z = _e311.z;
    let _e327 = (-(vs_r1_.xyz) + global.vs_uniforms_vec4_[21].xyz);
    vs_r4_.x = _e327.x;
    vs_r4_.y = _e327.y;
    vs_r4_.z = _e327.z;
    vs_r5_.x = dot(vs_r4_.xyz, vs_r2_.xyz);
    vs_r4_.x = dot(vs_r4_.xyz, vs_r4_.xyz);
    let _e355 = (-(vs_r1_.xyz) + global.vs_uniforms_vec4_[22].xyz);
    vs_r6_.x = _e355.x;
    vs_r6_.y = _e355.y;
    vs_r6_.z = _e355.z;
    vs_r5_.y = dot(vs_r6_.xyz, vs_r2_.xyz);
    vs_r4_.y = dot(vs_r6_.xyz, vs_r6_.xyz);
    let _e383 = (-(vs_r1_.xyz) + global.vs_uniforms_vec4_[23].xyz);
    vs_r6_.x = _e383.x;
    vs_r6_.y = _e383.y;
    vs_r6_.z = _e383.z;
    vs_r5_.z = dot(vs_r6_.xyz, vs_r2_.xyz);
    let _e399 = vs_r2_.xyz;
    vs_o5_.x = _e399.x;
    vs_o5_.y = _e399.y;
    vs_o5_.z = _e399.z;
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
    let _e451 = (vs_r5_.xyz * vs_r2_.xyz);
    vs_r5_.x = _e451.x;
    vs_r5_.y = _e451.y;
    vs_r5_.z = _e451.z;
    let _e464 = (vs_r4_.xyz * vs_r2_.xyz);
    vs_r2_.x = _e464.x;
    vs_r2_.y = _e464.y;
    vs_r2_.z = _e464.z;
    let _e479 = (vs_r2_.xyz * global.vs_uniforms_vec4_[26].xyz);
    vs_r2_.x = _e479.x;
    vs_r2_.y = _e479.y;
    vs_r2_.z = _e479.z;
    let _e497 = ((vs_r4_.xyz * global.vs_uniforms_vec4_[27].xyz) + vs_r2_.xyz);
    vs_r2_.x = _e497.x;
    vs_r2_.y = _e497.y;
    vs_r2_.z = _e497.z;
    let _e512 = (vs_r2_.xyz + global.vs_uniforms_vec4_[25].xyz);
    vs_r2_.x = _e512.x;
    vs_r2_.y = _e512.y;
    vs_r2_.z = _e512.z;
    let _e529 = max(vs_r5_.xyz, vec3<f32>(0f, 0f, 0f));
    vs_r4_.x = _e529.x;
    vs_r4_.y = _e529.y;
    vs_r4_.z = _e529.z;
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
    let _e575 = (vs_r4_.xyz * vs_r5_.xyz);
    vs_r2_.x = _e575.x;
    vs_r2_.y = _e575.y;
    vs_r2_.z = _e575.z;
    let _e593 = ((global.vs_uniforms_vec4_[17].xyz * vs_r2_.xxx) + vs_r3_.xyz);
    vs_r3_.x = _e593.x;
    vs_r3_.y = _e593.y;
    vs_r3_.z = _e593.z;
    let _e611 = ((global.vs_uniforms_vec4_[18].xyz * vs_r2_.yyy) + vs_r3_.xyz);
    vs_r2_.x = _e611.x;
    vs_r2_.y = _e611.y;
    vs_r2_.w = _e611.z;
    let _e634 = clamp(((global.vs_uniforms_vec4_[19].xyz * vs_r2_.zzz) + vs_r2_.xyw), vec3(0f), vec3(1f));
    vs_r0_.x = _e634.x;
    vs_r0_.y = _e634.y;
    vs_r0_.z = _e634.z;
    vs_r2_ = global.vs_uniforms_vec4_[28];
    vs_o1_ = clamp(((vs_r2_ * vs_r0_) + global.vs_uniforms_vec4_[29]), vec4(0f), vec4(1f));
    vs_r0_.x = ((vs_r1_.z * global.vs_uniforms_vec4_[30].x) + global.vs_uniforms_vec4_[30].y);
    vs_r0_.x = max(vs_r0_.x, 0f);
    vs_r2_.x = pow(abs(vs_r0_.x), global.vs_uniforms_vec4_[30].z);
    vs_o9_v.x = min(vs_r2_.x, 1f);
    let _e713 = ((vs_v4_.xyx * vec3<f32>(1f, 1f, 0f)) + vec3<f32>(0f, 0f, 1f));
    vs_r0_.x = _e713.x;
    vs_r0_.y = _e713.y;
    vs_r0_.z = _e713.z;
    vs_o2_.x = dot(global.vs_uniforms_vec4_[6].xyw, vs_r0_.xyz);
    vs_o2_.y = dot(global.vs_uniforms_vec4_[7].xyw, vs_r0_.xyz);
    let _e753 = ((vs_v5_.xyx * vec3<f32>(1f, 1f, 0f)) + vec3<f32>(0f, 0f, 1f));
    vs_r0_.x = _e753.x;
    vs_r0_.y = _e753.y;
    vs_r0_.z = _e753.z;
    vs_o3_.x = dot(global.vs_uniforms_vec4_[8].xyw, vs_r0_.xyz);
    vs_o3_.y = dot(global.vs_uniforms_vec4_[9].xyw, vs_r0_.xyz);
    io_5_4_.x = dot(vs_r1_, global.vs_uniforms_vec4_[224]);
    io_5_4_.y = dot(vs_r1_, global.vs_uniforms_vec4_[225]);
    io_5_4_.z = dot(vs_r1_, global.vs_uniforms_vec4_[226]);
    io_5_5_.x = dot(vs_r1_, global.vs_uniforms_vec4_[227]);
    io_5_5_.y = dot(vs_r1_, global.vs_uniforms_vec4_[228]);
    io_5_5_.z = dot(vs_r1_, global.vs_uniforms_vec4_[229]);
    io_5_6_.x = dot(vs_r1_, global.vs_uniforms_vec4_[230]);
    io_5_6_.y = dot(vs_r1_, global.vs_uniforms_vec4_[231]);
    io_5_6_.z = dot(vs_r1_, global.vs_uniforms_vec4_[232]);
    io_5_4_.w = dot(vs_r1_, global.vs_uniforms_vec4_[233]);
    io_5_5_.w = dot(vs_r1_, global.vs_uniforms_vec4_[234]);
    io_5_6_.w = dot(vs_r1_, global.vs_uniforms_vec4_[235]);
    let _e851 = vs_r1_.xyz;
    vs_o4_.x = _e851.x;
    vs_o4_.y = _e851.y;
    vs_o4_.z = _e851.z;
    return VertexOutput(vs_o1_, vs_o2_, vs_o3_, vs_o4_, vs_o5_, io_5_4_, io_5_5_, io_5_6_, vs_o9_v, gl_Position);
}
