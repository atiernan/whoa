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
    var vs_o1_: vec4<f32>;
    var vs_o2_: vec4<f32>;
    var vs_o3_: vec4<f32>;
    var vs_o4_: vec4<f32>;
    var vs_o5_: vec4<f32>;
    var io_5_4_: vec4<f32>;
    var vs_o7_v: vec4<f32>;
    var gl_Position: vec4<f32>;

    var local: f32;

    vs_r0_.w = 1f;
    vs_r0_.x = dot(global.vs_uniforms_vec4_[31], vs_v0_);
    vs_r0_.y = dot(global.vs_uniforms_vec4_[32], vs_v0_);
    vs_r0_.z = dot(global.vs_uniforms_vec4_[33], vs_v0_);
    gl_Position.x = dot(global.vs_uniforms_vec4_[2], vs_r0_);
    gl_Position.y = dot(global.vs_uniforms_vec4_[3], vs_r0_);
    gl_Position.z = dot(global.vs_uniforms_vec4_[4], vs_r0_);
    gl_Position.w = dot(global.vs_uniforms_vec4_[5], vs_r0_);
    vs_r1_ = global.vs_uniforms_vec4_[28];
    vs_o1_ = clamp((vs_r1_ + global.vs_uniforms_vec4_[29]), vec4(0f), vec4(1f));
    vs_r1_.x = ((vs_r0_.z * global.vs_uniforms_vec4_[30].x) + global.vs_uniforms_vec4_[30].y);
    vs_r1_.x = max(vs_r1_.x, 0f);
    vs_r2_.x = pow(abs(vs_r1_.x), global.vs_uniforms_vec4_[30].z);
    vs_o7_v.x = min(vs_r2_.x, 1f);
    let _e136 = ((vs_v2_.xyx * vec3<f32>(1f, 1f, 0f)) + vec3<f32>(0f, 0f, 1f));
    vs_r1_.x = _e136.x;
    vs_r1_.y = _e136.y;
    vs_r1_.z = _e136.z;
    vs_o2_.x = dot(global.vs_uniforms_vec4_[6].xyw, vs_r1_.xyz);
    vs_o2_.y = dot(global.vs_uniforms_vec4_[7].xyw, vs_r1_.xyz);
    vs_r1_.x = dot(global.vs_uniforms_vec4_[31].xyz, vs_v1_.xyz);
    vs_r1_.y = dot(global.vs_uniforms_vec4_[32].xyz, vs_v1_.xyz);
    vs_r1_.z = dot(global.vs_uniforms_vec4_[33].xyz, vs_v1_.xyz);
    let _e187 = normalize(vs_r1_.xyz);
    vs_r2_.x = _e187.x;
    vs_r2_.y = _e187.y;
    vs_r2_.z = _e187.z;
    let _e198 = normalize(vs_r0_.xyz);
    vs_r1_.x = _e198.x;
    vs_r1_.y = _e198.y;
    vs_r1_.z = _e198.z;
    vs_r1_.w = dot(-(vs_r1_.xyz), vs_r2_.xyz);
    vs_r1_.w = (vs_r1_.w + vs_r1_.w);
    let _e229 = ((vs_r1_.www * -(vs_r2_.xyz)) + -(vs_r1_.xyz));
    vs_r1_.x = _e229.x;
    vs_r1_.y = _e229.y;
    vs_r1_.z = _e229.z;
    let _e239 = vs_r2_.xyz;
    vs_o5_.x = _e239.x;
    vs_o5_.y = _e239.y;
    vs_o5_.z = _e239.z;
    vs_r1_.w = (vs_r1_.z + 1f);
    vs_r1_.z = dot(vs_r1_.xyw, vs_r1_.xyw);
    if (vs_r1_.z == 0f) {
        local = FLT_MAX;
    } else {
        local = inverseSqrt(abs(vs_r1_.z));
    }
    vs_r1_.z = local;
    let _e278 = (vs_r1_.xy * vs_r1_.zz);
    vs_r1_.x = _e278.x;
    vs_r1_.y = _e278.y;
    let _e300 = ((vs_r1_.xy * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    vs_o3_.x = _e300.x;
    vs_o3_.y = _e300.y;
    io_5_4_.x = dot(vs_r0_, global.vs_uniforms_vec4_[224]);
    io_5_4_.y = dot(vs_r0_, global.vs_uniforms_vec4_[225]);
    io_5_4_.z = dot(vs_r0_, global.vs_uniforms_vec4_[226]);
    let _e326 = vs_r0_.xyz;
    vs_o4_.x = _e326.x;
    vs_o4_.y = _e326.y;
    vs_o4_.z = _e326.z;
    return VertexOutput(vs_o1_, vs_o2_, vs_o3_, vs_o4_, vs_o5_, io_5_4_, vs_o7_v, gl_Position);
}
