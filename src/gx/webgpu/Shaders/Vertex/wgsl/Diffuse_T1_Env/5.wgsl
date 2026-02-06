struct UniformBlock_0_ {
    vs_uniforms_vec4_: array<vec4<f32>, 34>,
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
    var vs_o4_v: vec4<f32>;
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
    let _e76 = (-(vs_r0_.xyz) + global.vs_uniforms_vec4_[21].xyz);
    vs_r1_.x = _e76.x;
    vs_r1_.y = _e76.y;
    vs_r1_.z = _e76.z;
    vs_r2_.x = dot(vs_r1_.xyz, vs_r1_.xyz);
    if (vs_r2_.x == 0f) {
        local = FLT_MAX;
    } else {
        local = inverseSqrt(abs(vs_r2_.x));
    }
    vs_r3_.x = local;
    let _e109 = (-(vs_r0_.xyz) + global.vs_uniforms_vec4_[22].xyz);
    vs_r4_.x = _e109.x;
    vs_r4_.y = _e109.y;
    vs_r4_.z = _e109.z;
    let _e120 = normalize(vs_r0_.xyz);
    vs_r5_.x = _e120.x;
    vs_r5_.y = _e120.y;
    vs_r5_.z = _e120.z;
    vs_r0_.x = ((vs_r0_.z * global.vs_uniforms_vec4_[30].x) + global.vs_uniforms_vec4_[30].y);
    vs_r0_.x = max(vs_r0_.x, 0f);
    vs_r1_.w = pow(abs(vs_r0_.x), global.vs_uniforms_vec4_[30].z);
    vs_o4_v.x = min(vs_r1_.w, 1f);
    vs_r2_.y = dot(vs_r4_.xyz, vs_r4_.xyz);
    if (vs_r2_.y == 0f) {
        local_1 = FLT_MAX;
    } else {
        local_1 = inverseSqrt(abs(vs_r2_.y));
    }
    vs_r3_.y = local_1;
    let _e190 = (vs_r2_.xy * vs_r3_.xy);
    vs_r0_.x = _e190.x;
    vs_r0_.y = _e190.y;
    let _e203 = (vs_r0_.xy * global.vs_uniforms_vec4_[26].xy);
    vs_r0_.x = _e203.x;
    vs_r0_.y = _e203.y;
    let _e219 = ((vs_r2_.xy * global.vs_uniforms_vec4_[27].xy) + vs_r0_.xy);
    vs_r0_.x = _e219.x;
    vs_r0_.y = _e219.y;
    let _e232 = (vs_r0_.xy + global.vs_uniforms_vec4_[25].xy);
    vs_r0_.x = _e232.x;
    vs_r0_.y = _e232.y;
    if (vs_r0_.x == 0f) {
        local_2 = FLT_MAX;
    } else {
        local_2 = (1f / vs_r0_.x);
    }
    vs_r2_.x = local_2;
    if (vs_r0_.y == 0f) {
        local_3 = FLT_MAX;
    } else {
        local_3 = (1f / vs_r0_.y);
    }
    vs_r2_.y = local_3;
    vs_r0_.x = dot(global.vs_uniforms_vec4_[31].xyz, vs_v1_.xyz);
    vs_r0_.y = dot(global.vs_uniforms_vec4_[32].xyz, vs_v1_.xyz);
    vs_r0_.z = dot(global.vs_uniforms_vec4_[33].xyz, vs_v1_.xyz);
    let _e287 = normalize(vs_r0_.xyz);
    vs_r6_.x = _e287.x;
    vs_r6_.y = _e287.y;
    vs_r6_.z = _e287.z;
    vs_r0_.x = dot(vs_r1_.xyz, vs_r6_.xyz);
    vs_r0_.y = dot(vs_r4_.xyz, vs_r6_.xyz);
    let _e312 = (vs_r3_.xy * vs_r0_.xy);
    vs_r0_.x = _e312.x;
    vs_r0_.y = _e312.y;
    let _e327 = max(vs_r0_.xy, vec2<f32>(0f, 0f));
    vs_r0_.x = _e327.x;
    vs_r0_.y = _e327.y;
    let _e338 = (vs_r2_.xy * vs_r0_.xy);
    vs_r0_.x = _e338.x;
    vs_r0_.y = _e338.y;
    vs_r0_.z = clamp(dot(-(global.vs_uniforms_vec4_[12].xyz), vs_r6_.xyz), 0f, 1f);
    let _e360 = global.vs_uniforms_vec4_[10].xyz;
    vs_r1_.x = _e360.x;
    vs_r1_.y = _e360.y;
    vs_r1_.z = _e360.z;
    let _e378 = ((vs_r0_.zzz * vs_r1_.xyz) + global.vs_uniforms_vec4_[11].xyz);
    vs_r1_.x = _e378.x;
    vs_r1_.y = _e378.y;
    vs_r1_.z = _e378.z;
    let _e396 = ((global.vs_uniforms_vec4_[17].xyz * vs_r0_.xxx) + vs_r1_.xyz);
    vs_r0_.x = _e396.x;
    vs_r0_.z = _e396.y;
    vs_r0_.w = _e396.z;
    let _e419 = clamp(((global.vs_uniforms_vec4_[18].xyz * vs_r0_.yyy) + vs_r0_.xzw), vec3(0f), vec3(1f));
    vs_r0_.x = _e419.x;
    vs_r0_.y = _e419.y;
    vs_r0_.z = _e419.z;
    vs_r0_.w = 1f;
    vs_r1_ = global.vs_uniforms_vec4_[28];
    vs_o1_ = clamp(((vs_r1_ * vs_r0_) + global.vs_uniforms_vec4_[29]), vec4(0f), vec4(1f));
    let _e464 = ((vs_v2_.xyx * vec3<f32>(1f, 1f, 0f)) + vec3<f32>(0f, 0f, 1f));
    vs_r0_.x = _e464.x;
    vs_r0_.y = _e464.y;
    vs_r0_.z = _e464.z;
    vs_o2_.x = dot(global.vs_uniforms_vec4_[6].xyw, vs_r0_.xyz);
    vs_o2_.y = dot(global.vs_uniforms_vec4_[7].xyw, vs_r0_.xyz);
    vs_r0_.x = dot(-(vs_r5_.xyz), vs_r6_.xyz);
    vs_r0_.x = (vs_r0_.x + vs_r0_.x);
    let _e511 = ((vs_r0_.xxx * -(vs_r6_.xyz)) + -(vs_r5_.xyz));
    vs_r0_.x = _e511.x;
    vs_r0_.y = _e511.y;
    vs_r0_.z = _e511.z;
    vs_r0_.w = (vs_r0_.z + 1f);
    vs_r0_.z = dot(vs_r0_.xyw, vs_r0_.xyw);
    if (vs_r0_.z == 0f) {
        local_4 = FLT_MAX;
    } else {
        local_4 = inverseSqrt(abs(vs_r0_.z));
    }
    vs_r0_.z = local_4;
    let _e550 = (vs_r0_.xy * vs_r0_.zz);
    vs_r0_.x = _e550.x;
    vs_r0_.y = _e550.y;
    let _e572 = ((vs_r0_.xy * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    vs_o3_.x = _e572.x;
    vs_o3_.y = _e572.y;
    return VertexOutput(vs_o1_, vs_o2_, vs_o3_, vs_o4_v, gl_Position);
}
