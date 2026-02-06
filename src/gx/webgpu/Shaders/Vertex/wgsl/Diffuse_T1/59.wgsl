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
    var local_6: f32;
    var local_7: f32;

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
    let _e357 = (-(vs_r1_.xyz) + global.vs_uniforms_vec4_[24].xyz);
    vs_r4_.x = _e357.x;
    vs_r4_.y = _e357.y;
    vs_r4_.z = _e357.z;
    vs_r3_.w = dot(vs_r4_.xyz, vs_r2_.xyz);
    vs_r0_.w = dot(vs_r4_.xyz, vs_r4_.xyz);
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
    if (vs_r0_.w == 0f) {
        local_3 = FLT_MAX;
    } else {
        local_3 = inverseSqrt(abs(vs_r0_.w));
    }
    vs_r4_.w = local_3;
    vs_r3_ = (vs_r3_ * vs_r4_);
    vs_r4_ = (vs_r0_ * vs_r4_);
    vs_r4_ = (vs_r4_ * global.vs_uniforms_vec4_[26]);
    vs_r0_ = ((vs_r0_ * global.vs_uniforms_vec4_[27]) + vs_r4_);
    vs_r0_ = (vs_r0_ + global.vs_uniforms_vec4_[25]);
    vs_r3_ = max(vs_r3_, vec4<f32>(0f, 0f, 0f, 0f));
    if (vs_r0_.x == 0f) {
        local_4 = FLT_MAX;
    } else {
        local_4 = (1f / vs_r0_.x);
    }
    vs_r4_.x = local_4;
    if (vs_r0_.y == 0f) {
        local_5 = FLT_MAX;
    } else {
        local_5 = (1f / vs_r0_.y);
    }
    vs_r4_.y = local_5;
    if (vs_r0_.z == 0f) {
        local_6 = FLT_MAX;
    } else {
        local_6 = (1f / vs_r0_.z);
    }
    vs_r4_.z = local_6;
    if (vs_r0_.w == 0f) {
        local_7 = FLT_MAX;
    } else {
        local_7 = (1f / vs_r0_.w);
    }
    vs_r4_.w = local_7;
    vs_r0_ = (vs_r3_ * vs_r4_);
    vs_r2_.w = clamp(dot(-(global.vs_uniforms_vec4_[12].xyz), vs_r2_.xyz), 0f, 1f);
    let _e513 = vs_r2_.xyz;
    vs_o4_.x = _e513.x;
    vs_o4_.y = _e513.y;
    vs_o4_.z = _e513.z;
    let _e525 = global.vs_uniforms_vec4_[10].xyz;
    vs_r2_.x = _e525.x;
    vs_r2_.y = _e525.y;
    vs_r2_.z = _e525.z;
    let _e543 = ((vs_r2_.www * vs_r2_.xyz) + global.vs_uniforms_vec4_[11].xyz);
    vs_r2_.x = _e543.x;
    vs_r2_.y = _e543.y;
    vs_r2_.z = _e543.z;
    let _e561 = ((global.vs_uniforms_vec4_[17].xyz * vs_r0_.xxx) + vs_r2_.xyz);
    vs_r2_.x = _e561.x;
    vs_r2_.y = _e561.y;
    vs_r2_.z = _e561.z;
    let _e579 = ((global.vs_uniforms_vec4_[18].xyz * vs_r0_.yyy) + vs_r2_.xyz);
    vs_r2_.x = _e579.x;
    vs_r2_.y = _e579.y;
    vs_r2_.z = _e579.z;
    let _e597 = ((global.vs_uniforms_vec4_[19].xyz * vs_r0_.zzz) + vs_r2_.xyz);
    vs_r0_.x = _e597.x;
    vs_r0_.y = _e597.y;
    vs_r0_.z = _e597.z;
    let _e620 = clamp(((global.vs_uniforms_vec4_[20].xyz * vs_r0_.www) + vs_r0_.xyz), vec3(0f), vec3(1f));
    vs_r0_.x = _e620.x;
    vs_r0_.y = _e620.y;
    vs_r0_.z = _e620.z;
    vs_r0_.w = 1f;
    vs_r2_ = global.vs_uniforms_vec4_[28];
    vs_o1_ = clamp(((vs_r2_ * vs_r0_) + global.vs_uniforms_vec4_[29]), vec4(0f), vec4(1f));
    vs_r0_.x = ((vs_r1_.z * global.vs_uniforms_vec4_[30].x) + global.vs_uniforms_vec4_[30].y);
    vs_r0_.x = max(vs_r0_.x, 0f);
    vs_r2_.x = pow(abs(vs_r0_.x), global.vs_uniforms_vec4_[30].z);
    vs_o6_v.x = min(vs_r2_.x, 1f);
    let _e705 = ((vs_v4_.xyx * vec3<f32>(1f, 1f, 0f)) + vec3<f32>(0f, 0f, 1f));
    vs_r0_.x = _e705.x;
    vs_r0_.y = _e705.y;
    vs_r0_.z = _e705.z;
    vs_o2_.x = dot(global.vs_uniforms_vec4_[6].xyw, vs_r0_.xyz);
    vs_o2_.y = dot(global.vs_uniforms_vec4_[7].xyw, vs_r0_.xyz);
    vs_o5_.x = dot(vs_r1_, global.vs_uniforms_vec4_[224]);
    vs_o5_.y = dot(vs_r1_, global.vs_uniforms_vec4_[225]);
    vs_o5_.z = dot(vs_r1_, global.vs_uniforms_vec4_[226]);
    let _e749 = vs_r1_.xyz;
    vs_o3_.x = _e749.x;
    vs_o3_.y = _e749.y;
    vs_o3_.z = _e749.z;
    return VertexOutput(vs_o1_, vs_o2_, vs_o3_, vs_o4_, vs_o5_, vs_o6_v, gl_Position);
}
