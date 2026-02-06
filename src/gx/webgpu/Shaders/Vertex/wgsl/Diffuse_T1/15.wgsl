struct UniformBlock_0_ {
    vs_uniforms_vec4_: array<vec4<f32>, 256>,
}

struct VertexOutput {
    @location(0) vs_o1_: vec4<f32>,
    @location(1) vs_o2_: vec4<f32>,
    @location(10) vs_o3_v: vec4<f32>,
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
    var vs_o3_v: vec4<f32>;
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
    let _e147 = normalize(vs_r1_.xyz);
    vs_r2_.x = _e147.x;
    vs_r2_.y = _e147.y;
    vs_r2_.z = _e147.z;
    let _e163 = (-(vs_r0_.xyz) + global.vs_uniforms_vec4_[21].xyz);
    vs_r1_.x = _e163.x;
    vs_r1_.y = _e163.y;
    vs_r1_.z = _e163.z;
    let _e179 = (-(vs_r0_.xyz) + global.vs_uniforms_vec4_[22].xyz);
    vs_r0_.x = _e179.x;
    vs_r0_.y = _e179.y;
    vs_r0_.w = _e179.z;
    vs_r0_.z = ((vs_r0_.z * global.vs_uniforms_vec4_[30].x) + global.vs_uniforms_vec4_[30].y);
    vs_r0_.z = max(vs_r0_.z, 0f);
    vs_r1_.w = pow(abs(vs_r0_.z), global.vs_uniforms_vec4_[30].z);
    vs_o3_v.x = min(vs_r1_.w, 1f);
    vs_r3_.x = dot(vs_r1_.xyz, vs_r2_.xyz);
    vs_r1_.x = dot(vs_r1_.xyz, vs_r1_.xyz);
    vs_r3_.y = dot(vs_r0_.xyw, vs_r2_.xyz);
    vs_r1_.y = dot(vs_r0_.xyw, vs_r0_.xyw);
    vs_r0_.x = clamp(dot(-(global.vs_uniforms_vec4_[12].xyz), vs_r2_.xyz), 0f, 1f);
    let _e267 = global.vs_uniforms_vec4_[10].xyz;
    vs_r2_.x = _e267.x;
    vs_r2_.y = _e267.y;
    vs_r2_.z = _e267.z;
    let _e285 = ((vs_r0_.xxx * vs_r2_.xyz) + global.vs_uniforms_vec4_[11].xyz);
    vs_r0_.x = _e285.x;
    vs_r0_.y = _e285.y;
    vs_r0_.z = _e285.z;
    if (vs_r1_.x == 0f) {
        local = FLT_MAX;
    } else {
        local = inverseSqrt(abs(vs_r1_.x));
    }
    vs_r2_.x = local;
    if (vs_r1_.y == 0f) {
        local_1 = FLT_MAX;
    } else {
        local_1 = inverseSqrt(abs(vs_r1_.y));
    }
    vs_r2_.y = local_1;
    let _e320 = (vs_r3_.xy * vs_r2_.xy);
    vs_r1_.z = _e320.x;
    vs_r1_.w = _e320.y;
    let _e331 = (vs_r1_.xy * vs_r2_.xy);
    vs_r2_.x = _e331.x;
    vs_r2_.y = _e331.y;
    let _e344 = (vs_r2_.xy * global.vs_uniforms_vec4_[26].xy);
    vs_r2_.x = _e344.x;
    vs_r2_.y = _e344.y;
    let _e360 = ((vs_r1_.xy * global.vs_uniforms_vec4_[27].xy) + vs_r2_.xy);
    vs_r1_.x = _e360.x;
    vs_r1_.y = _e360.y;
    let _e373 = (vs_r1_.xy + global.vs_uniforms_vec4_[25].xy);
    vs_r1_.x = _e373.x;
    vs_r1_.y = _e373.y;
    let _e388 = max(vs_r1_.zw, vec2<f32>(0f, 0f));
    vs_r1_.z = _e388.x;
    vs_r1_.w = _e388.y;
    if (vs_r1_.x == 0f) {
        local_2 = FLT_MAX;
    } else {
        local_2 = (1f / vs_r1_.x);
    }
    vs_r2_.x = local_2;
    if (vs_r1_.y == 0f) {
        local_3 = FLT_MAX;
    } else {
        local_3 = (1f / vs_r1_.y);
    }
    vs_r2_.y = local_3;
    let _e421 = (vs_r1_.zw * vs_r2_.xy);
    vs_r1_.x = _e421.x;
    vs_r1_.y = _e421.y;
    let _e437 = ((global.vs_uniforms_vec4_[17].xyz * vs_r1_.xxx) + vs_r0_.xyz);
    vs_r0_.x = _e437.x;
    vs_r0_.y = _e437.y;
    vs_r0_.z = _e437.z;
    let _e460 = clamp(((global.vs_uniforms_vec4_[18].xyz * vs_r1_.yyy) + vs_r0_.xyz), vec3(0f), vec3(1f));
    vs_r0_.x = _e460.x;
    vs_r0_.y = _e460.y;
    vs_r0_.z = _e460.z;
    vs_r0_.w = 1f;
    vs_r1_ = global.vs_uniforms_vec4_[28];
    vs_o1_ = clamp(((vs_r1_ * vs_r0_) + global.vs_uniforms_vec4_[29]), vec4(0f), vec4(1f));
    let _e505 = ((vs_v3_.xyx * vec3<f32>(1f, 1f, 0f)) + vec3<f32>(0f, 0f, 1f));
    vs_r0_.x = _e505.x;
    vs_r0_.y = _e505.y;
    vs_r0_.z = _e505.z;
    vs_o2_.x = dot(global.vs_uniforms_vec4_[6].xyw, vs_r0_.xyz);
    vs_o2_.y = dot(global.vs_uniforms_vec4_[7].xyw, vs_r0_.xyz);
    return VertexOutput(vs_o1_, vs_o2_, vs_o3_v, gl_Position);
}
