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

@vertex fn main(@location(0) vs_v0_: vec4<f32>, @location(1) vs_v1_: vec4<f32>, @location(2) @interpolate(flat) vs_v2_u: vec4<u32>, @location(3) vs_v3_: vec4<f32>, @location(6) vs_v4_: vec4<f32>) -> VertexOutput {
    var vs_r0_: vec4<f32>;
    var vs_r1_: vec4<f32>;
    var vs_r2_: vec4<f32>;
    var vs_r3_: vec4<f32>;
    var vs_r4_: vec4<f32>;
    var vs_a0_: vec4<i32>;
    var vs_o1_: vec4<f32>;
    var vs_o2_: vec4<f32>;
    var vs_o3_: vec4<f32>;
    var vs_o4_: vec4<f32>;
    var vs_o5_: vec4<f32>;
    var vs_o6_v: vec4<f32>;
    var gl_Position: vec4<f32>;

    var vs_v2_: vec4<f32>;
    var local: f32;
    var local_1: f32;
    var local_2: f32;
    var local_3: f32;
    var local_4: f32;
    var local_5: f32;

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
    let _e226 = normalize(vs_r0_.xyz);
    vs_r2_.x = _e226.x;
    vs_r2_.y = _e226.y;
    vs_r2_.z = _e226.z;
    vs_r1_.w = 1f;
    gl_Position.x = dot(global.vs_uniforms_vec4_[2], vs_r1_);
    gl_Position.y = dot(global.vs_uniforms_vec4_[3], vs_r1_);
    gl_Position.z = dot(global.vs_uniforms_vec4_[4], vs_r1_);
    gl_Position.w = dot(global.vs_uniforms_vec4_[5], vs_r1_);
    let _e273 = (-(vs_r1_.xyz) + global.vs_uniforms_vec4_[21].xyz);
    vs_r0_.x = _e273.x;
    vs_r0_.y = _e273.y;
    vs_r0_.z = _e273.z;
    vs_r3_.x = dot(vs_r0_.xyz, vs_r2_.xyz);
    vs_r0_.x = dot(vs_r0_.xyz, vs_r0_.xyz);
    let _e301 = (-(vs_r1_.xyz) + global.vs_uniforms_vec4_[22].xyz);
    vs_r4_.x = _e301.x;
    vs_r4_.y = _e301.y;
    vs_r4_.z = _e301.z;
    vs_r3_.y = dot(vs_r4_.xyz, vs_r2_.xyz);
    vs_r0_.y = dot(vs_r4_.xyz, vs_r4_.xyz);
    let _e329 = (-(vs_r1_.xyz) + global.vs_uniforms_vec4_[23].xyz);
    vs_r4_.x = _e329.x;
    vs_r4_.y = _e329.y;
    vs_r4_.z = _e329.z;
    vs_r3_.z = dot(vs_r4_.xyz, vs_r2_.xyz);
    vs_r0_.z = dot(vs_r4_.xyz, vs_r4_.xyz);
    if (vs_r0_.x == 0f) {
        local = FLT_MAX;
    } else {
        local = inverseSqrt(abs(vs_r0_.x));
    }
    vs_r4_.x = local;
    if (vs_r0_.y == 0f) {
        local_1 = FLT_MAX;
    } else {
        local_1 = inverseSqrt(abs(vs_r0_.y));
    }
    vs_r4_.y = local_1;
    if (vs_r0_.z == 0f) {
        local_2 = FLT_MAX;
    } else {
        local_2 = inverseSqrt(abs(vs_r0_.z));
    }
    vs_r4_.z = local_2;
    let _e387 = (vs_r3_.xyz * vs_r4_.xyz);
    vs_r3_.x = _e387.x;
    vs_r3_.y = _e387.y;
    vs_r3_.z = _e387.z;
    let _e400 = (vs_r0_.xyz * vs_r4_.xyz);
    vs_r4_.x = _e400.x;
    vs_r4_.y = _e400.y;
    vs_r4_.z = _e400.z;
    let _e415 = (vs_r4_.xyz * global.vs_uniforms_vec4_[26].xyz);
    vs_r4_.x = _e415.x;
    vs_r4_.y = _e415.y;
    vs_r4_.z = _e415.z;
    let _e433 = ((vs_r0_.xyz * global.vs_uniforms_vec4_[27].xyz) + vs_r4_.xyz);
    vs_r0_.x = _e433.x;
    vs_r0_.y = _e433.y;
    vs_r0_.z = _e433.z;
    let _e448 = (vs_r0_.xyz + global.vs_uniforms_vec4_[25].xyz);
    vs_r0_.x = _e448.x;
    vs_r0_.y = _e448.y;
    vs_r0_.z = _e448.z;
    let _e465 = max(vs_r3_.xyz, vec3<f32>(0f, 0f, 0f));
    vs_r3_.x = _e465.x;
    vs_r3_.y = _e465.y;
    vs_r3_.z = _e465.z;
    if (vs_r0_.x == 0f) {
        local_3 = FLT_MAX;
    } else {
        local_3 = (1f / vs_r0_.x);
    }
    vs_r4_.x = local_3;
    if (vs_r0_.y == 0f) {
        local_4 = FLT_MAX;
    } else {
        local_4 = (1f / vs_r0_.y);
    }
    vs_r4_.y = local_4;
    if (vs_r0_.z == 0f) {
        local_5 = FLT_MAX;
    } else {
        local_5 = (1f / vs_r0_.z);
    }
    vs_r4_.z = local_5;
    let _e511 = (vs_r3_.xyz * vs_r4_.xyz);
    vs_r0_.x = _e511.x;
    vs_r0_.y = _e511.y;
    vs_r0_.z = _e511.z;
    vs_r0_.w = clamp(dot(-(global.vs_uniforms_vec4_[12].xyz), vs_r2_.xyz), 0f, 1f);
    let _e533 = vs_r2_.xyz;
    vs_o4_.x = _e533.x;
    vs_o4_.y = _e533.y;
    vs_o4_.z = _e533.z;
    let _e545 = global.vs_uniforms_vec4_[10].xyz;
    vs_r2_.x = _e545.x;
    vs_r2_.y = _e545.y;
    vs_r2_.z = _e545.z;
    let _e563 = ((vs_r0_.www * vs_r2_.xyz) + global.vs_uniforms_vec4_[11].xyz);
    vs_r2_.x = _e563.x;
    vs_r2_.y = _e563.y;
    vs_r2_.z = _e563.z;
    let _e581 = ((global.vs_uniforms_vec4_[17].xyz * vs_r0_.xxx) + vs_r2_.xyz);
    vs_r2_.x = _e581.x;
    vs_r2_.y = _e581.y;
    vs_r2_.z = _e581.z;
    let _e599 = ((global.vs_uniforms_vec4_[18].xyz * vs_r0_.yyy) + vs_r2_.xyz);
    vs_r0_.x = _e599.x;
    vs_r0_.y = _e599.y;
    vs_r0_.w = _e599.z;
    let _e622 = clamp(((global.vs_uniforms_vec4_[19].xyz * vs_r0_.zzz) + vs_r0_.xyw), vec3(0f), vec3(1f));
    vs_r0_.x = _e622.x;
    vs_r0_.y = _e622.y;
    vs_r0_.z = _e622.z;
    vs_r0_.w = 1f;
    vs_r2_ = global.vs_uniforms_vec4_[28];
    vs_o1_ = clamp(((vs_r2_ * vs_r0_) + global.vs_uniforms_vec4_[29]), vec4(0f), vec4(1f));
    vs_r0_.x = ((vs_r1_.z * global.vs_uniforms_vec4_[30].x) + global.vs_uniforms_vec4_[30].y);
    vs_r0_.x = max(vs_r0_.x, 0f);
    vs_r2_.x = pow(abs(vs_r0_.x), global.vs_uniforms_vec4_[30].z);
    vs_o6_v.x = min(vs_r2_.x, 1f);
    let _e707 = ((vs_v4_.xyx * vec3<f32>(1f, 1f, 0f)) + vec3<f32>(0f, 0f, 1f));
    vs_r0_.x = _e707.x;
    vs_r0_.y = _e707.y;
    vs_r0_.z = _e707.z;
    vs_o2_.x = dot(global.vs_uniforms_vec4_[6].xyw, vs_r0_.xyz);
    vs_o2_.y = dot(global.vs_uniforms_vec4_[7].xyw, vs_r0_.xyz);
    vs_o5_.x = dot(vs_r1_, global.vs_uniforms_vec4_[224]);
    vs_o5_.y = dot(vs_r1_, global.vs_uniforms_vec4_[225]);
    vs_o5_.z = dot(vs_r1_, global.vs_uniforms_vec4_[226]);
    let _e751 = vs_r1_.xyz;
    vs_o3_.x = _e751.x;
    vs_o3_.y = _e751.y;
    vs_o3_.z = _e751.z;
    return VertexOutput(vs_o1_, vs_o2_, vs_o3_, vs_o4_, vs_o5_, vs_o6_v, gl_Position);
}
