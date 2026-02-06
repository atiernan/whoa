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

@vertex fn main(@location(0) vs_v0_: vec4<f32>, @location(2) @interpolate(flat) vs_v1_u: vec4<u32>, @location(3) vs_v2_: vec4<f32>, @location(6) vs_v3_: vec4<f32>) -> VertexOutput {
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
    var local_6: f32;
    var local_7: f32;
    var local_8: f32;

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
    let _e152 = normalize(vs_r1_.xyz);
    vs_r2_.x = _e152.x;
    vs_r2_.y = _e152.y;
    vs_r2_.z = _e152.z;
    let _e168 = (-(vs_r0_.xyz) + global.vs_uniforms_vec4_[21].xyz);
    vs_r1_.x = _e168.x;
    vs_r1_.y = _e168.y;
    vs_r1_.z = _e168.z;
    vs_r3_.x = dot(vs_r1_.xyz, vs_r2_.xyz);
    vs_r1_.x = dot(vs_r1_.xyz, vs_r1_.xyz);
    let _e196 = (-(vs_r0_.xyz) + global.vs_uniforms_vec4_[22].xyz);
    vs_r4_.x = _e196.x;
    vs_r4_.y = _e196.y;
    vs_r4_.z = _e196.z;
    vs_r3_.y = dot(vs_r4_.xyz, vs_r2_.xyz);
    vs_r1_.y = dot(vs_r4_.xyz, vs_r4_.xyz);
    let _e224 = (-(vs_r0_.xyz) + global.vs_uniforms_vec4_[23].xyz);
    vs_r4_.x = _e224.x;
    vs_r4_.y = _e224.y;
    vs_r4_.z = _e224.z;
    vs_r3_.z = dot(vs_r4_.xyz, vs_r2_.xyz);
    vs_r1_.z = dot(vs_r4_.xyz, vs_r4_.xyz);
    let _e252 = (-(vs_r0_.xyz) + global.vs_uniforms_vec4_[24].xyz);
    vs_r4_.x = _e252.x;
    vs_r4_.y = _e252.y;
    vs_r4_.z = _e252.z;
    vs_r3_.w = dot(vs_r4_.xyz, vs_r2_.xyz);
    vs_r1_.w = dot(vs_r4_.xyz, vs_r4_.xyz);
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
    if (vs_r1_.w == 0f) {
        local_3 = FLT_MAX;
    } else {
        local_3 = inverseSqrt(abs(vs_r1_.w));
    }
    vs_r4_.w = local_3;
    vs_r3_ = (vs_r3_ * vs_r4_);
    vs_r4_ = (vs_r1_ * vs_r4_);
    vs_r4_ = (vs_r4_ * global.vs_uniforms_vec4_[26]);
    vs_r1_ = ((vs_r1_ * global.vs_uniforms_vec4_[27]) + vs_r4_);
    vs_r1_ = (vs_r1_ + global.vs_uniforms_vec4_[25]);
    vs_r3_ = max(vs_r3_, vec4<f32>(0f, 0f, 0f, 0f));
    if (vs_r1_.x == 0f) {
        local_4 = FLT_MAX;
    } else {
        local_4 = (1f / vs_r1_.x);
    }
    vs_r4_.x = local_4;
    if (vs_r1_.y == 0f) {
        local_5 = FLT_MAX;
    } else {
        local_5 = (1f / vs_r1_.y);
    }
    vs_r4_.y = local_5;
    if (vs_r1_.z == 0f) {
        local_6 = FLT_MAX;
    } else {
        local_6 = (1f / vs_r1_.z);
    }
    vs_r4_.z = local_6;
    if (vs_r1_.w == 0f) {
        local_7 = FLT_MAX;
    } else {
        local_7 = (1f / vs_r1_.w);
    }
    vs_r4_.w = local_7;
    vs_r1_ = (vs_r3_ * vs_r4_);
    vs_r2_.w = clamp(dot(-(global.vs_uniforms_vec4_[12].xyz), vs_r2_.xyz), 0f, 1f);
    let _e410 = global.vs_uniforms_vec4_[10].xyz;
    vs_r3_.x = _e410.x;
    vs_r3_.y = _e410.y;
    vs_r3_.z = _e410.z;
    let _e428 = ((vs_r2_.www * vs_r3_.xyz) + global.vs_uniforms_vec4_[11].xyz);
    vs_r3_.x = _e428.x;
    vs_r3_.y = _e428.y;
    vs_r3_.z = _e428.z;
    let _e446 = ((global.vs_uniforms_vec4_[17].xyz * vs_r1_.xxx) + vs_r3_.xyz);
    vs_r3_.x = _e446.x;
    vs_r3_.y = _e446.y;
    vs_r3_.z = _e446.z;
    let _e464 = ((global.vs_uniforms_vec4_[18].xyz * vs_r1_.yyy) + vs_r3_.xyz);
    vs_r3_.x = _e464.x;
    vs_r3_.y = _e464.y;
    vs_r3_.z = _e464.z;
    let _e482 = ((global.vs_uniforms_vec4_[19].xyz * vs_r1_.zzz) + vs_r3_.xyz);
    vs_r1_.x = _e482.x;
    vs_r1_.y = _e482.y;
    vs_r1_.z = _e482.z;
    let _e505 = clamp(((global.vs_uniforms_vec4_[20].xyz * vs_r1_.www) + vs_r1_.xyz), vec3(0f), vec3(1f));
    vs_r1_.x = _e505.x;
    vs_r1_.y = _e505.y;
    vs_r1_.z = _e505.z;
    vs_r1_.w = 1f;
    vs_r3_ = global.vs_uniforms_vec4_[28];
    vs_o1_ = clamp(((vs_r3_ * vs_r1_) + global.vs_uniforms_vec4_[29]), vec4(0f), vec4(1f));
    vs_r1_.x = ((vs_r0_.z * global.vs_uniforms_vec4_[30].x) + global.vs_uniforms_vec4_[30].y);
    vs_r1_.x = max(vs_r1_.x, 0f);
    vs_r2_.w = pow(abs(vs_r1_.x), global.vs_uniforms_vec4_[30].z);
    vs_o7_v.x = min(vs_r2_.w, 1f);
    let _e590 = ((vs_v3_.xyx * vec3<f32>(1f, 1f, 0f)) + vec3<f32>(0f, 0f, 1f));
    vs_r1_.x = _e590.x;
    vs_r1_.y = _e590.y;
    vs_r1_.z = _e590.z;
    vs_o2_.x = dot(global.vs_uniforms_vec4_[6].xyw, vs_r1_.xyz);
    vs_o2_.y = dot(global.vs_uniforms_vec4_[7].xyw, vs_r1_.xyz);
    let _e617 = normalize(vs_r0_.xyz);
    vs_r1_.x = _e617.x;
    vs_r1_.y = _e617.y;
    vs_r1_.z = _e617.z;
    vs_r1_.w = dot(-(vs_r1_.xyz), vs_r2_.xyz);
    vs_r1_.w = (vs_r1_.w + vs_r1_.w);
    let _e648 = ((vs_r1_.www * -(vs_r2_.xyz)) + -(vs_r1_.xyz));
    vs_r1_.x = _e648.x;
    vs_r1_.y = _e648.y;
    vs_r1_.z = _e648.z;
    let _e658 = vs_r2_.xyz;
    vs_o5_.x = _e658.x;
    vs_o5_.y = _e658.y;
    vs_o5_.z = _e658.z;
    vs_r1_.w = (vs_r1_.z + 1f);
    vs_r1_.z = dot(vs_r1_.xyw, vs_r1_.xyw);
    if (vs_r1_.z == 0f) {
        local_8 = FLT_MAX;
    } else {
        local_8 = inverseSqrt(abs(vs_r1_.z));
    }
    vs_r1_.z = local_8;
    let _e697 = (vs_r1_.xy * vs_r1_.zz);
    vs_r1_.x = _e697.x;
    vs_r1_.y = _e697.y;
    let _e719 = ((vs_r1_.xy * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    vs_o3_.x = _e719.x;
    vs_o3_.y = _e719.y;
    io_5_4_.x = dot(vs_r0_, global.vs_uniforms_vec4_[224]);
    io_5_4_.y = dot(vs_r0_, global.vs_uniforms_vec4_[225]);
    io_5_4_.z = dot(vs_r0_, global.vs_uniforms_vec4_[226]);
    let _e745 = vs_r0_.xyz;
    vs_o4_.x = _e745.x;
    vs_o4_.y = _e745.y;
    vs_o4_.z = _e745.z;
    return VertexOutput(vs_o1_, vs_o2_, vs_o3_, vs_o4_, vs_o5_, io_5_4_, vs_o7_v, gl_Position);
}
