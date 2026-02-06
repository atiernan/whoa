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

@vertex fn main(@location(0) vs_v0_: vec4<f32>, @location(1) vs_v1_: vec4<f32>, @location(2) @interpolate(flat) vs_v2_u: vec4<u32>, @location(3) vs_v3_: vec4<f32>, @location(6) vs_v4_: vec4<f32>) -> VertexOutput {
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

    var vs_v2_: vec4<f32>;
    var local: f32;
    var local_1: f32;
    var local_2: f32;
    var local_3: f32;
    var local_4: f32;
    var local_5: f32;
    var local_6: f32;
    var local_7: f32;
    var local_8: f32;

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
    let _e227 = normalize(vs_r0_.xyz);
    vs_r2_.x = _e227.x;
    vs_r2_.y = _e227.y;
    vs_r2_.z = _e227.z;
    vs_r1_.w = 1f;
    gl_Position.x = dot(global.vs_uniforms_vec4_[2], vs_r1_);
    gl_Position.y = dot(global.vs_uniforms_vec4_[3], vs_r1_);
    gl_Position.z = dot(global.vs_uniforms_vec4_[4], vs_r1_);
    gl_Position.w = dot(global.vs_uniforms_vec4_[5], vs_r1_);
    let _e274 = (-(vs_r1_.xyz) + global.vs_uniforms_vec4_[21].xyz);
    vs_r0_.x = _e274.x;
    vs_r0_.y = _e274.y;
    vs_r0_.z = _e274.z;
    vs_r3_.x = dot(vs_r0_.xyz, vs_r2_.xyz);
    vs_r0_.x = dot(vs_r0_.xyz, vs_r0_.xyz);
    let _e302 = (-(vs_r1_.xyz) + global.vs_uniforms_vec4_[22].xyz);
    vs_r4_.x = _e302.x;
    vs_r4_.y = _e302.y;
    vs_r4_.z = _e302.z;
    vs_r3_.y = dot(vs_r4_.xyz, vs_r2_.xyz);
    vs_r0_.y = dot(vs_r4_.xyz, vs_r4_.xyz);
    let _e330 = (-(vs_r1_.xyz) + global.vs_uniforms_vec4_[23].xyz);
    vs_r4_.x = _e330.x;
    vs_r4_.y = _e330.y;
    vs_r4_.z = _e330.z;
    vs_r3_.z = dot(vs_r4_.xyz, vs_r2_.xyz);
    vs_r0_.z = dot(vs_r4_.xyz, vs_r4_.xyz);
    let _e358 = (-(vs_r1_.xyz) + global.vs_uniforms_vec4_[24].xyz);
    vs_r4_.x = _e358.x;
    vs_r4_.y = _e358.y;
    vs_r4_.z = _e358.z;
    vs_r3_.w = dot(vs_r4_.xyz, vs_r2_.xyz);
    vs_r0_.w = dot(vs_r4_.xyz, vs_r4_.xyz);
    if (vs_r0_.x == 0f) {
        local = FLT_MAX;
    } else {
        local = inverseSqrt(abs(vs_r0_.x));
    }
    vs_r4_.x = local;
    if (vs_r0_.y == 0f) {
        local_1 = FLT_MAX;
    } else {
        local_1 = inverseSqrt(abs(vs_r0_.y));
    }
    vs_r4_.y = local_1;
    if (vs_r0_.z == 0f) {
        local_2 = FLT_MAX;
    } else {
        local_2 = inverseSqrt(abs(vs_r0_.z));
    }
    vs_r4_.z = local_2;
    if (vs_r0_.w == 0f) {
        local_3 = FLT_MAX;
    } else {
        local_3 = inverseSqrt(abs(vs_r0_.w));
    }
    vs_r4_.w = local_3;
    vs_r3_ = (vs_r3_ * vs_r4_);
    vs_r4_ = (vs_r0_ * vs_r4_);
    vs_r4_ = (vs_r4_ * global.vs_uniforms_vec4_[26]);
    vs_r0_ = ((vs_r0_ * global.vs_uniforms_vec4_[27]) + vs_r4_);
    vs_r0_ = (vs_r0_ + global.vs_uniforms_vec4_[25]);
    vs_r3_ = max(vs_r3_, vec4<f32>(0f, 0f, 0f, 0f));
    if (vs_r0_.x == 0f) {
        local_4 = FLT_MAX;
    } else {
        local_4 = (1f / vs_r0_.x);
    }
    vs_r4_.x = local_4;
    if (vs_r0_.y == 0f) {
        local_5 = FLT_MAX;
    } else {
        local_5 = (1f / vs_r0_.y);
    }
    vs_r4_.y = local_5;
    if (vs_r0_.z == 0f) {
        local_6 = FLT_MAX;
    } else {
        local_6 = (1f / vs_r0_.z);
    }
    vs_r4_.z = local_6;
    if (vs_r0_.w == 0f) {
        local_7 = FLT_MAX;
    } else {
        local_7 = (1f / vs_r0_.w);
    }
    vs_r4_.w = local_7;
    vs_r0_ = (vs_r3_ * vs_r4_);
    vs_r2_.w = clamp(dot(-(global.vs_uniforms_vec4_[12].xyz), vs_r2_.xyz), 0f, 1f);
    let _e516 = global.vs_uniforms_vec4_[10].xyz;
    vs_r3_.x = _e516.x;
    vs_r3_.y = _e516.y;
    vs_r3_.z = _e516.z;
    let _e534 = ((vs_r2_.www * vs_r3_.xyz) + global.vs_uniforms_vec4_[11].xyz);
    vs_r3_.x = _e534.x;
    vs_r3_.y = _e534.y;
    vs_r3_.z = _e534.z;
    let _e552 = ((global.vs_uniforms_vec4_[17].xyz * vs_r0_.xxx) + vs_r3_.xyz);
    vs_r3_.x = _e552.x;
    vs_r3_.y = _e552.y;
    vs_r3_.z = _e552.z;
    let _e570 = ((global.vs_uniforms_vec4_[18].xyz * vs_r0_.yyy) + vs_r3_.xyz);
    vs_r3_.x = _e570.x;
    vs_r3_.y = _e570.y;
    vs_r3_.z = _e570.z;
    let _e588 = ((global.vs_uniforms_vec4_[19].xyz * vs_r0_.zzz) + vs_r3_.xyz);
    vs_r0_.x = _e588.x;
    vs_r0_.y = _e588.y;
    vs_r0_.z = _e588.z;
    let _e611 = clamp(((global.vs_uniforms_vec4_[20].xyz * vs_r0_.www) + vs_r0_.xyz), vec3(0f), vec3(1f));
    vs_r0_.x = _e611.x;
    vs_r0_.y = _e611.y;
    vs_r0_.z = _e611.z;
    vs_r0_.w = 1f;
    vs_r3_ = global.vs_uniforms_vec4_[28];
    vs_o1_ = clamp(((vs_r3_ * vs_r0_) + global.vs_uniforms_vec4_[29]), vec4(0f), vec4(1f));
    vs_r0_.x = ((vs_r1_.z * global.vs_uniforms_vec4_[30].x) + global.vs_uniforms_vec4_[30].y);
    vs_r0_.x = max(vs_r0_.x, 0f);
    vs_r2_.w = pow(abs(vs_r0_.x), global.vs_uniforms_vec4_[30].z);
    vs_o7_v.x = min(vs_r2_.w, 1f);
    let _e696 = ((vs_v4_.xyx * vec3<f32>(1f, 1f, 0f)) + vec3<f32>(0f, 0f, 1f));
    vs_r0_.x = _e696.x;
    vs_r0_.y = _e696.y;
    vs_r0_.z = _e696.z;
    vs_o2_.x = dot(global.vs_uniforms_vec4_[6].xyw, vs_r0_.xyz);
    vs_o2_.y = dot(global.vs_uniforms_vec4_[7].xyw, vs_r0_.xyz);
    let _e723 = normalize(vs_r1_.xyz);
    vs_r0_.x = _e723.x;
    vs_r0_.y = _e723.y;
    vs_r0_.z = _e723.z;
    vs_r0_.w = dot(-(vs_r0_.xyz), vs_r2_.xyz);
    vs_r0_.w = (vs_r0_.w + vs_r0_.w);
    let _e754 = ((vs_r0_.www * -(vs_r2_.xyz)) + -(vs_r0_.xyz));
    vs_r0_.x = _e754.x;
    vs_r0_.y = _e754.y;
    vs_r0_.z = _e754.z;
    let _e764 = vs_r2_.xyz;
    vs_o5_.x = _e764.x;
    vs_o5_.y = _e764.y;
    vs_o5_.z = _e764.z;
    vs_r0_.w = (vs_r0_.z + 1f);
    vs_r0_.z = dot(vs_r0_.xyw, vs_r0_.xyw);
    if (vs_r0_.z == 0f) {
        local_8 = FLT_MAX;
    } else {
        local_8 = inverseSqrt(abs(vs_r0_.z));
    }
    vs_r0_.z = local_8;
    let _e803 = (vs_r0_.xy * vs_r0_.zz);
    vs_r0_.x = _e803.x;
    vs_r0_.y = _e803.y;
    let _e825 = ((vs_r0_.xy * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    vs_o3_.x = _e825.x;
    vs_o3_.y = _e825.y;
    io_5_4_.x = dot(vs_r1_, global.vs_uniforms_vec4_[224]);
    io_5_4_.y = dot(vs_r1_, global.vs_uniforms_vec4_[225]);
    io_5_4_.z = dot(vs_r1_, global.vs_uniforms_vec4_[226]);
    let _e851 = vs_r1_.xyz;
    vs_o4_.x = _e851.x;
    vs_o4_.y = _e851.y;
    vs_o4_.z = _e851.z;
    return VertexOutput(vs_o1_, vs_o2_, vs_o3_, vs_o4_, vs_o5_, io_5_4_, vs_o7_v, gl_Position);
}
