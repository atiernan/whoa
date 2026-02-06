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

@vertex fn main(@location(0) vs_v0_: vec4<f32>, @location(2) @interpolate(flat) vs_v1_u: vec4<u32>, @location(3) vs_v2_: vec4<f32>, @location(6) vs_v3_: vec4<f32>) -> VertexOutput {
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

    var vs_v1_: vec4<f32>;
    var local: f32;
    var local_1: f32;
    var local_2: f32;
    var local_3: f32;

    vs_v1_ = vec4<f32>(vs_v1_u);
    vs_r0_.x = (3f * vs_v1_.x);
    vs_a0_.x = i32((floor((abs(vs_r0_.x) + 0.5f)) * sign(vs_r0_.x)));
    vs_r0_.x = dot(global.vs_uniforms_vec4_[(31i + vs_a0_.x)], vs_v0_);
    vs_r0_.y = dot(global.vs_uniforms_vec4_[(32i + vs_a0_.x)], vs_v0_);
    vs_r0_.z = dot(global.vs_uniforms_vec4_[(33i + vs_a0_.x)], vs_v0_);
    vs_r0_.w = 1f;
    gl_Position.x = dot(global.vs_uniforms_vec4_[2], vs_r0_);
    gl_Position.y = dot(global.vs_uniforms_vec4_[3], vs_r0_);
    gl_Position.z = dot(global.vs_uniforms_vec4_[4], vs_r0_);
    gl_Position.w = dot(global.vs_uniforms_vec4_[5], vs_r0_);
    vs_r1_.w = 1f;
    vs_r2_.x = dot((global.vs_uniforms_vec4_[(31i + vs_a0_.x)]).xyz, vs_v2_.xyz);
    vs_r2_.y = dot((global.vs_uniforms_vec4_[(32i + vs_a0_.x)]).xyz, vs_v2_.xyz);
    vs_r2_.z = dot((global.vs_uniforms_vec4_[(33i + vs_a0_.x)]).xyz, vs_v2_.xyz);
    let _e161 = normalize(vs_r2_.xyz);
    vs_r3_.x = _e161.x;
    vs_r3_.y = _e161.y;
    vs_r3_.z = _e161.z;
    vs_r2_.x = clamp(dot(-(global.vs_uniforms_vec4_[12].xyz), vs_r3_.xyz), 0f, 1f);
    let _e185 = global.vs_uniforms_vec4_[10].xyz;
    vs_r4_.x = _e185.x;
    vs_r4_.y = _e185.y;
    vs_r4_.z = _e185.z;
    let _e203 = ((vs_r2_.xxx * vs_r4_.xyz) + global.vs_uniforms_vec4_[11].xyz);
    vs_r2_.x = _e203.x;
    vs_r2_.y = _e203.y;
    vs_r2_.z = _e203.z;
    let _e219 = (-(vs_r0_.xyz) + global.vs_uniforms_vec4_[21].xyz);
    vs_r4_.x = _e219.x;
    vs_r4_.y = _e219.y;
    vs_r4_.z = _e219.z;
    vs_r5_.x = dot(vs_r4_.xyz, vs_r3_.xyz);
    vs_r4_.x = dot(vs_r4_.xyz, vs_r4_.xyz);
    let _e247 = (-(vs_r0_.xyz) + global.vs_uniforms_vec4_[22].xyz);
    vs_r6_.x = _e247.x;
    vs_r6_.y = _e247.y;
    vs_r6_.z = _e247.z;
    vs_r5_.y = dot(vs_r6_.xyz, vs_r3_.xyz);
    let _e263 = vs_r3_.xyz;
    vs_o4_.x = _e263.x;
    vs_o4_.y = _e263.y;
    vs_o4_.z = _e263.z;
    vs_r4_.y = dot(vs_r6_.xyz, vs_r6_.xyz);
    if (vs_r4_.x == 0f) {
        local = FLT_MAX;
    } else {
        local = inverseSqrt(abs(vs_r4_.x));
    }
    vs_r3_.x = local;
    if (vs_r4_.y == 0f) {
        local_1 = FLT_MAX;
    } else {
        local_1 = inverseSqrt(abs(vs_r4_.y));
    }
    vs_r3_.y = local_1;
    let _e304 = (vs_r5_.xy * vs_r3_.xy);
    vs_r3_.z = _e304.x;
    vs_r3_.w = _e304.y;
    let _e315 = (vs_r4_.xy * vs_r3_.xy);
    vs_r3_.x = _e315.x;
    vs_r3_.y = _e315.y;
    let _e328 = (vs_r3_.xy * global.vs_uniforms_vec4_[26].xy);
    vs_r3_.x = _e328.x;
    vs_r3_.y = _e328.y;
    let _e344 = ((vs_r4_.xy * global.vs_uniforms_vec4_[27].xy) + vs_r3_.xy);
    vs_r3_.x = _e344.x;
    vs_r3_.y = _e344.y;
    let _e357 = (vs_r3_.xy + global.vs_uniforms_vec4_[25].xy);
    vs_r3_.x = _e357.x;
    vs_r3_.y = _e357.y;
    let _e372 = max(vs_r3_.zw, vec2<f32>(0f, 0f));
    vs_r3_.z = _e372.x;
    vs_r3_.w = _e372.y;
    if (vs_r3_.x == 0f) {
        local_2 = FLT_MAX;
    } else {
        local_2 = (1f / vs_r3_.x);
    }
    vs_r4_.x = local_2;
    if (vs_r3_.y == 0f) {
        local_3 = FLT_MAX;
    } else {
        local_3 = (1f / vs_r3_.y);
    }
    vs_r4_.y = local_3;
    let _e405 = (vs_r3_.zw * vs_r4_.xy);
    vs_r3_.x = _e405.x;
    vs_r3_.y = _e405.y;
    let _e421 = ((global.vs_uniforms_vec4_[17].xyz * vs_r3_.xxx) + vs_r2_.xyz);
    vs_r2_.x = _e421.x;
    vs_r2_.y = _e421.y;
    vs_r2_.z = _e421.z;
    let _e444 = clamp(((global.vs_uniforms_vec4_[18].xyz * vs_r3_.yyy) + vs_r2_.xyz), vec3(0f), vec3(1f));
    vs_r1_.x = _e444.x;
    vs_r1_.y = _e444.y;
    vs_r1_.z = _e444.z;
    vs_r2_ = global.vs_uniforms_vec4_[28];
    vs_o1_ = clamp(((vs_r2_ * vs_r1_) + global.vs_uniforms_vec4_[29]), vec4(0f), vec4(1f));
    vs_r1_.x = ((vs_r0_.z * global.vs_uniforms_vec4_[30].x) + global.vs_uniforms_vec4_[30].y);
    vs_r1_.x = max(vs_r1_.x, 0f);
    vs_r2_.x = pow(abs(vs_r1_.x), global.vs_uniforms_vec4_[30].z);
    vs_o8_v.x = min(vs_r2_.x, 1f);
    let _e523 = ((vs_v3_.xyx * vec3<f32>(1f, 1f, 0f)) + vec3<f32>(0f, 0f, 1f));
    vs_r1_.x = _e523.x;
    vs_r1_.y = _e523.y;
    vs_r1_.z = _e523.z;
    vs_o2_.x = dot(global.vs_uniforms_vec4_[6].xyw, vs_r1_.xyz);
    vs_o2_.y = dot(global.vs_uniforms_vec4_[7].xyw, vs_r1_.xyz);
    vs_o5_.x = dot(vs_r0_, global.vs_uniforms_vec4_[224]);
    vs_o5_.y = dot(vs_r0_, global.vs_uniforms_vec4_[225]);
    vs_o5_.z = dot(vs_r0_, global.vs_uniforms_vec4_[226]);
    io_5_4_.x = dot(vs_r0_, global.vs_uniforms_vec4_[227]);
    io_5_4_.y = dot(vs_r0_, global.vs_uniforms_vec4_[228]);
    io_5_4_.z = dot(vs_r0_, global.vs_uniforms_vec4_[229]);
    io_5_5_.x = dot(vs_r0_, global.vs_uniforms_vec4_[230]);
    io_5_5_.y = dot(vs_r0_, global.vs_uniforms_vec4_[231]);
    io_5_5_.z = dot(vs_r0_, global.vs_uniforms_vec4_[232]);
    vs_o5_.w = dot(vs_r0_, global.vs_uniforms_vec4_[233]);
    io_5_4_.w = dot(vs_r0_, global.vs_uniforms_vec4_[234]);
    io_5_5_.w = dot(vs_r0_, global.vs_uniforms_vec4_[235]);
    let _e621 = vs_r0_.xyz;
    vs_o3_.x = _e621.x;
    vs_o3_.y = _e621.y;
    vs_o3_.z = _e621.z;
    return VertexOutput(vs_o1_, vs_o2_, vs_o3_, vs_o4_, vs_o5_, io_5_4_, io_5_5_, vs_o8_v, gl_Position);
}
