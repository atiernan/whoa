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
    @location(6) io_5_5_: vec4<f32>,
    @location(7) io_5_6_: vec4<f32>,
    @location(10) vs_o9_v: vec4<f32>,
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
    var vs_r5_: vec4<f32>;
    var vs_a0_: vec4<i32>;
    var vs_o1_: vec4<f32>;
    var vs_o2_: vec4<f32>;
    var vs_o3_: vec4<f32>;
    var vs_o4_: vec4<f32>;
    var vs_o5_: vec4<f32>;
    var io_5_4_: vec4<f32>;
    var io_5_5_: vec4<f32>;
    var io_5_6_: vec4<f32>;
    var vs_o9_v: vec4<f32>;
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
    let _e231 = normalize(vs_r0_.xyz);
    vs_r2_.x = _e231.x;
    vs_r2_.y = _e231.y;
    vs_r2_.z = _e231.z;
    vs_r1_.w = 1f;
    gl_Position.x = dot(global.vs_uniforms_vec4_[2], vs_r1_);
    gl_Position.y = dot(global.vs_uniforms_vec4_[3], vs_r1_);
    gl_Position.z = dot(global.vs_uniforms_vec4_[4], vs_r1_);
    gl_Position.w = dot(global.vs_uniforms_vec4_[5], vs_r1_);
    vs_r0_.x = clamp(dot(-(global.vs_uniforms_vec4_[12].xyz), vs_r2_.xyz), 0f, 1f);
    let _e286 = global.vs_uniforms_vec4_[10].xyz;
    vs_r3_.x = _e286.x;
    vs_r3_.y = _e286.y;
    vs_r3_.z = _e286.z;
    let _e304 = ((vs_r0_.xxx * vs_r3_.xyz) + global.vs_uniforms_vec4_[11].xyz);
    vs_r0_.x = _e304.x;
    vs_r0_.y = _e304.y;
    vs_r0_.z = _e304.z;
    let _e320 = (-(vs_r1_.xyz) + global.vs_uniforms_vec4_[21].xyz);
    vs_r3_.x = _e320.x;
    vs_r3_.y = _e320.y;
    vs_r3_.z = _e320.z;
    vs_r4_.x = dot(vs_r3_.xyz, vs_r2_.xyz);
    vs_r3_.x = dot(vs_r3_.xyz, vs_r3_.xyz);
    let _e348 = (-(vs_r1_.xyz) + global.vs_uniforms_vec4_[22].xyz);
    vs_r5_.x = _e348.x;
    vs_r5_.y = _e348.y;
    vs_r5_.z = _e348.z;
    vs_r4_.y = dot(vs_r5_.xyz, vs_r2_.xyz);
    vs_r3_.y = dot(vs_r5_.xyz, vs_r5_.xyz);
    let _e376 = (-(vs_r1_.xyz) + global.vs_uniforms_vec4_[23].xyz);
    vs_r5_.x = _e376.x;
    vs_r5_.y = _e376.y;
    vs_r5_.z = _e376.z;
    vs_r4_.z = dot(vs_r5_.xyz, vs_r2_.xyz);
    vs_r3_.z = dot(vs_r5_.xyz, vs_r5_.xyz);
    let _e404 = (-(vs_r1_.xyz) + global.vs_uniforms_vec4_[24].xyz);
    vs_r5_.x = _e404.x;
    vs_r5_.y = _e404.y;
    vs_r5_.z = _e404.z;
    vs_r4_.w = dot(vs_r5_.xyz, vs_r2_.xyz);
    let _e420 = vs_r2_.xyz;
    vs_o5_.x = _e420.x;
    vs_o5_.y = _e420.y;
    vs_o5_.z = _e420.z;
    vs_r3_.w = dot(vs_r5_.xyz, vs_r5_.xyz);
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
    if (vs_r3_.z == 0f) {
        local_2 = FLT_MAX;
    } else {
        local_2 = inverseSqrt(abs(vs_r3_.z));
    }
    vs_r2_.z = local_2;
    if (vs_r3_.w == 0f) {
        local_3 = FLT_MAX;
    } else {
        local_3 = inverseSqrt(abs(vs_r3_.w));
    }
    vs_r2_.w = local_3;
    vs_r4_ = (vs_r4_ * vs_r2_);
    vs_r2_ = (vs_r3_ * vs_r2_);
    vs_r2_ = (vs_r2_ * global.vs_uniforms_vec4_[26]);
    vs_r2_ = ((vs_r3_ * global.vs_uniforms_vec4_[27]) + vs_r2_);
    vs_r2_ = (vs_r2_ + global.vs_uniforms_vec4_[25]);
    vs_r3_ = max(vs_r4_, vec4<f32>(0f, 0f, 0f, 0f));
    if (vs_r2_.x == 0f) {
        local_4 = FLT_MAX;
    } else {
        local_4 = (1f / vs_r2_.x);
    }
    vs_r4_.x = local_4;
    if (vs_r2_.y == 0f) {
        local_5 = FLT_MAX;
    } else {
        local_5 = (1f / vs_r2_.y);
    }
    vs_r4_.y = local_5;
    if (vs_r2_.z == 0f) {
        local_6 = FLT_MAX;
    } else {
        local_6 = (1f / vs_r2_.z);
    }
    vs_r4_.z = local_6;
    if (vs_r2_.w == 0f) {
        local_7 = FLT_MAX;
    } else {
        local_7 = (1f / vs_r2_.w);
    }
    vs_r4_.w = local_7;
    vs_r2_ = (vs_r3_ * vs_r4_);
    let _e566 = ((global.vs_uniforms_vec4_[17].xyz * vs_r2_.xxx) + vs_r0_.xyz);
    vs_r0_.x = _e566.x;
    vs_r0_.y = _e566.y;
    vs_r0_.z = _e566.z;
    let _e584 = ((global.vs_uniforms_vec4_[18].xyz * vs_r2_.yyy) + vs_r0_.xyz);
    vs_r0_.x = _e584.x;
    vs_r0_.y = _e584.y;
    vs_r0_.z = _e584.z;
    let _e602 = ((global.vs_uniforms_vec4_[19].xyz * vs_r2_.zzz) + vs_r0_.xyz);
    vs_r0_.x = _e602.x;
    vs_r0_.y = _e602.y;
    vs_r0_.z = _e602.z;
    let _e625 = clamp(((global.vs_uniforms_vec4_[20].xyz * vs_r2_.www) + vs_r0_.xyz), vec3(0f), vec3(1f));
    vs_r0_.x = _e625.x;
    vs_r0_.y = _e625.y;
    vs_r0_.z = _e625.z;
    vs_r0_.w = 1f;
    vs_r2_ = global.vs_uniforms_vec4_[28];
    vs_o1_ = clamp(((vs_r2_ * vs_r0_) + global.vs_uniforms_vec4_[29]), vec4(0f), vec4(1f));
    vs_r0_.x = ((vs_r1_.z * global.vs_uniforms_vec4_[30].x) + global.vs_uniforms_vec4_[30].y);
    vs_r0_.x = max(vs_r0_.x, 0f);
    vs_r2_.x = pow(abs(vs_r0_.x), global.vs_uniforms_vec4_[30].z);
    vs_o9_v.x = min(vs_r2_.x, 1f);
    let _e710 = ((vs_v4_.xyx * vec3<f32>(1f, 1f, 0f)) + vec3<f32>(0f, 0f, 1f));
    vs_r0_.x = _e710.x;
    vs_r0_.y = _e710.y;
    vs_r0_.z = _e710.z;
    vs_o2_.x = dot(global.vs_uniforms_vec4_[6].xyw, vs_r0_.xyz);
    vs_o2_.y = dot(global.vs_uniforms_vec4_[7].xyw, vs_r0_.xyz);
    let _e750 = ((vs_v5_.xyx * vec3<f32>(1f, 1f, 0f)) + vec3<f32>(0f, 0f, 1f));
    vs_r0_.x = _e750.x;
    vs_r0_.y = _e750.y;
    vs_r0_.z = _e750.z;
    vs_o3_.x = dot(global.vs_uniforms_vec4_[8].xyw, vs_r0_.xyz);
    vs_o3_.y = dot(global.vs_uniforms_vec4_[9].xyw, vs_r0_.xyz);
    io_5_4_.x = dot(vs_r1_, global.vs_uniforms_vec4_[224]);
    io_5_4_.y = dot(vs_r1_, global.vs_uniforms_vec4_[225]);
    io_5_4_.z = dot(vs_r1_, global.vs_uniforms_vec4_[226]);
    io_5_5_.x = dot(vs_r1_, global.vs_uniforms_vec4_[227]);
    io_5_5_.y = dot(vs_r1_, global.vs_uniforms_vec4_[228]);
    io_5_5_.z = dot(vs_r1_, global.vs_uniforms_vec4_[229]);
    io_5_6_.x = dot(vs_r1_, global.vs_uniforms_vec4_[230]);
    io_5_6_.y = dot(vs_r1_, global.vs_uniforms_vec4_[231]);
    io_5_6_.z = dot(vs_r1_, global.vs_uniforms_vec4_[232]);
    io_5_4_.w = dot(vs_r1_, global.vs_uniforms_vec4_[233]);
    io_5_5_.w = dot(vs_r1_, global.vs_uniforms_vec4_[234]);
    io_5_6_.w = dot(vs_r1_, global.vs_uniforms_vec4_[235]);
    let _e848 = vs_r1_.xyz;
    vs_o4_.x = _e848.x;
    vs_o4_.y = _e848.y;
    vs_o4_.z = _e848.z;
    return VertexOutput(vs_o1_, vs_o2_, vs_o3_, vs_o4_, vs_o5_, io_5_4_, io_5_5_, io_5_6_, vs_o9_v, gl_Position);
}
