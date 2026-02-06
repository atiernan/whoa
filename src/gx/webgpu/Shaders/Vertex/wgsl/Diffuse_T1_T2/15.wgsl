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

@vertex fn main(@location(0) vs_v0_: vec4<f32>, @location(2) @interpolate(flat) vs_v1_u: vec4<u32>, @location(3) vs_v2_: vec4<f32>, @location(6) vs_v3_: vec4<f32>, @location(7) vs_v4_: vec4<f32>) -> VertexOutput {
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
    let _e149 = normalize(vs_r1_.xyz);
    vs_r2_.x = _e149.x;
    vs_r2_.y = _e149.y;
    vs_r2_.z = _e149.z;
    let _e165 = (-(vs_r0_.xyz) + global.vs_uniforms_vec4_[21].xyz);
    vs_r1_.x = _e165.x;
    vs_r1_.y = _e165.y;
    vs_r1_.z = _e165.z;
    let _e181 = (-(vs_r0_.xyz) + global.vs_uniforms_vec4_[22].xyz);
    vs_r0_.x = _e181.x;
    vs_r0_.y = _e181.y;
    vs_r0_.w = _e181.z;
    vs_r0_.z = ((vs_r0_.z * global.vs_uniforms_vec4_[30].x) + global.vs_uniforms_vec4_[30].y);
    vs_r0_.z = max(vs_r0_.z, 0f);
    vs_r1_.w = pow(abs(vs_r0_.z), global.vs_uniforms_vec4_[30].z);
    vs_o4_v.x = min(vs_r1_.w, 1f);
    vs_r3_.x = dot(vs_r1_.xyz, vs_r2_.xyz);
    vs_r1_.x = dot(vs_r1_.xyz, vs_r1_.xyz);
    vs_r3_.y = dot(vs_r0_.xyw, vs_r2_.xyz);
    vs_r1_.y = dot(vs_r0_.xyw, vs_r0_.xyw);
    vs_r0_.x = clamp(dot(-(global.vs_uniforms_vec4_[12].xyz), vs_r2_.xyz), 0f, 1f);
    let _e269 = global.vs_uniforms_vec4_[10].xyz;
    vs_r2_.x = _e269.x;
    vs_r2_.y = _e269.y;
    vs_r2_.z = _e269.z;
    let _e287 = ((vs_r0_.xxx * vs_r2_.xyz) + global.vs_uniforms_vec4_[11].xyz);
    vs_r0_.x = _e287.x;
    vs_r0_.y = _e287.y;
    vs_r0_.z = _e287.z;
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
    let _e322 = (vs_r3_.xy * vs_r2_.xy);
    vs_r1_.z = _e322.x;
    vs_r1_.w = _e322.y;
    let _e333 = (vs_r1_.xy * vs_r2_.xy);
    vs_r2_.x = _e333.x;
    vs_r2_.y = _e333.y;
    let _e346 = (vs_r2_.xy * global.vs_uniforms_vec4_[26].xy);
    vs_r2_.x = _e346.x;
    vs_r2_.y = _e346.y;
    let _e362 = ((vs_r1_.xy * global.vs_uniforms_vec4_[27].xy) + vs_r2_.xy);
    vs_r1_.x = _e362.x;
    vs_r1_.y = _e362.y;
    let _e375 = (vs_r1_.xy + global.vs_uniforms_vec4_[25].xy);
    vs_r1_.x = _e375.x;
    vs_r1_.y = _e375.y;
    let _e390 = max(vs_r1_.zw, vec2<f32>(0f, 0f));
    vs_r1_.z = _e390.x;
    vs_r1_.w = _e390.y;
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
    let _e423 = (vs_r1_.zw * vs_r2_.xy);
    vs_r1_.x = _e423.x;
    vs_r1_.y = _e423.y;
    let _e439 = ((global.vs_uniforms_vec4_[17].xyz * vs_r1_.xxx) + vs_r0_.xyz);
    vs_r0_.x = _e439.x;
    vs_r0_.y = _e439.y;
    vs_r0_.z = _e439.z;
    let _e462 = clamp(((global.vs_uniforms_vec4_[18].xyz * vs_r1_.yyy) + vs_r0_.xyz), vec3(0f), vec3(1f));
    vs_r0_.x = _e462.x;
    vs_r0_.y = _e462.y;
    vs_r0_.z = _e462.z;
    vs_r0_.w = 1f;
    vs_r1_ = global.vs_uniforms_vec4_[28];
    vs_o1_ = clamp(((vs_r1_ * vs_r0_) + global.vs_uniforms_vec4_[29]), vec4(0f), vec4(1f));
    let _e507 = ((vs_v3_.xyx * vec3<f32>(1f, 1f, 0f)) + vec3<f32>(0f, 0f, 1f));
    vs_r0_.x = _e507.x;
    vs_r0_.y = _e507.y;
    vs_r0_.z = _e507.z;
    vs_o2_.x = dot(global.vs_uniforms_vec4_[6].xyw, vs_r0_.xyz);
    vs_o2_.y = dot(global.vs_uniforms_vec4_[7].xyw, vs_r0_.xyz);
    let _e547 = ((vs_v4_.xyx * vec3<f32>(1f, 1f, 0f)) + vec3<f32>(0f, 0f, 1f));
    vs_r0_.x = _e547.x;
    vs_r0_.y = _e547.y;
    vs_r0_.z = _e547.z;
    vs_o3_.x = dot(global.vs_uniforms_vec4_[8].xyw, vs_r0_.xyz);
    vs_o3_.y = dot(global.vs_uniforms_vec4_[9].xyw, vs_r0_.xyz);
    return VertexOutput(vs_o1_, vs_o2_, vs_o3_, vs_o4_v, gl_Position);
}
