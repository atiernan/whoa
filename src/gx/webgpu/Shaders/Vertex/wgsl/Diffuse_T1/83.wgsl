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
    vs_r0_.w = 1f;
    vs_r2_.w = clamp(dot(-(global.vs_uniforms_vec4_[12].xyz), vs_r2_.xyz), 0f, 1f);
    let _e289 = global.vs_uniforms_vec4_[10].xyz;
    vs_r3_.x = _e289.x;
    vs_r3_.y = _e289.y;
    vs_r3_.z = _e289.z;
    let _e307 = ((vs_r2_.www * vs_r3_.xyz) + global.vs_uniforms_vec4_[11].xyz);
    vs_r3_.x = _e307.x;
    vs_r3_.y = _e307.y;
    vs_r3_.z = _e307.z;
    let _e323 = (-(vs_r1_.xyz) + global.vs_uniforms_vec4_[21].xyz);
    vs_r4_.x = _e323.x;
    vs_r4_.y = _e323.y;
    vs_r4_.z = _e323.z;
    vs_r2_.w = dot(vs_r4_.xyz, vs_r2_.xyz);
    let _e339 = vs_r2_.xyz;
    vs_o4_.x = _e339.x;
    vs_o4_.y = _e339.y;
    vs_o4_.z = _e339.z;
    vs_r2_.x = dot(vs_r4_.xyz, vs_r4_.xyz);
    if (vs_r2_.x == 0f) {
        local = FLT_MAX;
    } else {
        local = inverseSqrt(abs(vs_r2_.x));
    }
    vs_r2_.y = local;
    let _e369 = (vs_r2_.xw * vs_r2_.yy);
    vs_r2_.y = _e369.x;
    vs_r2_.z = _e369.y;
    vs_r2_.y = (vs_r2_.y * global.vs_uniforms_vec4_[26].x);
    vs_r2_.x = ((vs_r2_.x * global.vs_uniforms_vec4_[27].x) + vs_r2_.y);
    vs_r2_.x = (vs_r2_.x + global.vs_uniforms_vec4_[25].x);
    if (vs_r2_.x == 0f) {
        local_1 = FLT_MAX;
    } else {
        local_1 = (1f / vs_r2_.x);
    }
    vs_r2_.x = local_1;
    vs_r2_.y = max(vs_r2_.z, 0f);
    vs_r2_.x = (vs_r2_.x * vs_r2_.y);
    let _e443 = clamp(((global.vs_uniforms_vec4_[17].xyz * vs_r2_.xxx) + vs_r3_.xyz), vec3(0f), vec3(1f));
    vs_r0_.x = _e443.x;
    vs_r0_.y = _e443.y;
    vs_r0_.z = _e443.z;
    vs_r2_ = global.vs_uniforms_vec4_[28];
    vs_o1_ = clamp(((vs_r2_ * vs_r0_) + global.vs_uniforms_vec4_[29]), vec4(0f), vec4(1f));
    vs_r0_.x = ((vs_r1_.z * global.vs_uniforms_vec4_[30].x) + global.vs_uniforms_vec4_[30].y);
    vs_r0_.x = max(vs_r0_.x, 0f);
    vs_r2_.x = pow(abs(vs_r0_.x), global.vs_uniforms_vec4_[30].z);
    vs_o8_v.x = min(vs_r2_.x, 1f);
    let _e522 = ((vs_v4_.xyx * vec3<f32>(1f, 1f, 0f)) + vec3<f32>(0f, 0f, 1f));
    vs_r0_.x = _e522.x;
    vs_r0_.y = _e522.y;
    vs_r0_.z = _e522.z;
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
    let _e620 = vs_r1_.xyz;
    vs_o3_.x = _e620.x;
    vs_o3_.y = _e620.y;
    vs_o3_.z = _e620.z;
    return VertexOutput(vs_o1_, vs_o2_, vs_o3_, vs_o4_, vs_o5_, io_5_4_, io_5_5_, vs_o8_v, gl_Position);
}
