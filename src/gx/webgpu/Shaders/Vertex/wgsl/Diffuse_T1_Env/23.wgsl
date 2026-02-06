struct UniformBlock_0_ {
    vs_uniforms_vec4_: array<vec4<f32>, 256>,
}

struct VertexOutput {
    @location(0) vs_o1_: vec4<f32>,
    @location(1) vs_o2_: vec4<f32>,
    @location(2) vs_o3_: vec4<f32>,
    @location(10) vs_o4_v: vec4<f32>,
    @builtin(position) gl_Position: vec4<f32>,
}

const FLT_MAX: f32 = 100000000000000000000000000000000000000f;

@group(0) @binding(0) var<uniform> global: UniformBlock_0_;

@vertex fn main(@location(0) vs_v0_: vec4<f32>, @location(1) vs_v1_: vec4<f32>, @location(2) @interpolate(flat) vs_v2_u: vec4<u32>, @location(3) vs_v3_: vec4<f32>, @location(6) vs_v4_: vec4<f32>) -> VertexOutput {
    var vs_r0_: vec4<f32>;
    var vs_r1_: vec4<f32>;
    var vs_r2_: vec4<f32>;
    var vs_r3_: vec4<f32>;
    var vs_a0_: vec4<i32>;
    var vs_o1_: vec4<f32>;
    var vs_o2_: vec4<f32>;
    var vs_o3_: vec4<f32>;
    var vs_o4_v: vec4<f32>;
    var gl_Position: vec4<f32>;

    var vs_v2_: vec4<f32>;
    var local: f32;
    var local_1: f32;
    var local_2: f32;

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
    let _e223 = normalize(vs_r0_.xyz);
    vs_r2_.x = _e223.x;
    vs_r2_.y = _e223.y;
    vs_r2_.z = _e223.z;
    vs_r1_.w = 1f;
    gl_Position.x = dot(global.vs_uniforms_vec4_[2], vs_r1_);
    gl_Position.y = dot(global.vs_uniforms_vec4_[3], vs_r1_);
    gl_Position.z = dot(global.vs_uniforms_vec4_[4], vs_r1_);
    gl_Position.w = dot(global.vs_uniforms_vec4_[5], vs_r1_);
    let _e270 = (-(vs_r1_.xyz) + global.vs_uniforms_vec4_[21].xyz);
    vs_r0_.x = _e270.x;
    vs_r0_.y = _e270.y;
    vs_r0_.z = _e270.z;
    let _e281 = normalize(vs_r1_.xyz);
    vs_r3_.x = _e281.x;
    vs_r3_.y = _e281.y;
    vs_r3_.z = _e281.z;
    vs_r0_.w = ((vs_r1_.z * global.vs_uniforms_vec4_[30].x) + global.vs_uniforms_vec4_[30].y);
    vs_r0_.w = max(vs_r0_.w, 0f);
    vs_r1_.x = pow(abs(vs_r0_.w), global.vs_uniforms_vec4_[30].z);
    vs_o4_v.x = min(vs_r1_.x, 1f);
    vs_r0_.w = dot(vs_r0_.xyz, vs_r0_.xyz);
    vs_r0_.x = dot(vs_r0_.xyz, vs_r2_.xyz);
    if (vs_r0_.w == 0f) {
        local = FLT_MAX;
    } else {
        local = inverseSqrt(abs(vs_r0_.w));
    }
    vs_r0_.y = local;
    let _e357 = (vs_r0_.xw * vs_r0_.yy);
    vs_r0_.x = _e357.x;
    vs_r0_.z = _e357.y;
    vs_r0_.x = max(vs_r0_.x, 0f);
    vs_r0_.y = (vs_r0_.z * global.vs_uniforms_vec4_[26].x);
    vs_r0_.y = ((vs_r0_.w * global.vs_uniforms_vec4_[27].x) + vs_r0_.y);
    vs_r0_.y = (vs_r0_.y + global.vs_uniforms_vec4_[25].x);
    if (vs_r0_.y == 0f) {
        local_1 = FLT_MAX;
    } else {
        local_1 = (1f / vs_r0_.y);
    }
    vs_r0_.y = local_1;
    vs_r0_.x = (vs_r0_.x * vs_r0_.y);
    vs_r0_.y = clamp(dot(-(global.vs_uniforms_vec4_[12].xyz), vs_r2_.xyz), 0f, 1f);
    let _e432 = global.vs_uniforms_vec4_[10].xyz;
    vs_r1_.x = _e432.x;
    vs_r1_.y = _e432.y;
    vs_r1_.z = _e432.z;
    let _e450 = ((vs_r0_.yyy * vs_r1_.xyz) + global.vs_uniforms_vec4_[11].xyz);
    vs_r0_.y = _e450.x;
    vs_r0_.z = _e450.y;
    vs_r0_.w = _e450.z;
    let _e473 = clamp(((global.vs_uniforms_vec4_[17].xyz * vs_r0_.xxx) + vs_r0_.yzw), vec3(0f), vec3(1f));
    vs_r0_.x = _e473.x;
    vs_r0_.y = _e473.y;
    vs_r0_.z = _e473.z;
    vs_r0_.w = 1f;
    vs_r1_ = global.vs_uniforms_vec4_[28];
    vs_o1_ = clamp(((vs_r1_ * vs_r0_) + global.vs_uniforms_vec4_[29]), vec4(0f), vec4(1f));
    let _e518 = ((vs_v4_.xyx * vec3<f32>(1f, 1f, 0f)) + vec3<f32>(0f, 0f, 1f));
    vs_r0_.x = _e518.x;
    vs_r0_.y = _e518.y;
    vs_r0_.z = _e518.z;
    vs_o2_.x = dot(global.vs_uniforms_vec4_[6].xyw, vs_r0_.xyz);
    vs_o2_.y = dot(global.vs_uniforms_vec4_[7].xyw, vs_r0_.xyz);
    vs_r0_.x = dot(-(vs_r3_.xyz), vs_r2_.xyz);
    vs_r0_.x = (vs_r0_.x + vs_r0_.x);
    let _e565 = ((vs_r0_.xxx * -(vs_r2_.xyz)) + -(vs_r3_.xyz));
    vs_r0_.x = _e565.x;
    vs_r0_.y = _e565.y;
    vs_r0_.z = _e565.z;
    vs_r0_.w = (vs_r0_.z + 1f);
    vs_r0_.z = dot(vs_r0_.xyw, vs_r0_.xyw);
    if (vs_r0_.z == 0f) {
        local_2 = FLT_MAX;
    } else {
        local_2 = inverseSqrt(abs(vs_r0_.z));
    }
    vs_r0_.z = local_2;
    let _e604 = (vs_r0_.xy * vs_r0_.zz);
    vs_r0_.x = _e604.x;
    vs_r0_.y = _e604.y;
    let _e626 = ((vs_r0_.xy * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    vs_o3_.x = _e626.x;
    vs_o3_.y = _e626.y;
    return VertexOutput(vs_o1_, vs_o2_, vs_o3_, vs_o4_v, gl_Position);
}
