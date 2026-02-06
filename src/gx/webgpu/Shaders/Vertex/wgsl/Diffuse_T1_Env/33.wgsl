struct UniformBlock_0_ {
    vs_uniforms_vec4_: array<vec4<f32>, 227>,
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

@vertex fn main(@location(0) vs_v0_: vec4<f32>, @location(3) vs_v1_: vec4<f32>, @location(6) vs_v2_: vec4<f32>) -> VertexOutput {
    var vs_r0_: vec4<f32>;
    var vs_r1_: vec4<f32>;
    var vs_r2_: vec4<f32>;
    var vs_r3_: vec4<f32>;
    var vs_r4_: vec4<f32>;
    var vs_o1_: vec4<f32>;
    var vs_o2_: vec4<f32>;
    var vs_o3_: vec4<f32>;
    var vs_o4_: vec4<f32>;
    var vs_o5_: vec4<f32>;
    var io_5_4_: vec4<f32>;
    var vs_o7_v: vec4<f32>;
    var gl_Position: vec4<f32>;

    var local: f32;
    var local_1: f32;
    var local_2: f32;

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
    let _e102 = normalize(vs_r2_.xyz);
    vs_r3_.x = _e102.x;
    vs_r3_.y = _e102.y;
    vs_r3_.z = _e102.z;
    vs_r2_.x = clamp(dot(-(global.vs_uniforms_vec4_[12].xyz), vs_r3_.xyz), 0f, 1f);
    let _e126 = global.vs_uniforms_vec4_[10].xyz;
    vs_r4_.x = _e126.x;
    vs_r4_.y = _e126.y;
    vs_r4_.z = _e126.z;
    let _e144 = ((vs_r2_.xxx * vs_r4_.xyz) + global.vs_uniforms_vec4_[11].xyz);
    vs_r2_.x = _e144.x;
    vs_r2_.y = _e144.y;
    vs_r2_.z = _e144.z;
    let _e160 = (-(vs_r0_.xyz) + global.vs_uniforms_vec4_[21].xyz);
    vs_r4_.x = _e160.x;
    vs_r4_.y = _e160.y;
    vs_r4_.z = _e160.z;
    vs_r2_.w = dot(vs_r4_.xyz, vs_r4_.xyz);
    vs_r3_.w = dot(vs_r4_.xyz, vs_r3_.xyz);
    if (vs_r2_.w == 0f) {
        local = FLT_MAX;
    } else {
        local = inverseSqrt(abs(vs_r2_.w));
    }
    vs_r4_.x = local;
    vs_r4_.y = (vs_r2_.w * vs_r4_.x);
    vs_r3_.w = (vs_r3_.w * vs_r4_.x);
    vs_r3_.w = max(vs_r3_.w, 0f);
    vs_r4_.x = (vs_r4_.y * global.vs_uniforms_vec4_[26].x);
    vs_r2_.w = ((vs_r2_.w * global.vs_uniforms_vec4_[27].x) + vs_r4_.x);
    vs_r2_.w = (vs_r2_.w + global.vs_uniforms_vec4_[25].x);
    if (vs_r2_.w == 0f) {
        local_1 = FLT_MAX;
    } else {
        local_1 = (1f / vs_r2_.w);
    }
    vs_r2_.w = local_1;
    vs_r2_.w = (vs_r3_.w * vs_r2_.w);
    let _e271 = clamp(((global.vs_uniforms_vec4_[17].xyz * vs_r2_.www) + vs_r2_.xyz), vec3(0f), vec3(1f));
    vs_r1_.x = _e271.x;
    vs_r1_.y = _e271.y;
    vs_r1_.z = _e271.z;
    vs_r2_ = global.vs_uniforms_vec4_[28];
    vs_o1_ = clamp(((vs_r2_ * vs_r1_) + global.vs_uniforms_vec4_[29]), vec4(0f), vec4(1f));
    vs_r1_.x = ((vs_r0_.z * global.vs_uniforms_vec4_[30].x) + global.vs_uniforms_vec4_[30].y);
    vs_r1_.x = max(vs_r1_.x, 0f);
    vs_r2_.x = pow(abs(vs_r1_.x), global.vs_uniforms_vec4_[30].z);
    vs_o7_v.x = min(vs_r2_.x, 1f);
    let _e350 = ((vs_v2_.xyx * vec3<f32>(1f, 1f, 0f)) + vec3<f32>(0f, 0f, 1f));
    vs_r1_.x = _e350.x;
    vs_r1_.y = _e350.y;
    vs_r1_.z = _e350.z;
    vs_o2_.x = dot(global.vs_uniforms_vec4_[6].xyw, vs_r1_.xyz);
    vs_o2_.y = dot(global.vs_uniforms_vec4_[7].xyw, vs_r1_.xyz);
    let _e377 = normalize(vs_r0_.xyz);
    vs_r1_.x = _e377.x;
    vs_r1_.y = _e377.y;
    vs_r1_.z = _e377.z;
    vs_r1_.w = dot(-(vs_r1_.xyz), vs_r3_.xyz);
    vs_r1_.w = (vs_r1_.w + vs_r1_.w);
    let _e408 = ((vs_r1_.www * -(vs_r3_.xyz)) + -(vs_r1_.xyz));
    vs_r1_.x = _e408.x;
    vs_r1_.y = _e408.y;
    vs_r1_.z = _e408.z;
    let _e418 = vs_r3_.xyz;
    vs_o5_.x = _e418.x;
    vs_o5_.y = _e418.y;
    vs_o5_.z = _e418.z;
    vs_r1_.w = (vs_r1_.z + 1f);
    vs_r1_.z = dot(vs_r1_.xyw, vs_r1_.xyw);
    if (vs_r1_.z == 0f) {
        local_2 = FLT_MAX;
    } else {
        local_2 = inverseSqrt(abs(vs_r1_.z));
    }
    vs_r1_.z = local_2;
    let _e457 = (vs_r1_.xy * vs_r1_.zz);
    vs_r1_.x = _e457.x;
    vs_r1_.y = _e457.y;
    let _e479 = ((vs_r1_.xy * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    vs_o3_.x = _e479.x;
    vs_o3_.y = _e479.y;
    io_5_4_.x = dot(vs_r0_, global.vs_uniforms_vec4_[224]);
    io_5_4_.y = dot(vs_r0_, global.vs_uniforms_vec4_[225]);
    io_5_4_.z = dot(vs_r0_, global.vs_uniforms_vec4_[226]);
    let _e505 = vs_r0_.xyz;
    vs_o4_.x = _e505.x;
    vs_o4_.y = _e505.y;
    vs_o4_.z = _e505.z;
    return VertexOutput(vs_o1_, vs_o2_, vs_o3_, vs_o4_, vs_o5_, io_5_4_, vs_o7_v, gl_Position);
}
