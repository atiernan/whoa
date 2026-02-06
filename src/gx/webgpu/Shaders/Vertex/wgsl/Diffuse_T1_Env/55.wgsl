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

@vertex fn main(@location(0) vs_v0_: vec4<f32>, @location(1) vs_v1_: vec4<f32>, @location(2) @interpolate(flat) vs_v2_u: vec4<u32>, @location(3) vs_v3_: vec4<f32>, @location(6) vs_v4_: vec4<f32>) -> VertexOutput {
    var vs_r0_: vec4<f32>;
    var vs_r1_: vec4<f32>;
    var vs_r2_: vec4<f32>;
    var vs_r3_: vec4<f32>;
    var vs_r4_: vec4<f32>;
    var vs_r5_: vec4<f32>;
    var vs_a0_: vec4<i32>;
    var vs_o1_: vec4<f32>;
    var vs_o2_: vec4<f32>;
    var vs_o3_: vec4<f32>;
    var vs_o4_: vec4<f32>;
    var vs_o5_: vec4<f32>;
    var io_5_4_: vec4<f32>;
    var vs_o7_v: vec4<f32>;
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
    let _e228 = normalize(vs_r0_.xyz);
    vs_r2_.x = _e228.x;
    vs_r2_.y = _e228.y;
    vs_r2_.z = _e228.z;
    vs_r1_.w = 1f;
    gl_Position.x = dot(global.vs_uniforms_vec4_[2], vs_r1_);
    gl_Position.y = dot(global.vs_uniforms_vec4_[3], vs_r1_);
    gl_Position.z = dot(global.vs_uniforms_vec4_[4], vs_r1_);
    gl_Position.w = dot(global.vs_uniforms_vec4_[5], vs_r1_);
    vs_r0_.x = clamp(dot(-(global.vs_uniforms_vec4_[12].xyz), vs_r2_.xyz), 0f, 1f);
    let _e283 = global.vs_uniforms_vec4_[10].xyz;
    vs_r3_.x = _e283.x;
    vs_r3_.y = _e283.y;
    vs_r3_.z = _e283.z;
    let _e301 = ((vs_r0_.xxx * vs_r3_.xyz) + global.vs_uniforms_vec4_[11].xyz);
    vs_r0_.x = _e301.x;
    vs_r0_.y = _e301.y;
    vs_r0_.z = _e301.z;
    let _e317 = (-(vs_r1_.xyz) + global.vs_uniforms_vec4_[21].xyz);
    vs_r3_.x = _e317.x;
    vs_r3_.y = _e317.y;
    vs_r3_.z = _e317.z;
    vs_r4_.x = dot(vs_r3_.xyz, vs_r3_.xyz);
    vs_r3_.x = dot(vs_r3_.xyz, vs_r2_.xyz);
    let _e345 = (-(vs_r1_.xyz) + global.vs_uniforms_vec4_[22].xyz);
    vs_r5_.x = _e345.x;
    vs_r5_.y = _e345.y;
    vs_r5_.z = _e345.z;
    vs_r4_.y = dot(vs_r5_.xyz, vs_r5_.xyz);
    vs_r3_.y = dot(vs_r5_.xyz, vs_r2_.xyz);
    if (vs_r4_.x == 0f) {
        local = FLT_MAX;
    } else {
        local = inverseSqrt(abs(vs_r4_.x));
    }
    vs_r5_.x = local;
    if (vs_r4_.y == 0f) {
        local_1 = FLT_MAX;
    } else {
        local_1 = inverseSqrt(abs(vs_r4_.y));
    }
    vs_r5_.y = local_1;
    let _e392 = (vs_r4_.xy * vs_r5_.xy);
    vs_r3_.z = _e392.x;
    vs_r3_.w = _e392.y;
    let _e403 = (vs_r3_.xy * vs_r5_.xy);
    vs_r3_.x = _e403.x;
    vs_r3_.y = _e403.y;
    let _e418 = max(vs_r3_.xy, vec2<f32>(0f, 0f));
    vs_r3_.x = _e418.x;
    vs_r3_.y = _e418.y;
    let _e431 = (vs_r3_.zw * global.vs_uniforms_vec4_[26].xy);
    vs_r3_.z = _e431.x;
    vs_r3_.w = _e431.y;
    let _e447 = ((vs_r4_.xy * global.vs_uniforms_vec4_[27].xy) + vs_r3_.zw);
    vs_r3_.z = _e447.x;
    vs_r3_.w = _e447.y;
    let _e460 = (vs_r3_.zw + global.vs_uniforms_vec4_[25].xy);
    vs_r3_.z = _e460.x;
    vs_r3_.w = _e460.y;
    if (vs_r3_.z == 0f) {
        local_2 = FLT_MAX;
    } else {
        local_2 = (1f / vs_r3_.z);
    }
    vs_r4_.x = local_2;
    if (vs_r3_.w == 0f) {
        local_3 = FLT_MAX;
    } else {
        local_3 = (1f / vs_r3_.w);
    }
    vs_r4_.y = local_3;
    let _e493 = (vs_r3_.xy * vs_r4_.xy);
    vs_r3_.x = _e493.x;
    vs_r3_.y = _e493.y;
    let _e509 = ((global.vs_uniforms_vec4_[17].xyz * vs_r3_.xxx) + vs_r0_.xyz);
    vs_r0_.x = _e509.x;
    vs_r0_.y = _e509.y;
    vs_r0_.z = _e509.z;
    let _e532 = clamp(((global.vs_uniforms_vec4_[18].xyz * vs_r3_.yyy) + vs_r0_.xyz), vec3(0f), vec3(1f));
    vs_r0_.x = _e532.x;
    vs_r0_.y = _e532.y;
    vs_r0_.z = _e532.z;
    vs_r0_.w = 1f;
    vs_r3_ = global.vs_uniforms_vec4_[28];
    vs_o1_ = clamp(((vs_r3_ * vs_r0_) + global.vs_uniforms_vec4_[29]), vec4(0f), vec4(1f));
    vs_r0_.x = ((vs_r1_.z * global.vs_uniforms_vec4_[30].x) + global.vs_uniforms_vec4_[30].y);
    vs_r0_.x = max(vs_r0_.x, 0f);
    vs_r2_.w = pow(abs(vs_r0_.x), global.vs_uniforms_vec4_[30].z);
    vs_o7_v.x = min(vs_r2_.w, 1f);
    let _e617 = ((vs_v4_.xyx * vec3<f32>(1f, 1f, 0f)) + vec3<f32>(0f, 0f, 1f));
    vs_r0_.x = _e617.x;
    vs_r0_.y = _e617.y;
    vs_r0_.z = _e617.z;
    vs_o2_.x = dot(global.vs_uniforms_vec4_[6].xyw, vs_r0_.xyz);
    vs_o2_.y = dot(global.vs_uniforms_vec4_[7].xyw, vs_r0_.xyz);
    let _e644 = normalize(vs_r1_.xyz);
    vs_r0_.x = _e644.x;
    vs_r0_.y = _e644.y;
    vs_r0_.z = _e644.z;
    vs_r0_.w = dot(-(vs_r0_.xyz), vs_r2_.xyz);
    vs_r0_.w = (vs_r0_.w + vs_r0_.w);
    let _e675 = ((vs_r0_.www * -(vs_r2_.xyz)) + -(vs_r0_.xyz));
    vs_r0_.x = _e675.x;
    vs_r0_.y = _e675.y;
    vs_r0_.z = _e675.z;
    let _e685 = vs_r2_.xyz;
    vs_o5_.x = _e685.x;
    vs_o5_.y = _e685.y;
    vs_o5_.z = _e685.z;
    vs_r0_.w = (vs_r0_.z + 1f);
    vs_r0_.z = dot(vs_r0_.xyw, vs_r0_.xyw);
    if (vs_r0_.z == 0f) {
        local_4 = FLT_MAX;
    } else {
        local_4 = inverseSqrt(abs(vs_r0_.z));
    }
    vs_r0_.z = local_4;
    let _e724 = (vs_r0_.xy * vs_r0_.zz);
    vs_r0_.x = _e724.x;
    vs_r0_.y = _e724.y;
    let _e746 = ((vs_r0_.xy * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    vs_o3_.x = _e746.x;
    vs_o3_.y = _e746.y;
    io_5_4_.x = dot(vs_r1_, global.vs_uniforms_vec4_[224]);
    io_5_4_.y = dot(vs_r1_, global.vs_uniforms_vec4_[225]);
    io_5_4_.z = dot(vs_r1_, global.vs_uniforms_vec4_[226]);
    let _e772 = vs_r1_.xyz;
    vs_o4_.x = _e772.x;
    vs_o4_.y = _e772.y;
    vs_o4_.z = _e772.z;
    return VertexOutput(vs_o1_, vs_o2_, vs_o3_, vs_o4_, vs_o5_, io_5_4_, vs_o7_v, gl_Position);
}
