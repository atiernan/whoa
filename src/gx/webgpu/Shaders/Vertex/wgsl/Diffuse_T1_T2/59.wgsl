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

@vertex fn main(@location(0) vs_v0_: vec4<f32>, @location(1) vs_v1_: vec4<f32>, @location(2) @interpolate(flat) vs_v2_u: vec4<u32>, @location(3) vs_v3_: vec4<f32>, @location(6) vs_v4_: vec4<f32>, @location(7) vs_v5_: vec4<f32>) -> VertexOutput {
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
    let _e228 = normalize(vs_r0_.xyz);
    vs_r2_.x = _e228.x;
    vs_r2_.y = _e228.y;
    vs_r2_.z = _e228.z;
    vs_r1_.w = 1f;
    gl_Position.x = dot(global.vs_uniforms_vec4_[2], vs_r1_);
    gl_Position.y = dot(global.vs_uniforms_vec4_[3], vs_r1_);
    gl_Position.z = dot(global.vs_uniforms_vec4_[4], vs_r1_);
    gl_Position.w = dot(global.vs_uniforms_vec4_[5], vs_r1_);
    let _e275 = (-(vs_r1_.xyz) + global.vs_uniforms_vec4_[21].xyz);
    vs_r0_.x = _e275.x;
    vs_r0_.y = _e275.y;
    vs_r0_.z = _e275.z;
    vs_r3_.x = dot(vs_r0_.xyz, vs_r2_.xyz);
    vs_r0_.x = dot(vs_r0_.xyz, vs_r0_.xyz);
    let _e303 = (-(vs_r1_.xyz) + global.vs_uniforms_vec4_[22].xyz);
    vs_r4_.x = _e303.x;
    vs_r4_.y = _e303.y;
    vs_r4_.z = _e303.z;
    vs_r3_.y = dot(vs_r4_.xyz, vs_r2_.xyz);
    vs_r0_.y = dot(vs_r4_.xyz, vs_r4_.xyz);
    let _e331 = (-(vs_r1_.xyz) + global.vs_uniforms_vec4_[23].xyz);
    vs_r4_.x = _e331.x;
    vs_r4_.y = _e331.y;
    vs_r4_.z = _e331.z;
    vs_r3_.z = dot(vs_r4_.xyz, vs_r2_.xyz);
    vs_r0_.z = dot(vs_r4_.xyz, vs_r4_.xyz);
    let _e359 = (-(vs_r1_.xyz) + global.vs_uniforms_vec4_[24].xyz);
    vs_r4_.x = _e359.x;
    vs_r4_.y = _e359.y;
    vs_r4_.z = _e359.z;
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
    let _e515 = vs_r2_.xyz;
    vs_o5_.x = _e515.x;
    vs_o5_.y = _e515.y;
    vs_o5_.z = _e515.z;
    let _e527 = global.vs_uniforms_vec4_[10].xyz;
    vs_r2_.x = _e527.x;
    vs_r2_.y = _e527.y;
    vs_r2_.z = _e527.z;
    let _e545 = ((vs_r2_.www * vs_r2_.xyz) + global.vs_uniforms_vec4_[11].xyz);
    vs_r2_.x = _e545.x;
    vs_r2_.y = _e545.y;
    vs_r2_.z = _e545.z;
    let _e563 = ((global.vs_uniforms_vec4_[17].xyz * vs_r0_.xxx) + vs_r2_.xyz);
    vs_r2_.x = _e563.x;
    vs_r2_.y = _e563.y;
    vs_r2_.z = _e563.z;
    let _e581 = ((global.vs_uniforms_vec4_[18].xyz * vs_r0_.yyy) + vs_r2_.xyz);
    vs_r2_.x = _e581.x;
    vs_r2_.y = _e581.y;
    vs_r2_.z = _e581.z;
    let _e599 = ((global.vs_uniforms_vec4_[19].xyz * vs_r0_.zzz) + vs_r2_.xyz);
    vs_r0_.x = _e599.x;
    vs_r0_.y = _e599.y;
    vs_r0_.z = _e599.z;
    let _e622 = clamp(((global.vs_uniforms_vec4_[20].xyz * vs_r0_.www) + vs_r0_.xyz), vec3(0f), vec3(1f));
    vs_r0_.x = _e622.x;
    vs_r0_.y = _e622.y;
    vs_r0_.z = _e622.z;
    vs_r0_.w = 1f;
    vs_r2_ = global.vs_uniforms_vec4_[28];
    vs_o1_ = clamp(((vs_r2_ * vs_r0_) + global.vs_uniforms_vec4_[29]), vec4(0f), vec4(1f));
    vs_r0_.x = ((vs_r1_.z * global.vs_uniforms_vec4_[30].x) + global.vs_uniforms_vec4_[30].y);
    vs_r0_.x = max(vs_r0_.x, 0f);
    vs_r2_.x = pow(abs(vs_r0_.x), global.vs_uniforms_vec4_[30].z);
    vs_o7_v.x = min(vs_r2_.x, 1f);
    let _e707 = ((vs_v4_.xyx * vec3<f32>(1f, 1f, 0f)) + vec3<f32>(0f, 0f, 1f));
    vs_r0_.x = _e707.x;
    vs_r0_.y = _e707.y;
    vs_r0_.z = _e707.z;
    vs_o2_.x = dot(global.vs_uniforms_vec4_[6].xyw, vs_r0_.xyz);
    vs_o2_.y = dot(global.vs_uniforms_vec4_[7].xyw, vs_r0_.xyz);
    let _e747 = ((vs_v5_.xyx * vec3<f32>(1f, 1f, 0f)) + vec3<f32>(0f, 0f, 1f));
    vs_r0_.x = _e747.x;
    vs_r0_.y = _e747.y;
    vs_r0_.z = _e747.z;
    vs_o3_.x = dot(global.vs_uniforms_vec4_[8].xyw, vs_r0_.xyz);
    vs_o3_.y = dot(global.vs_uniforms_vec4_[9].xyw, vs_r0_.xyz);
    io_5_4_.x = dot(vs_r1_, global.vs_uniforms_vec4_[224]);
    io_5_4_.y = dot(vs_r1_, global.vs_uniforms_vec4_[225]);
    io_5_4_.z = dot(vs_r1_, global.vs_uniforms_vec4_[226]);
    let _e791 = vs_r1_.xyz;
    vs_o4_.x = _e791.x;
    vs_o4_.y = _e791.y;
    vs_o4_.z = _e791.z;
    return VertexOutput(vs_o1_, vs_o2_, vs_o3_, vs_o4_, vs_o5_, io_5_4_, vs_o7_v, gl_Position);
}
