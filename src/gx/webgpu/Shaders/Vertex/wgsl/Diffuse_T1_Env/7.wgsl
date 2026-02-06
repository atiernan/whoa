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
    var vs_r7_: vec4<f32>;
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
    var local_5: f32;
    var local_6: f32;

    vs_r0_.w = 1f;
    vs_r0_.x = dot(global.vs_uniforms_vec4_[31], vs_v0_);
    vs_r0_.y = dot(global.vs_uniforms_vec4_[32], vs_v0_);
    vs_r0_.z = dot(global.vs_uniforms_vec4_[33], vs_v0_);
    gl_Position.x = dot(global.vs_uniforms_vec4_[2], vs_r0_);
    gl_Position.y = dot(global.vs_uniforms_vec4_[3], vs_r0_);
    gl_Position.z = dot(global.vs_uniforms_vec4_[4], vs_r0_);
    gl_Position.w = dot(global.vs_uniforms_vec4_[5], vs_r0_);
    let _e77 = (-(vs_r0_.xyz) + global.vs_uniforms_vec4_[21].xyz);
    vs_r1_.x = _e77.x;
    vs_r1_.y = _e77.y;
    vs_r1_.z = _e77.z;
    vs_r2_.x = dot(vs_r1_.xyz, vs_r1_.xyz);
    if (vs_r2_.x == 0f) {
        local = FLT_MAX;
    } else {
        local = inverseSqrt(abs(vs_r2_.x));
    }
    vs_r3_.x = local;
    let _e110 = (-(vs_r0_.xyz) + global.vs_uniforms_vec4_[22].xyz);
    vs_r4_.x = _e110.x;
    vs_r4_.y = _e110.y;
    vs_r4_.z = _e110.z;
    vs_r2_.y = dot(vs_r4_.xyz, vs_r4_.xyz);
    if (vs_r2_.y == 0f) {
        local_1 = FLT_MAX;
    } else {
        local_1 = inverseSqrt(abs(vs_r2_.y));
    }
    vs_r3_.y = local_1;
    let _e143 = (-(vs_r0_.xyz) + global.vs_uniforms_vec4_[23].xyz);
    vs_r5_.x = _e143.x;
    vs_r5_.y = _e143.y;
    vs_r5_.z = _e143.z;
    let _e154 = normalize(vs_r0_.xyz);
    vs_r6_.x = _e154.x;
    vs_r6_.y = _e154.y;
    vs_r6_.z = _e154.z;
    vs_r0_.x = ((vs_r0_.z * global.vs_uniforms_vec4_[30].x) + global.vs_uniforms_vec4_[30].y);
    vs_r0_.x = max(vs_r0_.x, 0f);
    vs_r1_.w = pow(abs(vs_r0_.x), global.vs_uniforms_vec4_[30].z);
    vs_o4_v.x = min(vs_r1_.w, 1f);
    vs_r2_.z = dot(vs_r5_.xyz, vs_r5_.xyz);
    if (vs_r2_.z == 0f) {
        local_2 = FLT_MAX;
    } else {
        local_2 = inverseSqrt(abs(vs_r2_.z));
    }
    vs_r3_.z = local_2;
    let _e224 = (vs_r2_.xyz * vs_r3_.xyz);
    vs_r0_.x = _e224.x;
    vs_r0_.y = _e224.y;
    vs_r0_.z = _e224.z;
    let _e239 = (vs_r0_.xyz * global.vs_uniforms_vec4_[26].xyz);
    vs_r0_.x = _e239.x;
    vs_r0_.y = _e239.y;
    vs_r0_.z = _e239.z;
    let _e257 = ((vs_r2_.xyz * global.vs_uniforms_vec4_[27].xyz) + vs_r0_.xyz);
    vs_r0_.x = _e257.x;
    vs_r0_.y = _e257.y;
    vs_r0_.z = _e257.z;
    let _e272 = (vs_r0_.xyz + global.vs_uniforms_vec4_[25].xyz);
    vs_r0_.x = _e272.x;
    vs_r0_.y = _e272.y;
    vs_r0_.z = _e272.z;
    if (vs_r0_.x == 0f) {
        local_3 = FLT_MAX;
    } else {
        local_3 = (1f / vs_r0_.x);
    }
    vs_r2_.x = local_3;
    if (vs_r0_.y == 0f) {
        local_4 = FLT_MAX;
    } else {
        local_4 = (1f / vs_r0_.y);
    }
    vs_r2_.y = local_4;
    if (vs_r0_.z == 0f) {
        local_5 = FLT_MAX;
    } else {
        local_5 = (1f / vs_r0_.z);
    }
    vs_r2_.z = local_5;
    vs_r0_.x = dot(global.vs_uniforms_vec4_[31].xyz, vs_v1_.xyz);
    vs_r0_.y = dot(global.vs_uniforms_vec4_[32].xyz, vs_v1_.xyz);
    vs_r0_.z = dot(global.vs_uniforms_vec4_[33].xyz, vs_v1_.xyz);
    let _e340 = normalize(vs_r0_.xyz);
    vs_r7_.x = _e340.x;
    vs_r7_.y = _e340.y;
    vs_r7_.z = _e340.z;
    vs_r0_.x = dot(vs_r1_.xyz, vs_r7_.xyz);
    vs_r0_.y = dot(vs_r4_.xyz, vs_r7_.xyz);
    vs_r0_.z = dot(vs_r5_.xyz, vs_r7_.xyz);
    let _e371 = (vs_r3_.xyz * vs_r0_.xyz);
    vs_r0_.x = _e371.x;
    vs_r0_.y = _e371.y;
    vs_r0_.z = _e371.z;
    let _e388 = max(vs_r0_.xyz, vec3<f32>(0f, 0f, 0f));
    vs_r0_.x = _e388.x;
    vs_r0_.y = _e388.y;
    vs_r0_.z = _e388.z;
    let _e401 = (vs_r2_.xyz * vs_r0_.xyz);
    vs_r0_.x = _e401.x;
    vs_r0_.y = _e401.y;
    vs_r0_.z = _e401.z;
    vs_r0_.w = clamp(dot(-(global.vs_uniforms_vec4_[12].xyz), vs_r7_.xyz), 0f, 1f);
    let _e425 = global.vs_uniforms_vec4_[10].xyz;
    vs_r1_.x = _e425.x;
    vs_r1_.y = _e425.y;
    vs_r1_.z = _e425.z;
    let _e443 = ((vs_r0_.www * vs_r1_.xyz) + global.vs_uniforms_vec4_[11].xyz);
    vs_r1_.x = _e443.x;
    vs_r1_.y = _e443.y;
    vs_r1_.z = _e443.z;
    let _e461 = ((global.vs_uniforms_vec4_[17].xyz * vs_r0_.xxx) + vs_r1_.xyz);
    vs_r1_.x = _e461.x;
    vs_r1_.y = _e461.y;
    vs_r1_.z = _e461.z;
    let _e479 = ((global.vs_uniforms_vec4_[18].xyz * vs_r0_.yyy) + vs_r1_.xyz);
    vs_r0_.x = _e479.x;
    vs_r0_.y = _e479.y;
    vs_r0_.w = _e479.z;
    let _e502 = clamp(((global.vs_uniforms_vec4_[19].xyz * vs_r0_.zzz) + vs_r0_.xyw), vec3(0f), vec3(1f));
    vs_r0_.x = _e502.x;
    vs_r0_.y = _e502.y;
    vs_r0_.z = _e502.z;
    vs_r0_.w = 1f;
    vs_r1_ = global.vs_uniforms_vec4_[28];
    vs_o1_ = clamp(((vs_r1_ * vs_r0_) + global.vs_uniforms_vec4_[29]), vec4(0f), vec4(1f));
    let _e547 = ((vs_v2_.xyx * vec3<f32>(1f, 1f, 0f)) + vec3<f32>(0f, 0f, 1f));
    vs_r0_.x = _e547.x;
    vs_r0_.y = _e547.y;
    vs_r0_.z = _e547.z;
    vs_o2_.x = dot(global.vs_uniforms_vec4_[6].xyw, vs_r0_.xyz);
    vs_o2_.y = dot(global.vs_uniforms_vec4_[7].xyw, vs_r0_.xyz);
    vs_r0_.x = dot(-(vs_r6_.xyz), vs_r7_.xyz);
    vs_r0_.x = (vs_r0_.x + vs_r0_.x);
    let _e594 = ((vs_r0_.xxx * -(vs_r7_.xyz)) + -(vs_r6_.xyz));
    vs_r0_.x = _e594.x;
    vs_r0_.y = _e594.y;
    vs_r0_.z = _e594.z;
    vs_r0_.w = (vs_r0_.z + 1f);
    vs_r0_.z = dot(vs_r0_.xyw, vs_r0_.xyw);
    if (vs_r0_.z == 0f) {
        local_6 = FLT_MAX;
    } else {
        local_6 = inverseSqrt(abs(vs_r0_.z));
    }
    vs_r0_.z = local_6;
    let _e633 = (vs_r0_.xy * vs_r0_.zz);
    vs_r0_.x = _e633.x;
    vs_r0_.y = _e633.y;
    let _e655 = ((vs_r0_.xy * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    vs_o3_.x = _e655.x;
    vs_o3_.y = _e655.y;
    return VertexOutput(vs_o1_, vs_o2_, vs_o3_, vs_o4_v, gl_Position);
}
