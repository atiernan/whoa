struct UniformBlock_0_ {
    vs_uniforms_vec4_: array<vec4<f32>, 256>,
}

struct VertexOutput {
    @location(0) vs_o1_: vec4<f32>,
    @location(1) vs_o2_: vec4<f32>,
    @location(2) vs_o3_: vec4<f32>,
    @location(3) vs_o4_: vec4<f32>,
    @location(4) vs_o5_: vec4<f32>,
    @location(10) vs_o6_v: vec4<f32>,
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
    var vs_a0_: vec4<i32>;
    var vs_o1_: vec4<f32>;
    var vs_o2_: vec4<f32>;
    var vs_o3_: vec4<f32>;
    var vs_o4_: vec4<f32>;
    var vs_o5_: vec4<f32>;
    var vs_o6_v: vec4<f32>;
    var gl_Position: vec4<f32>;

    var vs_v1_: vec4<f32>;
    var local: f32;
    var local_1: f32;
    var local_2: f32;
    var local_3: f32;

    vs_v1_ = vec4<f32>(vs_v1_u);
    vs_r0_.w = 1f;
    vs_r1_.x = (3f * vs_v1_.x);
    vs_a0_.x = i32((floor((abs(vs_r1_.x) + 0.5f)) * sign(vs_r1_.x)));
    vs_r0_.x = dot(global.vs_uniforms_vec4_[(31i + vs_a0_.x)], vs_v0_);
    vs_r0_.y = dot(global.vs_uniforms_vec4_[(32i + vs_a0_.x)], vs_v0_);
    vs_r0_.z = dot(global.vs_uniforms_vec4_[(33i + vs_a0_.x)], vs_v0_);
    gl_Position.x = dot(global.vs_uniforms_vec4_[2], vs_r0_);
    gl_Position.y = dot(global.vs_uniforms_vec4_[3], vs_r0_);
    gl_Position.z = dot(global.vs_uniforms_vec4_[4], vs_r0_);
    gl_Position.w = dot(global.vs_uniforms_vec4_[5], vs_r0_);
    vs_r1_.x = dot((global.vs_uniforms_vec4_[(31i + vs_a0_.x)]).xyz, vs_v2_.xyz);
    vs_r1_.y = dot((global.vs_uniforms_vec4_[(32i + vs_a0_.x)]).xyz, vs_v2_.xyz);
    vs_r1_.z = dot((global.vs_uniforms_vec4_[(33i + vs_a0_.x)]).xyz, vs_v2_.xyz);
    let _e152 = normalize(vs_r1_.xyz);
    vs_r2_.x = _e152.x;
    vs_r2_.y = _e152.y;
    vs_r2_.z = _e152.z;
    vs_r1_.x = clamp(dot(-(global.vs_uniforms_vec4_[12].xyz), vs_r2_.xyz), 0f, 1f);
    let _e176 = global.vs_uniforms_vec4_[10].xyz;
    vs_r3_.x = _e176.x;
    vs_r3_.y = _e176.y;
    vs_r3_.z = _e176.z;
    let _e194 = ((vs_r1_.xxx * vs_r3_.xyz) + global.vs_uniforms_vec4_[11].xyz);
    vs_r1_.x = _e194.x;
    vs_r1_.y = _e194.y;
    vs_r1_.z = _e194.z;
    let _e210 = (-(vs_r0_.xyz) + global.vs_uniforms_vec4_[21].xyz);
    vs_r3_.x = _e210.x;
    vs_r3_.y = _e210.y;
    vs_r3_.z = _e210.z;
    vs_r4_.x = dot(vs_r3_.xyz, vs_r2_.xyz);
    vs_r3_.x = dot(vs_r3_.xyz, vs_r3_.xyz);
    let _e238 = (-(vs_r0_.xyz) + global.vs_uniforms_vec4_[22].xyz);
    vs_r5_.x = _e238.x;
    vs_r5_.y = _e238.y;
    vs_r5_.z = _e238.z;
    vs_r4_.y = dot(vs_r5_.xyz, vs_r2_.xyz);
    vs_r3_.y = dot(vs_r5_.xyz, vs_r5_.xyz);
    let _e260 = vs_r2_.xyz;
    vs_o4_.x = _e260.x;
    vs_o4_.y = _e260.y;
    vs_o4_.z = _e260.z;
    if (vs_r3_.x == 0f) {
        local = FLT_MAX;
    } else {
        local = inverseSqrt(abs(vs_r3_.x));
    }
    vs_r2_.x = local;
    if (vs_r3_.y == 0f) {
        local_1 = FLT_MAX;
    } else {
        local_1 = inverseSqrt(abs(vs_r3_.y));
    }
    vs_r2_.y = local_1;
    let _e295 = (vs_r4_.xy * vs_r2_.xy);
    vs_r2_.z = _e295.x;
    vs_r2_.w = _e295.y;
    let _e306 = (vs_r3_.xy * vs_r2_.xy);
    vs_r2_.x = _e306.x;
    vs_r2_.y = _e306.y;
    let _e319 = (vs_r2_.xy * global.vs_uniforms_vec4_[26].xy);
    vs_r2_.x = _e319.x;
    vs_r2_.y = _e319.y;
    let _e335 = ((vs_r3_.xy * global.vs_uniforms_vec4_[27].xy) + vs_r2_.xy);
    vs_r2_.x = _e335.x;
    vs_r2_.y = _e335.y;
    let _e348 = (vs_r2_.xy + global.vs_uniforms_vec4_[25].xy);
    vs_r2_.x = _e348.x;
    vs_r2_.y = _e348.y;
    let _e363 = max(vs_r2_.zw, vec2<f32>(0f, 0f));
    vs_r2_.z = _e363.x;
    vs_r2_.w = _e363.y;
    if (vs_r2_.x == 0f) {
        local_2 = FLT_MAX;
    } else {
        local_2 = (1f / vs_r2_.x);
    }
    vs_r3_.x = local_2;
    if (vs_r2_.y == 0f) {
        local_3 = FLT_MAX;
    } else {
        local_3 = (1f / vs_r2_.y);
    }
    vs_r3_.y = local_3;
    let _e396 = (vs_r2_.zw * vs_r3_.xy);
    vs_r2_.x = _e396.x;
    vs_r2_.y = _e396.y;
    let _e412 = ((global.vs_uniforms_vec4_[17].xyz * vs_r2_.xxx) + vs_r1_.xyz);
    vs_r1_.x = _e412.x;
    vs_r1_.y = _e412.y;
    vs_r1_.z = _e412.z;
    let _e435 = clamp(((global.vs_uniforms_vec4_[18].xyz * vs_r2_.yyy) + vs_r1_.xyz), vec3(0f), vec3(1f));
    vs_r1_.x = _e435.x;
    vs_r1_.y = _e435.y;
    vs_r1_.z = _e435.z;
    vs_r1_.w = 1f;
    vs_r2_ = global.vs_uniforms_vec4_[28];
    vs_o1_ = clamp(((vs_r2_ * vs_r1_) + global.vs_uniforms_vec4_[29]), vec4(0f), vec4(1f));
    vs_r1_.x = ((vs_r0_.z * global.vs_uniforms_vec4_[30].x) + global.vs_uniforms_vec4_[30].y);
    vs_r1_.x = max(vs_r1_.x, 0f);
    vs_r2_.x = pow(abs(vs_r1_.x), global.vs_uniforms_vec4_[30].z);
    vs_o6_v.x = min(vs_r2_.x, 1f);
    let _e520 = ((vs_v3_.xyx * vec3<f32>(1f, 1f, 0f)) + vec3<f32>(0f, 0f, 1f));
    vs_r1_.x = _e520.x;
    vs_r1_.y = _e520.y;
    vs_r1_.z = _e520.z;
    vs_o2_.x = dot(global.vs_uniforms_vec4_[6].xyw, vs_r1_.xyz);
    vs_o2_.y = dot(global.vs_uniforms_vec4_[7].xyw, vs_r1_.xyz);
    vs_o5_.x = dot(vs_r0_, global.vs_uniforms_vec4_[224]);
    vs_o5_.y = dot(vs_r0_, global.vs_uniforms_vec4_[225]);
    vs_o5_.z = dot(vs_r0_, global.vs_uniforms_vec4_[226]);
    let _e564 = vs_r0_.xyz;
    vs_o3_.x = _e564.x;
    vs_o3_.y = _e564.y;
    vs_o3_.z = _e564.z;
    return VertexOutput(vs_o1_, vs_o2_, vs_o3_, vs_o4_, vs_o5_, vs_o6_v, gl_Position);
}
