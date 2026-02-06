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

    vs_v1_ = vec4<f32>(vs_v1_u);
    vs_r0_.x = (3f * vs_v1_.x);
    vs_a0_.x = i32((floor((abs(vs_r0_.x) + 0.5f)) * sign(vs_r0_.x)));
    vs_r0_.x = dot(global.vs_uniforms_vec4_[(31i + vs_a0_.x)], vs_v0_);
    vs_r0_.y = dot(global.vs_uniforms_vec4_[(32i + vs_a0_.x)], vs_v0_);
    vs_r0_.w = 1f;
    vs_r0_.z = dot(global.vs_uniforms_vec4_[(33i + vs_a0_.x)], vs_v0_);
    gl_Position.x = dot(global.vs_uniforms_vec4_[2], vs_r0_);
    gl_Position.y = dot(global.vs_uniforms_vec4_[3], vs_r0_);
    gl_Position.z = dot(global.vs_uniforms_vec4_[4], vs_r0_);
    gl_Position.w = dot(global.vs_uniforms_vec4_[5], vs_r0_);
    vs_r1_.x = dot((global.vs_uniforms_vec4_[(31i + vs_a0_.x)]).xyz, vs_v2_.xyz);
    vs_r1_.y = dot((global.vs_uniforms_vec4_[(32i + vs_a0_.x)]).xyz, vs_v2_.xyz);
    vs_r1_.z = dot((global.vs_uniforms_vec4_[(33i + vs_a0_.x)]).xyz, vs_v2_.xyz);
    let _e151 = normalize(vs_r1_.xyz);
    vs_r2_.x = _e151.x;
    vs_r2_.y = _e151.y;
    vs_r2_.z = _e151.z;
    vs_r1_.x = clamp(dot(-(global.vs_uniforms_vec4_[12].xyz), vs_r2_.xyz), 0f, 1f);
    let _e175 = global.vs_uniforms_vec4_[10].xyz;
    vs_r3_.x = _e175.x;
    vs_r3_.y = _e175.y;
    vs_r3_.z = _e175.z;
    let _e198 = clamp(((vs_r1_.xxx * vs_r3_.xyz) + global.vs_uniforms_vec4_[11].xyz), vec3(0f), vec3(1f));
    vs_r1_.x = _e198.x;
    vs_r1_.y = _e198.y;
    vs_r1_.z = _e198.z;
    vs_r1_.w = 1f;
    vs_r3_ = global.vs_uniforms_vec4_[28];
    vs_o1_ = clamp(((vs_r3_ * vs_r1_) + global.vs_uniforms_vec4_[29]), vec4(0f), vec4(1f));
    vs_r1_.x = ((vs_r0_.z * global.vs_uniforms_vec4_[30].x) + global.vs_uniforms_vec4_[30].y);
    vs_r1_.x = max(vs_r1_.x, 0f);
    vs_r2_.w = pow(abs(vs_r1_.x), global.vs_uniforms_vec4_[30].z);
    vs_o7_v.x = min(vs_r2_.w, 1f);
    let _e283 = ((vs_v3_.xyx * vec3<f32>(1f, 1f, 0f)) + vec3<f32>(0f, 0f, 1f));
    vs_r1_.x = _e283.x;
    vs_r1_.y = _e283.y;
    vs_r1_.z = _e283.z;
    vs_o2_.x = dot(global.vs_uniforms_vec4_[6].xyw, vs_r1_.xyz);
    vs_o2_.y = dot(global.vs_uniforms_vec4_[7].xyw, vs_r1_.xyz);
    let _e310 = normalize(vs_r0_.xyz);
    vs_r1_.x = _e310.x;
    vs_r1_.y = _e310.y;
    vs_r1_.z = _e310.z;
    vs_r1_.w = dot(-(vs_r1_.xyz), vs_r2_.xyz);
    vs_r1_.w = (vs_r1_.w + vs_r1_.w);
    let _e341 = ((vs_r1_.www * -(vs_r2_.xyz)) + -(vs_r1_.xyz));
    vs_r1_.x = _e341.x;
    vs_r1_.y = _e341.y;
    vs_r1_.z = _e341.z;
    let _e351 = vs_r2_.xyz;
    vs_o5_.x = _e351.x;
    vs_o5_.y = _e351.y;
    vs_o5_.z = _e351.z;
    vs_r1_.w = (vs_r1_.z + 1f);
    vs_r1_.z = dot(vs_r1_.xyw, vs_r1_.xyw);
    if (vs_r1_.z == 0f) {
        local = FLT_MAX;
    } else {
        local = inverseSqrt(abs(vs_r1_.z));
    }
    vs_r1_.z = local;
    let _e390 = (vs_r1_.xy * vs_r1_.zz);
    vs_r1_.x = _e390.x;
    vs_r1_.y = _e390.y;
    let _e412 = ((vs_r1_.xy * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    vs_o3_.x = _e412.x;
    vs_o3_.y = _e412.y;
    io_5_4_.x = dot(vs_r0_, global.vs_uniforms_vec4_[224]);
    io_5_4_.y = dot(vs_r0_, global.vs_uniforms_vec4_[225]);
    io_5_4_.z = dot(vs_r0_, global.vs_uniforms_vec4_[226]);
    let _e438 = vs_r0_.xyz;
    vs_o4_.x = _e438.x;
    vs_o4_.y = _e438.y;
    vs_o4_.z = _e438.z;
    return VertexOutput(vs_o1_, vs_o2_, vs_o3_, vs_o4_, vs_o5_, io_5_4_, vs_o7_v, gl_Position);
}
