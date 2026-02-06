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

@vertex fn main(@location(0) vs_v0_: vec4<f32>, @location(3) vs_v1_: vec4<f32>, @location(6) vs_v2_: vec4<f32>, @location(7) vs_v3_: vec4<f32>) -> VertexOutput {
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

    vs_r0_.w = 1f;
    vs_r0_.x = dot(global.vs_uniforms_vec4_[31], vs_v0_);
    vs_r0_.y = dot(global.vs_uniforms_vec4_[32], vs_v0_);
    vs_r0_.z = dot(global.vs_uniforms_vec4_[33], vs_v0_);
    gl_Position.x = dot(global.vs_uniforms_vec4_[2], vs_r0_);
    gl_Position.y = dot(global.vs_uniforms_vec4_[3], vs_r0_);
    gl_Position.z = dot(global.vs_uniforms_vec4_[4], vs_r0_);
    gl_Position.w = dot(global.vs_uniforms_vec4_[5], vs_r0_);
    let _e80 = (-(vs_r0_.xyz) + global.vs_uniforms_vec4_[21].xyz);
    vs_r1_.x = _e80.x;
    vs_r1_.y = _e80.y;
    vs_r1_.z = _e80.z;
    vs_r2_.x = dot(vs_r1_.xyz, vs_r1_.xyz);
    if (vs_r2_.x == 0f) {
        local = FLT_MAX;
    } else {
        local = inverseSqrt(abs(vs_r2_.x));
    }
    vs_r3_.x = local;
    let _e113 = (-(vs_r0_.xyz) + global.vs_uniforms_vec4_[22].xyz);
    vs_r4_.x = _e113.x;
    vs_r4_.y = _e113.y;
    vs_r4_.z = _e113.z;
    vs_r2_.y = dot(vs_r4_.xyz, vs_r4_.xyz);
    if (vs_r2_.y == 0f) {
        local_1 = FLT_MAX;
    } else {
        local_1 = inverseSqrt(abs(vs_r2_.y));
    }
    vs_r3_.y = local_1;
    let _e143 = (vs_r2_.xy * vs_r3_.xy);
    vs_r2_.z = _e143.x;
    vs_r2_.w = _e143.y;
    let _e156 = (vs_r2_.zw * global.vs_uniforms_vec4_[26].xy);
    vs_r2_.z = _e156.x;
    vs_r2_.w = _e156.y;
    let _e172 = ((vs_r2_.xy * global.vs_uniforms_vec4_[27].xy) + vs_r2_.zw);
    vs_r2_.x = _e172.x;
    vs_r2_.y = _e172.y;
    let _e185 = (vs_r2_.xy + global.vs_uniforms_vec4_[25].xy);
    vs_r2_.x = _e185.x;
    vs_r2_.y = _e185.y;
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
    let _e240 = normalize(vs_r2_.xyz);
    vs_r6_.x = _e240.x;
    vs_r6_.y = _e240.y;
    vs_r6_.z = _e240.z;
    vs_r1_.x = dot(vs_r1_.xyz, vs_r6_.xyz);
    vs_r1_.y = dot(vs_r4_.xyz, vs_r6_.xyz);
    let _e265 = (vs_r3_.xy * vs_r1_.xy);
    vs_r1_.x = _e265.x;
    vs_r1_.y = _e265.y;
    let _e280 = max(vs_r1_.xy, vec2<f32>(0f, 0f));
    vs_r1_.x = _e280.x;
    vs_r1_.y = _e280.y;
    let _e291 = (vs_r5_.xy * vs_r1_.xy);
    vs_r1_.x = _e291.x;
    vs_r1_.y = _e291.y;
    vs_r1_.z = clamp(dot(-(global.vs_uniforms_vec4_[12].xyz), vs_r6_.xyz), 0f, 1f);
    let _e311 = vs_r6_.xyz;
    vs_o5_.x = _e311.x;
    vs_o5_.y = _e311.y;
    vs_o5_.z = _e311.z;
    let _e323 = global.vs_uniforms_vec4_[10].xyz;
    vs_r2_.x = _e323.x;
    vs_r2_.y = _e323.y;
    vs_r2_.z = _e323.z;
    let _e341 = ((vs_r1_.zzz * vs_r2_.xyz) + global.vs_uniforms_vec4_[11].xyz);
    vs_r2_.x = _e341.x;
    vs_r2_.y = _e341.y;
    vs_r2_.z = _e341.z;
    let _e359 = ((global.vs_uniforms_vec4_[17].xyz * vs_r1_.xxx) + vs_r2_.xyz);
    vs_r1_.x = _e359.x;
    vs_r1_.z = _e359.y;
    vs_r1_.w = _e359.z;
    let _e382 = clamp(((global.vs_uniforms_vec4_[18].xyz * vs_r1_.yyy) + vs_r1_.xzw), vec3(0f), vec3(1f));
    vs_r1_.x = _e382.x;
    vs_r1_.y = _e382.y;
    vs_r1_.z = _e382.z;
    vs_r1_.w = 1f;
    vs_r2_ = global.vs_uniforms_vec4_[28];
    vs_o1_ = clamp(((vs_r2_ * vs_r1_) + global.vs_uniforms_vec4_[29]), vec4(0f), vec4(1f));
    vs_r1_.x = ((vs_r0_.z * global.vs_uniforms_vec4_[30].x) + global.vs_uniforms_vec4_[30].y);
    vs_r1_.x = max(vs_r1_.x, 0f);
    vs_r2_.x = pow(abs(vs_r1_.x), global.vs_uniforms_vec4_[30].z);
    vs_o7_v.x = min(vs_r2_.x, 1f);
    let _e467 = ((vs_v2_.xyx * vec3<f32>(1f, 1f, 0f)) + vec3<f32>(0f, 0f, 1f));
    vs_r1_.x = _e467.x;
    vs_r1_.y = _e467.y;
    vs_r1_.z = _e467.z;
    vs_o2_.x = dot(global.vs_uniforms_vec4_[6].xyw, vs_r1_.xyz);
    vs_o2_.y = dot(global.vs_uniforms_vec4_[7].xyw, vs_r1_.xyz);
    let _e507 = ((vs_v3_.xyx * vec3<f32>(1f, 1f, 0f)) + vec3<f32>(0f, 0f, 1f));
    vs_r1_.x = _e507.x;
    vs_r1_.y = _e507.y;
    vs_r1_.z = _e507.z;
    vs_o3_.x = dot(global.vs_uniforms_vec4_[8].xyw, vs_r1_.xyz);
    vs_o3_.y = dot(global.vs_uniforms_vec4_[9].xyw, vs_r1_.xyz);
    io_5_4_.x = dot(vs_r0_, global.vs_uniforms_vec4_[224]);
    io_5_4_.y = dot(vs_r0_, global.vs_uniforms_vec4_[225]);
    io_5_4_.z = dot(vs_r0_, global.vs_uniforms_vec4_[226]);
    let _e551 = vs_r0_.xyz;
    vs_o4_.x = _e551.x;
    vs_o4_.y = _e551.y;
    vs_o4_.z = _e551.z;
    return VertexOutput(vs_o1_, vs_o2_, vs_o3_, vs_o4_, vs_o5_, io_5_4_, vs_o7_v, gl_Position);
}
