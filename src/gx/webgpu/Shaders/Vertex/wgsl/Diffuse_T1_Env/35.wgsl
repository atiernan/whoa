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
    var vs_r5_: vec4<f32>;
    var vs_r6_: vec4<f32>;
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
    var local_3: f32;
    var local_4: f32;

    vs_r0_.w = 1f;
    vs_r0_.x = dot(global.vs_uniforms_vec4_[31], vs_v0_);
    vs_r0_.y = dot(global.vs_uniforms_vec4_[32], vs_v0_);
    vs_r0_.z = dot(global.vs_uniforms_vec4_[33], vs_v0_);
    gl_Position.x = dot(global.vs_uniforms_vec4_[2], vs_r0_);
    gl_Position.y = dot(global.vs_uniforms_vec4_[3], vs_r0_);
    gl_Position.z = dot(global.vs_uniforms_vec4_[4], vs_r0_);
    gl_Position.w = dot(global.vs_uniforms_vec4_[5], vs_r0_);
    let _e79 = (-(vs_r0_.xyz) + global.vs_uniforms_vec4_[21].xyz);
    vs_r1_.x = _e79.x;
    vs_r1_.y = _e79.y;
    vs_r1_.z = _e79.z;
    vs_r2_.x = dot(vs_r1_.xyz, vs_r1_.xyz);
    if (vs_r2_.x == 0f) {
        local = FLT_MAX;
    } else {
        local = inverseSqrt(abs(vs_r2_.x));
    }
    vs_r3_.x = local;
    let _e112 = (-(vs_r0_.xyz) + global.vs_uniforms_vec4_[22].xyz);
    vs_r4_.x = _e112.x;
    vs_r4_.y = _e112.y;
    vs_r4_.z = _e112.z;
    vs_r2_.y = dot(vs_r4_.xyz, vs_r4_.xyz);
    if (vs_r2_.y == 0f) {
        local_1 = FLT_MAX;
    } else {
        local_1 = inverseSqrt(abs(vs_r2_.y));
    }
    vs_r3_.y = local_1;
    let _e142 = (vs_r2_.xy * vs_r3_.xy);
    vs_r2_.z = _e142.x;
    vs_r2_.w = _e142.y;
    let _e155 = (vs_r2_.zw * global.vs_uniforms_vec4_[26].xy);
    vs_r2_.z = _e155.x;
    vs_r2_.w = _e155.y;
    let _e171 = ((vs_r2_.xy * global.vs_uniforms_vec4_[27].xy) + vs_r2_.zw);
    vs_r2_.x = _e171.x;
    vs_r2_.y = _e171.y;
    let _e184 = (vs_r2_.xy + global.vs_uniforms_vec4_[25].xy);
    vs_r2_.x = _e184.x;
    vs_r2_.y = _e184.y;
    if (vs_r2_.x == 0f) {
        local_2 = FLT_MAX;
    } else {
        local_2 = (1f / vs_r2_.x);
    }
    vs_r5_.x = local_2;
    if (vs_r2_.y == 0f) {
        local_3 = FLT_MAX;
    } else {
        local_3 = (1f / vs_r2_.y);
    }
    vs_r5_.y = local_3;
    vs_r2_.x = dot(global.vs_uniforms_vec4_[31].xyz, vs_v1_.xyz);
    vs_r2_.y = dot(global.vs_uniforms_vec4_[32].xyz, vs_v1_.xyz);
    vs_r2_.z = dot(global.vs_uniforms_vec4_[33].xyz, vs_v1_.xyz);
    let _e239 = normalize(vs_r2_.xyz);
    vs_r6_.x = _e239.x;
    vs_r6_.y = _e239.y;
    vs_r6_.z = _e239.z;
    vs_r1_.x = dot(vs_r1_.xyz, vs_r6_.xyz);
    vs_r1_.y = dot(vs_r4_.xyz, vs_r6_.xyz);
    let _e264 = (vs_r3_.xy * vs_r1_.xy);
    vs_r1_.x = _e264.x;
    vs_r1_.y = _e264.y;
    let _e279 = max(vs_r1_.xy, vec2<f32>(0f, 0f));
    vs_r1_.x = _e279.x;
    vs_r1_.y = _e279.y;
    let _e290 = (vs_r5_.xy * vs_r1_.xy);
    vs_r1_.x = _e290.x;
    vs_r1_.y = _e290.y;
    vs_r1_.z = clamp(dot(-(global.vs_uniforms_vec4_[12].xyz), vs_r6_.xyz), 0f, 1f);
    let _e312 = global.vs_uniforms_vec4_[10].xyz;
    vs_r2_.x = _e312.x;
    vs_r2_.y = _e312.y;
    vs_r2_.z = _e312.z;
    let _e330 = ((vs_r1_.zzz * vs_r2_.xyz) + global.vs_uniforms_vec4_[11].xyz);
    vs_r2_.x = _e330.x;
    vs_r2_.y = _e330.y;
    vs_r2_.z = _e330.z;
    let _e348 = ((global.vs_uniforms_vec4_[17].xyz * vs_r1_.xxx) + vs_r2_.xyz);
    vs_r1_.x = _e348.x;
    vs_r1_.z = _e348.y;
    vs_r1_.w = _e348.z;
    let _e371 = clamp(((global.vs_uniforms_vec4_[18].xyz * vs_r1_.yyy) + vs_r1_.xzw), vec3(0f), vec3(1f));
    vs_r1_.x = _e371.x;
    vs_r1_.y = _e371.y;
    vs_r1_.z = _e371.z;
    vs_r1_.w = 1f;
    vs_r2_ = global.vs_uniforms_vec4_[28];
    vs_o1_ = clamp(((vs_r2_ * vs_r1_) + global.vs_uniforms_vec4_[29]), vec4(0f), vec4(1f));
    vs_r1_.x = ((vs_r0_.z * global.vs_uniforms_vec4_[30].x) + global.vs_uniforms_vec4_[30].y);
    vs_r1_.x = max(vs_r1_.x, 0f);
    vs_r2_.x = pow(abs(vs_r1_.x), global.vs_uniforms_vec4_[30].z);
    vs_o7_v.x = min(vs_r2_.x, 1f);
    let _e456 = ((vs_v2_.xyx * vec3<f32>(1f, 1f, 0f)) + vec3<f32>(0f, 0f, 1f));
    vs_r1_.x = _e456.x;
    vs_r1_.y = _e456.y;
    vs_r1_.z = _e456.z;
    vs_o2_.x = dot(global.vs_uniforms_vec4_[6].xyw, vs_r1_.xyz);
    vs_o2_.y = dot(global.vs_uniforms_vec4_[7].xyw, vs_r1_.xyz);
    let _e483 = normalize(vs_r0_.xyz);
    vs_r1_.x = _e483.x;
    vs_r1_.y = _e483.y;
    vs_r1_.z = _e483.z;
    vs_r1_.w = dot(-(vs_r1_.xyz), vs_r6_.xyz);
    vs_r1_.w = (vs_r1_.w + vs_r1_.w);
    let _e514 = ((vs_r1_.www * -(vs_r6_.xyz)) + -(vs_r1_.xyz));
    vs_r1_.x = _e514.x;
    vs_r1_.y = _e514.y;
    vs_r1_.z = _e514.z;
    let _e524 = vs_r6_.xyz;
    vs_o5_.x = _e524.x;
    vs_o5_.y = _e524.y;
    vs_o5_.z = _e524.z;
    vs_r1_.w = (vs_r1_.z + 1f);
    vs_r1_.z = dot(vs_r1_.xyw, vs_r1_.xyw);
    if (vs_r1_.z == 0f) {
        local_4 = FLT_MAX;
    } else {
        local_4 = inverseSqrt(abs(vs_r1_.z));
    }
    vs_r1_.z = local_4;
    let _e563 = (vs_r1_.xy * vs_r1_.zz);
    vs_r1_.x = _e563.x;
    vs_r1_.y = _e563.y;
    let _e585 = ((vs_r1_.xy * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    vs_o3_.x = _e585.x;
    vs_o3_.y = _e585.y;
    io_5_4_.x = dot(vs_r0_, global.vs_uniforms_vec4_[224]);
    io_5_4_.y = dot(vs_r0_, global.vs_uniforms_vec4_[225]);
    io_5_4_.z = dot(vs_r0_, global.vs_uniforms_vec4_[226]);
    let _e611 = vs_r0_.xyz;
    vs_o4_.x = _e611.x;
    vs_o4_.y = _e611.y;
    vs_o4_.z = _e611.z;
    return VertexOutput(vs_o1_, vs_o2_, vs_o3_, vs_o4_, vs_o5_, io_5_4_, vs_o7_v, gl_Position);
}
