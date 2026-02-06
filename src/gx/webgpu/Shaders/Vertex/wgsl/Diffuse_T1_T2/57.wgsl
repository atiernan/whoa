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

@vertex fn main(@location(0) vs_v0_: vec4<f32>, @location(1) vs_v1_: vec4<f32>, @location(2) @interpolate(flat) vs_v2_u: vec4<u32>, @location(3) vs_v3_: vec4<f32>, @location(6) vs_v4_: vec4<f32>, @location(7) vs_v5_: vec4<f32>) -> VertexOutput {
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
    var io_5_4_: vec4<f32>;
    var vs_o7_v: vec4<f32>;
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
    let _e228 = normalize(vs_r0_.xyz);
    vs_r2_.x = _e228.x;
    vs_r2_.y = _e228.y;
    vs_r2_.z = _e228.z;
    vs_r1_.w = 1f;
    gl_Position.x = dot(global.vs_uniforms_vec4_[2], vs_r1_);
    gl_Position.y = dot(global.vs_uniforms_vec4_[3], vs_r1_);
    gl_Position.z = dot(global.vs_uniforms_vec4_[4], vs_r1_);
    gl_Position.w = dot(global.vs_uniforms_vec4_[5], vs_r1_);
    let _e275 = (-(vs_r1_.xyz) + global.vs_uniforms_vec4_[21].xyz);
    vs_r0_.x = _e275.x;
    vs_r0_.y = _e275.y;
    vs_r0_.z = _e275.z;
    vs_r3_.x = dot(vs_r0_.xyz, vs_r2_.xyz);
    vs_r0_.x = dot(vs_r0_.xyz, vs_r0_.xyz);
    let _e303 = (-(vs_r1_.xyz) + global.vs_uniforms_vec4_[22].xyz);
    vs_r4_.x = _e303.x;
    vs_r4_.y = _e303.y;
    vs_r4_.z = _e303.z;
    vs_r3_.y = dot(vs_r4_.xyz, vs_r2_.xyz);
    vs_r0_.y = dot(vs_r4_.xyz, vs_r4_.xyz);
    let _e331 = (-(vs_r1_.xyz) + global.vs_uniforms_vec4_[23].xyz);
    vs_r4_.x = _e331.x;
    vs_r4_.y = _e331.y;
    vs_r4_.z = _e331.z;
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
    let _e389 = (vs_r3_.xyz * vs_r4_.xyz);
    vs_r3_.x = _e389.x;
    vs_r3_.y = _e389.y;
    vs_r3_.z = _e389.z;
    let _e402 = (vs_r0_.xyz * vs_r4_.xyz);
    vs_r4_.x = _e402.x;
    vs_r4_.y = _e402.y;
    vs_r4_.z = _e402.z;
    let _e417 = (vs_r4_.xyz * global.vs_uniforms_vec4_[26].xyz);
    vs_r4_.x = _e417.x;
    vs_r4_.y = _e417.y;
    vs_r4_.z = _e417.z;
    let _e435 = ((vs_r0_.xyz * global.vs_uniforms_vec4_[27].xyz) + vs_r4_.xyz);
    vs_r0_.x = _e435.x;
    vs_r0_.y = _e435.y;
    vs_r0_.z = _e435.z;
    let _e450 = (vs_r0_.xyz + global.vs_uniforms_vec4_[25].xyz);
    vs_r0_.x = _e450.x;
    vs_r0_.y = _e450.y;
    vs_r0_.z = _e450.z;
    let _e467 = max(vs_r3_.xyz, vec3<f32>(0f, 0f, 0f));
    vs_r3_.x = _e467.x;
    vs_r3_.y = _e467.y;
    vs_r3_.z = _e467.z;
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
    let _e513 = (vs_r3_.xyz * vs_r4_.xyz);
    vs_r0_.x = _e513.x;
    vs_r0_.y = _e513.y;
    vs_r0_.z = _e513.z;
    vs_r0_.w = clamp(dot(-(global.vs_uniforms_vec4_[12].xyz), vs_r2_.xyz), 0f, 1f);
    let _e535 = vs_r2_.xyz;
    vs_o5_.x = _e535.x;
    vs_o5_.y = _e535.y;
    vs_o5_.z = _e535.z;
    let _e547 = global.vs_uniforms_vec4_[10].xyz;
    vs_r2_.x = _e547.x;
    vs_r2_.y = _e547.y;
    vs_r2_.z = _e547.z;
    let _e565 = ((vs_r0_.www * vs_r2_.xyz) + global.vs_uniforms_vec4_[11].xyz);
    vs_r2_.x = _e565.x;
    vs_r2_.y = _e565.y;
    vs_r2_.z = _e565.z;
    let _e583 = ((global.vs_uniforms_vec4_[17].xyz * vs_r0_.xxx) + vs_r2_.xyz);
    vs_r2_.x = _e583.x;
    vs_r2_.y = _e583.y;
    vs_r2_.z = _e583.z;
    let _e601 = ((global.vs_uniforms_vec4_[18].xyz * vs_r0_.yyy) + vs_r2_.xyz);
    vs_r0_.x = _e601.x;
    vs_r0_.y = _e601.y;
    vs_r0_.w = _e601.z;
    let _e624 = clamp(((global.vs_uniforms_vec4_[19].xyz * vs_r0_.zzz) + vs_r0_.xyw), vec3(0f), vec3(1f));
    vs_r0_.x = _e624.x;
    vs_r0_.y = _e624.y;
    vs_r0_.z = _e624.z;
    vs_r0_.w = 1f;
    vs_r2_ = global.vs_uniforms_vec4_[28];
    vs_o1_ = clamp(((vs_r2_ * vs_r0_) + global.vs_uniforms_vec4_[29]), vec4(0f), vec4(1f));
    vs_r0_.x = ((vs_r1_.z * global.vs_uniforms_vec4_[30].x) + global.vs_uniforms_vec4_[30].y);
    vs_r0_.x = max(vs_r0_.x, 0f);
    vs_r2_.x = pow(abs(vs_r0_.x), global.vs_uniforms_vec4_[30].z);
    vs_o7_v.x = min(vs_r2_.x, 1f);
    let _e709 = ((vs_v4_.xyx * vec3<f32>(1f, 1f, 0f)) + vec3<f32>(0f, 0f, 1f));
    vs_r0_.x = _e709.x;
    vs_r0_.y = _e709.y;
    vs_r0_.z = _e709.z;
    vs_o2_.x = dot(global.vs_uniforms_vec4_[6].xyw, vs_r0_.xyz);
    vs_o2_.y = dot(global.vs_uniforms_vec4_[7].xyw, vs_r0_.xyz);
    let _e749 = ((vs_v5_.xyx * vec3<f32>(1f, 1f, 0f)) + vec3<f32>(0f, 0f, 1f));
    vs_r0_.x = _e749.x;
    vs_r0_.y = _e749.y;
    vs_r0_.z = _e749.z;
    vs_o3_.x = dot(global.vs_uniforms_vec4_[8].xyw, vs_r0_.xyz);
    vs_o3_.y = dot(global.vs_uniforms_vec4_[9].xyw, vs_r0_.xyz);
    io_5_4_.x = dot(vs_r1_, global.vs_uniforms_vec4_[224]);
    io_5_4_.y = dot(vs_r1_, global.vs_uniforms_vec4_[225]);
    io_5_4_.z = dot(vs_r1_, global.vs_uniforms_vec4_[226]);
    let _e793 = vs_r1_.xyz;
    vs_o4_.x = _e793.x;
    vs_o4_.y = _e793.y;
    vs_o4_.z = _e793.z;
    return VertexOutput(vs_o1_, vs_o2_, vs_o3_, vs_o4_, vs_o5_, io_5_4_, vs_o7_v, gl_Position);
}
