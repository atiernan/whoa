struct UniformBlock_0_ {
    vs_uniforms_vec4_: array<vec4<f32>, 236>,
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
    var vs_o4_: vec4<f32>;
    var vs_o5_: vec4<f32>;
    var io_5_4_: vec4<f32>;
    var io_5_5_: vec4<f32>;
    var io_5_6_: vec4<f32>;
    var vs_o9_v: vec4<f32>;
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
    vs_r1_.w = 1f;
    vs_r2_.x = dot(global.vs_uniforms_vec4_[31].xyz, vs_v1_.xyz);
    vs_r2_.y = dot(global.vs_uniforms_vec4_[32].xyz, vs_v1_.xyz);
    vs_r2_.z = dot(global.vs_uniforms_vec4_[33].xyz, vs_v1_.xyz);
    let _e106 = normalize(vs_r2_.xyz);
    vs_r3_.x = _e106.x;
    vs_r3_.y = _e106.y;
    vs_r3_.z = _e106.z;
    vs_r2_.x = clamp(dot(-(global.vs_uniforms_vec4_[12].xyz), vs_r3_.xyz), 0f, 1f);
    let _e130 = global.vs_uniforms_vec4_[10].xyz;
    vs_r4_.x = _e130.x;
    vs_r4_.y = _e130.y;
    vs_r4_.z = _e130.z;
    let _e148 = ((vs_r2_.xxx * vs_r4_.xyz) + global.vs_uniforms_vec4_[11].xyz);
    vs_r2_.x = _e148.x;
    vs_r2_.y = _e148.y;
    vs_r2_.z = _e148.z;
    let _e164 = (-(vs_r0_.xyz) + global.vs_uniforms_vec4_[21].xyz);
    vs_r4_.x = _e164.x;
    vs_r4_.y = _e164.y;
    vs_r4_.z = _e164.z;
    vs_r5_.x = dot(vs_r4_.xyz, vs_r3_.xyz);
    vs_r4_.x = dot(vs_r4_.xyz, vs_r4_.xyz);
    let _e192 = (-(vs_r0_.xyz) + global.vs_uniforms_vec4_[22].xyz);
    vs_r6_.x = _e192.x;
    vs_r6_.y = _e192.y;
    vs_r6_.z = _e192.z;
    vs_r5_.y = dot(vs_r6_.xyz, vs_r3_.xyz);
    vs_r4_.y = dot(vs_r6_.xyz, vs_r6_.xyz);
    let _e220 = (-(vs_r0_.xyz) + global.vs_uniforms_vec4_[23].xyz);
    vs_r6_.x = _e220.x;
    vs_r6_.y = _e220.y;
    vs_r6_.z = _e220.z;
    vs_r5_.z = dot(vs_r6_.xyz, vs_r3_.xyz);
    vs_r4_.z = dot(vs_r6_.xyz, vs_r6_.xyz);
    if (vs_r4_.x == 0f) {
        local = FLT_MAX;
    } else {
        local = inverseSqrt(abs(vs_r4_.x));
    }
    vs_r6_.x = local;
    if (vs_r4_.y == 0f) {
        local_1 = FLT_MAX;
    } else {
        local_1 = inverseSqrt(abs(vs_r4_.y));
    }
    vs_r6_.y = local_1;
    if (vs_r4_.z == 0f) {
        local_2 = FLT_MAX;
    } else {
        local_2 = inverseSqrt(abs(vs_r4_.z));
    }
    vs_r6_.z = local_2;
    let _e278 = (vs_r5_.xyz * vs_r6_.xyz);
    vs_r5_.x = _e278.x;
    vs_r5_.y = _e278.y;
    vs_r5_.z = _e278.z;
    let _e291 = (vs_r4_.xyz * vs_r6_.xyz);
    vs_r6_.x = _e291.x;
    vs_r6_.y = _e291.y;
    vs_r6_.z = _e291.z;
    let _e306 = (vs_r6_.xyz * global.vs_uniforms_vec4_[26].xyz);
    vs_r6_.x = _e306.x;
    vs_r6_.y = _e306.y;
    vs_r6_.z = _e306.z;
    let _e324 = ((vs_r4_.xyz * global.vs_uniforms_vec4_[27].xyz) + vs_r6_.xyz);
    vs_r4_.x = _e324.x;
    vs_r4_.y = _e324.y;
    vs_r4_.z = _e324.z;
    let _e339 = (vs_r4_.xyz + global.vs_uniforms_vec4_[25].xyz);
    vs_r4_.x = _e339.x;
    vs_r4_.y = _e339.y;
    vs_r4_.z = _e339.z;
    let _e356 = max(vs_r5_.xyz, vec3<f32>(0f, 0f, 0f));
    vs_r5_.x = _e356.x;
    vs_r5_.y = _e356.y;
    vs_r5_.z = _e356.z;
    if (vs_r4_.x == 0f) {
        local_3 = FLT_MAX;
    } else {
        local_3 = (1f / vs_r4_.x);
    }
    vs_r6_.x = local_3;
    if (vs_r4_.y == 0f) {
        local_4 = FLT_MAX;
    } else {
        local_4 = (1f / vs_r4_.y);
    }
    vs_r6_.y = local_4;
    if (vs_r4_.z == 0f) {
        local_5 = FLT_MAX;
    } else {
        local_5 = (1f / vs_r4_.z);
    }
    vs_r6_.z = local_5;
    let _e402 = (vs_r5_.xyz * vs_r6_.xyz);
    vs_r4_.x = _e402.x;
    vs_r4_.y = _e402.y;
    vs_r4_.z = _e402.z;
    let _e420 = ((global.vs_uniforms_vec4_[17].xyz * vs_r4_.xxx) + vs_r2_.xyz);
    vs_r2_.x = _e420.x;
    vs_r2_.y = _e420.y;
    vs_r2_.z = _e420.z;
    let _e438 = ((global.vs_uniforms_vec4_[18].xyz * vs_r4_.yyy) + vs_r2_.xyz);
    vs_r2_.x = _e438.x;
    vs_r2_.y = _e438.y;
    vs_r2_.z = _e438.z;
    let _e461 = clamp(((global.vs_uniforms_vec4_[19].xyz * vs_r4_.zzz) + vs_r2_.xyz), vec3(0f), vec3(1f));
    vs_r1_.x = _e461.x;
    vs_r1_.y = _e461.y;
    vs_r1_.z = _e461.z;
    vs_r2_ = global.vs_uniforms_vec4_[28];
    vs_o1_ = clamp(((vs_r2_ * vs_r1_) + global.vs_uniforms_vec4_[29]), vec4(0f), vec4(1f));
    vs_r1_.x = ((vs_r0_.z * global.vs_uniforms_vec4_[30].x) + global.vs_uniforms_vec4_[30].y);
    vs_r1_.x = max(vs_r1_.x, 0f);
    vs_r2_.x = pow(abs(vs_r1_.x), global.vs_uniforms_vec4_[30].z);
    vs_o9_v.x = min(vs_r2_.x, 1f);
    let _e540 = ((vs_v2_.xyx * vec3<f32>(1f, 1f, 0f)) + vec3<f32>(0f, 0f, 1f));
    vs_r1_.x = _e540.x;
    vs_r1_.y = _e540.y;
    vs_r1_.z = _e540.z;
    vs_o2_.x = dot(global.vs_uniforms_vec4_[6].xyw, vs_r1_.xyz);
    vs_o2_.y = dot(global.vs_uniforms_vec4_[7].xyw, vs_r1_.xyz);
    let _e567 = normalize(vs_r0_.xyz);
    vs_r1_.x = _e567.x;
    vs_r1_.y = _e567.y;
    vs_r1_.z = _e567.z;
    vs_r1_.w = dot(-(vs_r1_.xyz), vs_r3_.xyz);
    vs_r1_.w = (vs_r1_.w + vs_r1_.w);
    let _e598 = ((vs_r1_.www * -(vs_r3_.xyz)) + -(vs_r1_.xyz));
    vs_r1_.x = _e598.x;
    vs_r1_.y = _e598.y;
    vs_r1_.z = _e598.z;
    let _e608 = vs_r3_.xyz;
    vs_o5_.x = _e608.x;
    vs_o5_.y = _e608.y;
    vs_o5_.z = _e608.z;
    vs_r1_.w = (vs_r1_.z + 1f);
    vs_r1_.z = dot(vs_r1_.xyw, vs_r1_.xyw);
    if (vs_r1_.z == 0f) {
        local_6 = FLT_MAX;
    } else {
        local_6 = inverseSqrt(abs(vs_r1_.z));
    }
    vs_r1_.z = local_6;
    let _e647 = (vs_r1_.xy * vs_r1_.zz);
    vs_r1_.x = _e647.x;
    vs_r1_.y = _e647.y;
    let _e669 = ((vs_r1_.xy * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    vs_o3_.x = _e669.x;
    vs_o3_.y = _e669.y;
    io_5_4_.x = dot(vs_r0_, global.vs_uniforms_vec4_[224]);
    io_5_4_.y = dot(vs_r0_, global.vs_uniforms_vec4_[225]);
    io_5_4_.z = dot(vs_r0_, global.vs_uniforms_vec4_[226]);
    io_5_5_.x = dot(vs_r0_, global.vs_uniforms_vec4_[227]);
    io_5_5_.y = dot(vs_r0_, global.vs_uniforms_vec4_[228]);
    io_5_5_.z = dot(vs_r0_, global.vs_uniforms_vec4_[229]);
    io_5_6_.x = dot(vs_r0_, global.vs_uniforms_vec4_[230]);
    io_5_6_.y = dot(vs_r0_, global.vs_uniforms_vec4_[231]);
    io_5_6_.z = dot(vs_r0_, global.vs_uniforms_vec4_[232]);
    io_5_4_.w = dot(vs_r0_, global.vs_uniforms_vec4_[233]);
    io_5_5_.w = dot(vs_r0_, global.vs_uniforms_vec4_[234]);
    io_5_6_.w = dot(vs_r0_, global.vs_uniforms_vec4_[235]);
    let _e749 = vs_r0_.xyz;
    vs_o4_.x = _e749.x;
    vs_o4_.y = _e749.y;
    vs_o4_.z = _e749.z;
    return VertexOutput(vs_o1_, vs_o2_, vs_o3_, vs_o4_, vs_o5_, io_5_4_, io_5_5_, io_5_6_, vs_o9_v, gl_Position);
}
