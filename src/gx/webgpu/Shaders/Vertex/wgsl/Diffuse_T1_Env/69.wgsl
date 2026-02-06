struct UniformBlock_0_ {
    vs_uniforms_vec4_: array<vec4<f32>, 236>,
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

@vertex fn main(@location(0) vs_v0_: vec4<f32>, @location(3) vs_v1_: vec4<f32>, @location(6) vs_v2_: vec4<f32>) -> VertexOutput {
    var vs_r0_: vec4<f32>;
    var vs_r1_: vec4<f32>;
    var vs_r2_: vec4<f32>;
    var vs_r3_: vec4<f32>;
    var vs_r4_: vec4<f32>;
    var vs_r5_: vec4<f32>;
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

    var local: f32;
    var local_1: f32;
    var local_2: f32;
    var local_3: f32;
    var local_4: f32;
    var local_5: f32;
    var local_6: f32;
    var local_7: f32;
    var local_8: f32;

    vs_r0_.w = 1f;
    vs_r0_.x = dot(global.vs_uniforms_vec4_[31], vs_v0_);
    vs_r0_.y = dot(global.vs_uniforms_vec4_[32], vs_v0_);
    vs_r0_.z = dot(global.vs_uniforms_vec4_[33], vs_v0_);
    gl_Position.x = dot(global.vs_uniforms_vec4_[2], vs_r0_);
    gl_Position.y = dot(global.vs_uniforms_vec4_[3], vs_r0_);
    gl_Position.z = dot(global.vs_uniforms_vec4_[4], vs_r0_);
    gl_Position.w = dot(global.vs_uniforms_vec4_[5], vs_r0_);
    vs_r1_.w = 1f;
    vs_r2_.x = dot(global.vs_uniforms_vec4_[31].xyz, vs_v1_.xyz);
    vs_r2_.y = dot(global.vs_uniforms_vec4_[32].xyz, vs_v1_.xyz);
    vs_r2_.z = dot(global.vs_uniforms_vec4_[33].xyz, vs_v1_.xyz);
    let _e105 = normalize(vs_r2_.xyz);
    vs_r3_.x = _e105.x;
    vs_r3_.y = _e105.y;
    vs_r3_.z = _e105.z;
    let _e121 = (-(vs_r0_.xyz) + global.vs_uniforms_vec4_[21].xyz);
    vs_r2_.x = _e121.x;
    vs_r2_.y = _e121.y;
    vs_r2_.z = _e121.z;
    vs_r4_.x = dot(vs_r2_.xyz, vs_r3_.xyz);
    vs_r2_.x = dot(vs_r2_.xyz, vs_r2_.xyz);
    let _e149 = (-(vs_r0_.xyz) + global.vs_uniforms_vec4_[22].xyz);
    vs_r5_.x = _e149.x;
    vs_r5_.y = _e149.y;
    vs_r5_.z = _e149.z;
    vs_r4_.y = dot(vs_r5_.xyz, vs_r3_.xyz);
    vs_r2_.y = dot(vs_r5_.xyz, vs_r5_.xyz);
    let _e177 = (-(vs_r0_.xyz) + global.vs_uniforms_vec4_[23].xyz);
    vs_r5_.x = _e177.x;
    vs_r5_.y = _e177.y;
    vs_r5_.z = _e177.z;
    vs_r4_.z = dot(vs_r5_.xyz, vs_r3_.xyz);
    vs_r2_.z = dot(vs_r5_.xyz, vs_r5_.xyz);
    let _e205 = (-(vs_r0_.xyz) + global.vs_uniforms_vec4_[24].xyz);
    vs_r5_.x = _e205.x;
    vs_r5_.y = _e205.y;
    vs_r5_.z = _e205.z;
    vs_r4_.w = dot(vs_r5_.xyz, vs_r3_.xyz);
    vs_r2_.w = dot(vs_r5_.xyz, vs_r5_.xyz);
    if (vs_r2_.x == 0f) {
        local = FLT_MAX;
    } else {
        local = inverseSqrt(abs(vs_r2_.x));
    }
    vs_r5_.x = local;
    if (vs_r2_.y == 0f) {
        local_1 = FLT_MAX;
    } else {
        local_1 = inverseSqrt(abs(vs_r2_.y));
    }
    vs_r5_.y = local_1;
    if (vs_r2_.z == 0f) {
        local_2 = FLT_MAX;
    } else {
        local_2 = inverseSqrt(abs(vs_r2_.z));
    }
    vs_r5_.z = local_2;
    if (vs_r2_.w == 0f) {
        local_3 = FLT_MAX;
    } else {
        local_3 = inverseSqrt(abs(vs_r2_.w));
    }
    vs_r5_.w = local_3;
    vs_r4_ = (vs_r4_ * vs_r5_);
    vs_r5_ = (vs_r2_ * vs_r5_);
    vs_r5_ = (vs_r5_ * global.vs_uniforms_vec4_[26]);
    vs_r2_ = ((vs_r2_ * global.vs_uniforms_vec4_[27]) + vs_r5_);
    vs_r2_ = (vs_r2_ + global.vs_uniforms_vec4_[25]);
    vs_r4_ = max(vs_r4_, vec4<f32>(0f, 0f, 0f, 0f));
    if (vs_r2_.x == 0f) {
        local_4 = FLT_MAX;
    } else {
        local_4 = (1f / vs_r2_.x);
    }
    vs_r5_.x = local_4;
    if (vs_r2_.y == 0f) {
        local_5 = FLT_MAX;
    } else {
        local_5 = (1f / vs_r2_.y);
    }
    vs_r5_.y = local_5;
    if (vs_r2_.z == 0f) {
        local_6 = FLT_MAX;
    } else {
        local_6 = (1f / vs_r2_.z);
    }
    vs_r5_.z = local_6;
    if (vs_r2_.w == 0f) {
        local_7 = FLT_MAX;
    } else {
        local_7 = (1f / vs_r2_.w);
    }
    vs_r5_.w = local_7;
    vs_r2_ = (vs_r4_ * vs_r5_);
    vs_r3_.w = clamp(dot(-(global.vs_uniforms_vec4_[12].xyz), vs_r3_.xyz), 0f, 1f);
    let _e363 = global.vs_uniforms_vec4_[10].xyz;
    vs_r4_.x = _e363.x;
    vs_r4_.y = _e363.y;
    vs_r4_.z = _e363.z;
    let _e381 = ((vs_r3_.www * vs_r4_.xyz) + global.vs_uniforms_vec4_[11].xyz);
    vs_r4_.x = _e381.x;
    vs_r4_.y = _e381.y;
    vs_r4_.z = _e381.z;
    let _e399 = ((global.vs_uniforms_vec4_[17].xyz * vs_r2_.xxx) + vs_r4_.xyz);
    vs_r4_.x = _e399.x;
    vs_r4_.y = _e399.y;
    vs_r4_.z = _e399.z;
    let _e417 = ((global.vs_uniforms_vec4_[18].xyz * vs_r2_.yyy) + vs_r4_.xyz);
    vs_r4_.x = _e417.x;
    vs_r4_.y = _e417.y;
    vs_r4_.z = _e417.z;
    let _e435 = ((global.vs_uniforms_vec4_[19].xyz * vs_r2_.zzz) + vs_r4_.xyz);
    vs_r2_.x = _e435.x;
    vs_r2_.y = _e435.y;
    vs_r2_.z = _e435.z;
    let _e458 = clamp(((global.vs_uniforms_vec4_[20].xyz * vs_r2_.www) + vs_r2_.xyz), vec3(0f), vec3(1f));
    vs_r1_.x = _e458.x;
    vs_r1_.y = _e458.y;
    vs_r1_.z = _e458.z;
    vs_r2_ = global.vs_uniforms_vec4_[28];
    vs_o1_ = clamp(((vs_r2_ * vs_r1_) + global.vs_uniforms_vec4_[29]), vec4(0f), vec4(1f));
    vs_r1_.x = ((vs_r0_.z * global.vs_uniforms_vec4_[30].x) + global.vs_uniforms_vec4_[30].y);
    vs_r1_.x = max(vs_r1_.x, 0f);
    vs_r2_.x = pow(abs(vs_r1_.x), global.vs_uniforms_vec4_[30].z);
    vs_o9_v.x = min(vs_r2_.x, 1f);
    let _e537 = ((vs_v2_.xyx * vec3<f32>(1f, 1f, 0f)) + vec3<f32>(0f, 0f, 1f));
    vs_r1_.x = _e537.x;
    vs_r1_.y = _e537.y;
    vs_r1_.z = _e537.z;
    vs_o2_.x = dot(global.vs_uniforms_vec4_[6].xyw, vs_r1_.xyz);
    vs_o2_.y = dot(global.vs_uniforms_vec4_[7].xyw, vs_r1_.xyz);
    let _e564 = normalize(vs_r0_.xyz);
    vs_r1_.x = _e564.x;
    vs_r1_.y = _e564.y;
    vs_r1_.z = _e564.z;
    vs_r1_.w = dot(-(vs_r1_.xyz), vs_r3_.xyz);
    vs_r1_.w = (vs_r1_.w + vs_r1_.w);
    let _e595 = ((vs_r1_.www * -(vs_r3_.xyz)) + -(vs_r1_.xyz));
    vs_r1_.x = _e595.x;
    vs_r1_.y = _e595.y;
    vs_r1_.z = _e595.z;
    let _e605 = vs_r3_.xyz;
    vs_o5_.x = _e605.x;
    vs_o5_.y = _e605.y;
    vs_o5_.z = _e605.z;
    vs_r1_.w = (vs_r1_.z + 1f);
    vs_r1_.z = dot(vs_r1_.xyw, vs_r1_.xyw);
    if (vs_r1_.z == 0f) {
        local_8 = FLT_MAX;
    } else {
        local_8 = inverseSqrt(abs(vs_r1_.z));
    }
    vs_r1_.z = local_8;
    let _e644 = (vs_r1_.xy * vs_r1_.zz);
    vs_r1_.x = _e644.x;
    vs_r1_.y = _e644.y;
    let _e666 = ((vs_r1_.xy * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    vs_o3_.x = _e666.x;
    vs_o3_.y = _e666.y;
    io_5_4_.x = dot(vs_r0_, global.vs_uniforms_vec4_[224]);
    io_5_4_.y = dot(vs_r0_, global.vs_uniforms_vec4_[225]);
    io_5_4_.z = dot(vs_r0_, global.vs_uniforms_vec4_[226]);
    io_5_5_.x = dot(vs_r0_, global.vs_uniforms_vec4_[227]);
    io_5_5_.y = dot(vs_r0_, global.vs_uniforms_vec4_[228]);
    io_5_5_.z = dot(vs_r0_, global.vs_uniforms_vec4_[229]);
    io_5_6_.x = dot(vs_r0_, global.vs_uniforms_vec4_[230]);
    io_5_6_.y = dot(vs_r0_, global.vs_uniforms_vec4_[231]);
    io_5_6_.z = dot(vs_r0_, global.vs_uniforms_vec4_[232]);
    io_5_4_.w = dot(vs_r0_, global.vs_uniforms_vec4_[233]);
    io_5_5_.w = dot(vs_r0_, global.vs_uniforms_vec4_[234]);
    io_5_6_.w = dot(vs_r0_, global.vs_uniforms_vec4_[235]);
    let _e746 = vs_r0_.xyz;
    vs_o4_.x = _e746.x;
    vs_o4_.y = _e746.y;
    vs_o4_.z = _e746.z;
    return VertexOutput(vs_o1_, vs_o2_, vs_o3_, vs_o4_, vs_o5_, io_5_4_, io_5_5_, io_5_6_, vs_o9_v, gl_Position);
}
