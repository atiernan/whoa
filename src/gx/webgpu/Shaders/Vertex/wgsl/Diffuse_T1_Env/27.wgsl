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
    var vs_r4_: vec4<f32>;
    var vs_r5_: vec4<f32>;
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
    var local_3: f32;
    var local_4: f32;
    var local_5: f32;
    var local_6: f32;

    vs_v2_ = vec4<f32>(vs_v2_u);
    vs_r0_.w = 1f;
    vs_r1_ = (vec4<f32>(3f, 3f, 3f, 3f) * vs_v2_);
    vs_a0_ = vec4<i32>((floor((abs(vs_r1_) + vec4(0.5f))) * sign(vs_r1_)));
    vs_r1_ = (vs_v1_.yyyy * global.vs_uniforms_vec4_[(31i + vs_a0_.y)]);
    vs_r1_ = ((global.vs_uniforms_vec4_[(31i + vs_a0_.x)] * vs_v1_.xxxx) + vs_r1_);
    vs_r1_ = ((global.vs_uniforms_vec4_[(31i + vs_a0_.z)] * vs_v1_.zzzz) + vs_r1_);
    vs_r1_ = ((global.vs_uniforms_vec4_[(31i + vs_a0_.w)] * vs_v1_.wwww) + vs_r1_);
    vs_r0_.x = dot(vs_r1_, vs_v0_);
    vs_r1_.x = dot(vs_r1_.xyz, vs_v3_.xyz);
    vs_r2_ = (vs_v1_.yyyy * global.vs_uniforms_vec4_[(32i + vs_a0_.y)]);
    vs_r2_ = ((global.vs_uniforms_vec4_[(32i + vs_a0_.x)] * vs_v1_.xxxx) + vs_r2_);
    vs_r2_ = ((global.vs_uniforms_vec4_[(32i + vs_a0_.z)] * vs_v1_.zzzz) + vs_r2_);
    vs_r2_ = ((global.vs_uniforms_vec4_[(32i + vs_a0_.w)] * vs_v1_.wwww) + vs_r2_);
    vs_r0_.y = dot(vs_r2_, vs_v0_);
    vs_r1_.y = dot(vs_r2_.xyz, vs_v3_.xyz);
    vs_r2_ = (vs_v1_.yyyy * global.vs_uniforms_vec4_[(33i + vs_a0_.y)]);
    vs_r2_ = ((global.vs_uniforms_vec4_[(33i + vs_a0_.x)] * vs_v1_.xxxx) + vs_r2_);
    vs_r2_ = ((global.vs_uniforms_vec4_[(33i + vs_a0_.z)] * vs_v1_.zzzz) + vs_r2_);
    vs_r2_ = ((global.vs_uniforms_vec4_[(33i + vs_a0_.w)] * vs_v1_.wwww) + vs_r2_);
    vs_r0_.z = dot(vs_r2_, vs_v0_);
    vs_r1_.z = dot(vs_r2_.xyz, vs_v3_.xyz);
    let _e231 = normalize(vs_r1_.xyz);
    vs_r2_.x = _e231.x;
    vs_r2_.y = _e231.y;
    vs_r2_.z = _e231.z;
    gl_Position.x = dot(global.vs_uniforms_vec4_[2], vs_r0_);
    gl_Position.y = dot(global.vs_uniforms_vec4_[3], vs_r0_);
    gl_Position.z = dot(global.vs_uniforms_vec4_[4], vs_r0_);
    gl_Position.w = dot(global.vs_uniforms_vec4_[5], vs_r0_);
    let _e272 = (-(vs_r0_.xyz) + global.vs_uniforms_vec4_[21].xyz);
    vs_r1_.x = _e272.x;
    vs_r1_.y = _e272.y;
    vs_r1_.z = _e272.z;
    vs_r3_.x = dot(vs_r1_.xyz, vs_r1_.xyz);
    vs_r1_.x = dot(vs_r1_.xyz, vs_r2_.xyz);
    let _e300 = (-(vs_r0_.xyz) + global.vs_uniforms_vec4_[22].xyz);
    vs_r4_.x = _e300.x;
    vs_r4_.y = _e300.y;
    vs_r4_.z = _e300.z;
    vs_r3_.y = dot(vs_r4_.xyz, vs_r4_.xyz);
    vs_r1_.y = dot(vs_r4_.xyz, vs_r2_.xyz);
    let _e328 = (-(vs_r0_.xyz) + global.vs_uniforms_vec4_[23].xyz);
    vs_r4_.x = _e328.x;
    vs_r4_.y = _e328.y;
    vs_r4_.z = _e328.z;
    let _e339 = normalize(vs_r0_.xyz);
    vs_r5_.x = _e339.x;
    vs_r5_.y = _e339.y;
    vs_r5_.z = _e339.z;
    vs_r0_.x = ((vs_r0_.z * global.vs_uniforms_vec4_[30].x) + global.vs_uniforms_vec4_[30].y);
    vs_r0_.x = max(vs_r0_.x, 0f);
    vs_r1_.w = pow(abs(vs_r0_.x), global.vs_uniforms_vec4_[30].z);
    vs_o4_v.x = min(vs_r1_.w, 1f);
    vs_r3_.z = dot(vs_r4_.xyz, vs_r4_.xyz);
    vs_r1_.z = dot(vs_r4_.xyz, vs_r2_.xyz);
    if (vs_r3_.x == 0f) {
        local = FLT_MAX;
    } else {
        local = inverseSqrt(abs(vs_r3_.x));
    }
    vs_r0_.x = local;
    if (vs_r3_.y == 0f) {
        local_1 = FLT_MAX;
    } else {
        local_1 = inverseSqrt(abs(vs_r3_.y));
    }
    vs_r0_.y = local_1;
    if (vs_r3_.z == 0f) {
        local_2 = FLT_MAX;
    } else {
        local_2 = inverseSqrt(abs(vs_r3_.z));
    }
    vs_r0_.z = local_2;
    let _e437 = (vs_r3_.xyz * vs_r0_.xyz);
    vs_r4_.x = _e437.x;
    vs_r4_.y = _e437.y;
    vs_r4_.z = _e437.z;
    let _e450 = (vs_r1_.xyz * vs_r0_.xyz);
    vs_r0_.x = _e450.x;
    vs_r0_.y = _e450.y;
    vs_r0_.z = _e450.z;
    let _e467 = max(vs_r0_.xyz, vec3<f32>(0f, 0f, 0f));
    vs_r0_.x = _e467.x;
    vs_r0_.y = _e467.y;
    vs_r0_.z = _e467.z;
    let _e482 = (vs_r4_.xyz * global.vs_uniforms_vec4_[26].xyz);
    vs_r1_.x = _e482.x;
    vs_r1_.y = _e482.y;
    vs_r1_.z = _e482.z;
    let _e500 = ((vs_r3_.xyz * global.vs_uniforms_vec4_[27].xyz) + vs_r1_.xyz);
    vs_r1_.x = _e500.x;
    vs_r1_.y = _e500.y;
    vs_r1_.z = _e500.z;
    let _e515 = (vs_r1_.xyz + global.vs_uniforms_vec4_[25].xyz);
    vs_r1_.x = _e515.x;
    vs_r1_.y = _e515.y;
    vs_r1_.z = _e515.z;
    if (vs_r1_.x == 0f) {
        local_3 = FLT_MAX;
    } else {
        local_3 = (1f / vs_r1_.x);
    }
    vs_r3_.x = local_3;
    if (vs_r1_.y == 0f) {
        local_4 = FLT_MAX;
    } else {
        local_4 = (1f / vs_r1_.y);
    }
    vs_r3_.y = local_4;
    if (vs_r1_.z == 0f) {
        local_5 = FLT_MAX;
    } else {
        local_5 = (1f / vs_r1_.z);
    }
    vs_r3_.z = local_5;
    let _e561 = (vs_r0_.xyz * vs_r3_.xyz);
    vs_r0_.x = _e561.x;
    vs_r0_.y = _e561.y;
    vs_r0_.z = _e561.z;
    vs_r0_.w = clamp(dot(-(global.vs_uniforms_vec4_[12].xyz), vs_r2_.xyz), 0f, 1f);
    let _e585 = global.vs_uniforms_vec4_[10].xyz;
    vs_r1_.x = _e585.x;
    vs_r1_.y = _e585.y;
    vs_r1_.z = _e585.z;
    let _e603 = ((vs_r0_.www * vs_r1_.xyz) + global.vs_uniforms_vec4_[11].xyz);
    vs_r1_.x = _e603.x;
    vs_r1_.y = _e603.y;
    vs_r1_.z = _e603.z;
    let _e621 = ((global.vs_uniforms_vec4_[17].xyz * vs_r0_.xxx) + vs_r1_.xyz);
    vs_r1_.x = _e621.x;
    vs_r1_.y = _e621.y;
    vs_r1_.z = _e621.z;
    let _e639 = ((global.vs_uniforms_vec4_[18].xyz * vs_r0_.yyy) + vs_r1_.xyz);
    vs_r0_.x = _e639.x;
    vs_r0_.y = _e639.y;
    vs_r0_.w = _e639.z;
    let _e662 = clamp(((global.vs_uniforms_vec4_[19].xyz * vs_r0_.zzz) + vs_r0_.xyw), vec3(0f), vec3(1f));
    vs_r0_.x = _e662.x;
    vs_r0_.y = _e662.y;
    vs_r0_.z = _e662.z;
    vs_r0_.w = 1f;
    vs_r1_ = global.vs_uniforms_vec4_[28];
    vs_o1_ = clamp(((vs_r1_ * vs_r0_) + global.vs_uniforms_vec4_[29]), vec4(0f), vec4(1f));
    let _e707 = ((vs_v4_.xyx * vec3<f32>(1f, 1f, 0f)) + vec3<f32>(0f, 0f, 1f));
    vs_r0_.x = _e707.x;
    vs_r0_.y = _e707.y;
    vs_r0_.z = _e707.z;
    vs_o2_.x = dot(global.vs_uniforms_vec4_[6].xyw, vs_r0_.xyz);
    vs_o2_.y = dot(global.vs_uniforms_vec4_[7].xyw, vs_r0_.xyz);
    vs_r0_.x = dot(-(vs_r5_.xyz), vs_r2_.xyz);
    vs_r0_.x = (vs_r0_.x + vs_r0_.x);
    let _e754 = ((vs_r0_.xxx * -(vs_r2_.xyz)) + -(vs_r5_.xyz));
    vs_r0_.x = _e754.x;
    vs_r0_.y = _e754.y;
    vs_r0_.z = _e754.z;
    vs_r0_.w = (vs_r0_.z + 1f);
    vs_r0_.z = dot(vs_r0_.xyw, vs_r0_.xyw);
    if (vs_r0_.z == 0f) {
        local_6 = FLT_MAX;
    } else {
        local_6 = inverseSqrt(abs(vs_r0_.z));
    }
    vs_r0_.z = local_6;
    let _e793 = (vs_r0_.xy * vs_r0_.zz);
    vs_r0_.x = _e793.x;
    vs_r0_.y = _e793.y;
    let _e815 = ((vs_r0_.xy * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    vs_o3_.x = _e815.x;
    vs_o3_.y = _e815.y;
    return VertexOutput(vs_o1_, vs_o2_, vs_o3_, vs_o4_v, gl_Position);
}
