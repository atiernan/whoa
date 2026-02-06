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
    @location(7) io_5_6_: vec4<f32>,
    @location(10) vs_o9_v: vec4<f32>,
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
    var io_5_6_: vec4<f32>;
    var vs_o9_v: vec4<f32>;
    var gl_Position: vec4<f32>;

    var vs_v2_: vec4<f32>;
    var local: f32;
    var local_1: f32;
    var local_2: f32;
    var local_3: f32;
    var local_4: f32;

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
    let _e231 = normalize(vs_r0_.xyz);
    vs_r2_.x = _e231.x;
    vs_r2_.y = _e231.y;
    vs_r2_.z = _e231.z;
    vs_r1_.w = 1f;
    gl_Position.x = dot(global.vs_uniforms_vec4_[2], vs_r1_);
    gl_Position.y = dot(global.vs_uniforms_vec4_[3], vs_r1_);
    gl_Position.z = dot(global.vs_uniforms_vec4_[4], vs_r1_);
    gl_Position.w = dot(global.vs_uniforms_vec4_[5], vs_r1_);
    vs_r0_.w = 1f;
    vs_r2_.w = clamp(dot(-(global.vs_uniforms_vec4_[12].xyz), vs_r2_.xyz), 0f, 1f);
    let _e292 = global.vs_uniforms_vec4_[10].xyz;
    vs_r3_.x = _e292.x;
    vs_r3_.y = _e292.y;
    vs_r3_.z = _e292.z;
    let _e310 = ((vs_r2_.www * vs_r3_.xyz) + global.vs_uniforms_vec4_[11].xyz);
    vs_r3_.x = _e310.x;
    vs_r3_.y = _e310.y;
    vs_r3_.z = _e310.z;
    let _e326 = (-(vs_r1_.xyz) + global.vs_uniforms_vec4_[21].xyz);
    vs_r4_.x = _e326.x;
    vs_r4_.y = _e326.y;
    vs_r4_.z = _e326.z;
    vs_r5_.x = dot(vs_r4_.xyz, vs_r2_.xyz);
    vs_r4_.x = dot(vs_r4_.xyz, vs_r4_.xyz);
    let _e354 = (-(vs_r1_.xyz) + global.vs_uniforms_vec4_[22].xyz);
    vs_r6_.x = _e354.x;
    vs_r6_.y = _e354.y;
    vs_r6_.z = _e354.z;
    vs_r5_.y = dot(vs_r6_.xyz, vs_r2_.xyz);
    vs_r4_.y = dot(vs_r6_.xyz, vs_r6_.xyz);
    if (vs_r4_.x == 0f) {
        local = FLT_MAX;
    } else {
        local = inverseSqrt(abs(vs_r4_.x));
    }
    vs_r6_.x = local;
    if (vs_r4_.y == 0f) {
        local_1 = FLT_MAX;
    } else {
        local_1 = inverseSqrt(abs(vs_r4_.y));
    }
    vs_r6_.y = local_1;
    let _e401 = (vs_r5_.xy * vs_r6_.xy);
    vs_r4_.z = _e401.x;
    vs_r4_.w = _e401.y;
    let _e412 = (vs_r4_.xy * vs_r6_.xy);
    vs_r5_.x = _e412.x;
    vs_r5_.y = _e412.y;
    let _e425 = (vs_r5_.xy * global.vs_uniforms_vec4_[26].xy);
    vs_r5_.x = _e425.x;
    vs_r5_.y = _e425.y;
    let _e441 = ((vs_r4_.xy * global.vs_uniforms_vec4_[27].xy) + vs_r5_.xy);
    vs_r4_.x = _e441.x;
    vs_r4_.y = _e441.y;
    let _e454 = (vs_r4_.xy + global.vs_uniforms_vec4_[25].xy);
    vs_r4_.x = _e454.x;
    vs_r4_.y = _e454.y;
    let _e469 = max(vs_r4_.zw, vec2<f32>(0f, 0f));
    vs_r4_.z = _e469.x;
    vs_r4_.w = _e469.y;
    if (vs_r4_.x == 0f) {
        local_2 = FLT_MAX;
    } else {
        local_2 = (1f / vs_r4_.x);
    }
    vs_r5_.x = local_2;
    if (vs_r4_.y == 0f) {
        local_3 = FLT_MAX;
    } else {
        local_3 = (1f / vs_r4_.y);
    }
    vs_r5_.y = local_3;
    let _e502 = (vs_r4_.zw * vs_r5_.xy);
    vs_r4_.x = _e502.x;
    vs_r4_.y = _e502.y;
    let _e518 = ((global.vs_uniforms_vec4_[17].xyz * vs_r4_.xxx) + vs_r3_.xyz);
    vs_r3_.x = _e518.x;
    vs_r3_.y = _e518.y;
    vs_r3_.z = _e518.z;
    let _e541 = clamp(((global.vs_uniforms_vec4_[18].xyz * vs_r4_.yyy) + vs_r3_.xyz), vec3(0f), vec3(1f));
    vs_r0_.x = _e541.x;
    vs_r0_.y = _e541.y;
    vs_r0_.z = _e541.z;
    vs_r3_ = global.vs_uniforms_vec4_[28];
    vs_o1_ = clamp(((vs_r3_ * vs_r0_) + global.vs_uniforms_vec4_[29]), vec4(0f), vec4(1f));
    vs_r0_.x = ((vs_r1_.z * global.vs_uniforms_vec4_[30].x) + global.vs_uniforms_vec4_[30].y);
    vs_r0_.x = max(vs_r0_.x, 0f);
    vs_r2_.w = pow(abs(vs_r0_.x), global.vs_uniforms_vec4_[30].z);
    vs_o9_v.x = min(vs_r2_.w, 1f);
    let _e620 = ((vs_v4_.xyx * vec3<f32>(1f, 1f, 0f)) + vec3<f32>(0f, 0f, 1f));
    vs_r0_.x = _e620.x;
    vs_r0_.y = _e620.y;
    vs_r0_.z = _e620.z;
    vs_o2_.x = dot(global.vs_uniforms_vec4_[6].xyw, vs_r0_.xyz);
    vs_o2_.y = dot(global.vs_uniforms_vec4_[7].xyw, vs_r0_.xyz);
    let _e647 = normalize(vs_r1_.xyz);
    vs_r0_.x = _e647.x;
    vs_r0_.y = _e647.y;
    vs_r0_.z = _e647.z;
    vs_r0_.w = dot(-(vs_r0_.xyz), vs_r2_.xyz);
    vs_r0_.w = (vs_r0_.w + vs_r0_.w);
    let _e678 = ((vs_r0_.www * -(vs_r2_.xyz)) + -(vs_r0_.xyz));
    vs_r0_.x = _e678.x;
    vs_r0_.y = _e678.y;
    vs_r0_.z = _e678.z;
    let _e688 = vs_r2_.xyz;
    vs_o5_.x = _e688.x;
    vs_o5_.y = _e688.y;
    vs_o5_.z = _e688.z;
    vs_r0_.w = (vs_r0_.z + 1f);
    vs_r0_.z = dot(vs_r0_.xyw, vs_r0_.xyw);
    if (vs_r0_.z == 0f) {
        local_4 = FLT_MAX;
    } else {
        local_4 = inverseSqrt(abs(vs_r0_.z));
    }
    vs_r0_.z = local_4;
    let _e727 = (vs_r0_.xy * vs_r0_.zz);
    vs_r0_.x = _e727.x;
    vs_r0_.y = _e727.y;
    let _e749 = ((vs_r0_.xy * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    vs_o3_.x = _e749.x;
    vs_o3_.y = _e749.y;
    io_5_4_.x = dot(vs_r1_, global.vs_uniforms_vec4_[224]);
    io_5_4_.y = dot(vs_r1_, global.vs_uniforms_vec4_[225]);
    io_5_4_.z = dot(vs_r1_, global.vs_uniforms_vec4_[226]);
    io_5_5_.x = dot(vs_r1_, global.vs_uniforms_vec4_[227]);
    io_5_5_.y = dot(vs_r1_, global.vs_uniforms_vec4_[228]);
    io_5_5_.z = dot(vs_r1_, global.vs_uniforms_vec4_[229]);
    io_5_6_.x = dot(vs_r1_, global.vs_uniforms_vec4_[230]);
    io_5_6_.y = dot(vs_r1_, global.vs_uniforms_vec4_[231]);
    io_5_6_.z = dot(vs_r1_, global.vs_uniforms_vec4_[232]);
    io_5_4_.w = dot(vs_r1_, global.vs_uniforms_vec4_[233]);
    io_5_5_.w = dot(vs_r1_, global.vs_uniforms_vec4_[234]);
    io_5_6_.w = dot(vs_r1_, global.vs_uniforms_vec4_[235]);
    let _e829 = vs_r1_.xyz;
    vs_o4_.x = _e829.x;
    vs_o4_.y = _e829.y;
    vs_o4_.z = _e829.z;
    return VertexOutput(vs_o1_, vs_o2_, vs_o3_, vs_o4_, vs_o5_, io_5_4_, io_5_5_, io_5_6_, vs_o9_v, gl_Position);
}
