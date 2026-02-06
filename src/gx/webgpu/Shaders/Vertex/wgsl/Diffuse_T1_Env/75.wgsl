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

@vertex fn main(@location(0) vs_v0_: vec4<f32>, @location(2) @interpolate(flat) vs_v1_u: vec4<u32>, @location(3) vs_v2_: vec4<f32>, @location(6) vs_v3_: vec4<f32>) -> VertexOutput {
    var vs_r0_: vec4<f32>;
    var vs_r1_: vec4<f32>;
    var vs_r2_: vec4<f32>;
    var vs_r3_: vec4<f32>;
    var vs_r4_: vec4<f32>;
    var vs_r5_: vec4<f32>;
    var vs_r6_: vec4<f32>;
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

    var vs_v1_: vec4<f32>;
    var local: f32;
    var local_1: f32;
    var local_2: f32;
    var local_3: f32;
    var local_4: f32;

    vs_v1_ = vec4<f32>(vs_v1_u);
    vs_r0_.x = (3f * vs_v1_.x);
    vs_a0_.x = i32((floor((abs(vs_r0_.x) + 0.5f)) * sign(vs_r0_.x)));
    vs_r0_.x = dot(global.vs_uniforms_vec4_[(31i + vs_a0_.x)], vs_v0_);
    vs_r0_.y = dot(global.vs_uniforms_vec4_[(32i + vs_a0_.x)], vs_v0_);
    vs_r0_.z = dot(global.vs_uniforms_vec4_[(33i + vs_a0_.x)], vs_v0_);
    vs_r0_.w = 1f;
    gl_Position.x = dot(global.vs_uniforms_vec4_[2], vs_r0_);
    gl_Position.y = dot(global.vs_uniforms_vec4_[3], vs_r0_);
    gl_Position.z = dot(global.vs_uniforms_vec4_[4], vs_r0_);
    gl_Position.w = dot(global.vs_uniforms_vec4_[5], vs_r0_);
    vs_r1_.w = 1f;
    vs_r2_.x = dot((global.vs_uniforms_vec4_[(31i + vs_a0_.x)]).xyz, vs_v2_.xyz);
    vs_r2_.y = dot((global.vs_uniforms_vec4_[(32i + vs_a0_.x)]).xyz, vs_v2_.xyz);
    vs_r2_.z = dot((global.vs_uniforms_vec4_[(33i + vs_a0_.x)]).xyz, vs_v2_.xyz);
    let _e162 = normalize(vs_r2_.xyz);
    vs_r3_.x = _e162.x;
    vs_r3_.y = _e162.y;
    vs_r3_.z = _e162.z;
    vs_r2_.x = clamp(dot(-(global.vs_uniforms_vec4_[12].xyz), vs_r3_.xyz), 0f, 1f);
    let _e186 = global.vs_uniforms_vec4_[10].xyz;
    vs_r4_.x = _e186.x;
    vs_r4_.y = _e186.y;
    vs_r4_.z = _e186.z;
    let _e204 = ((vs_r2_.xxx * vs_r4_.xyz) + global.vs_uniforms_vec4_[11].xyz);
    vs_r2_.x = _e204.x;
    vs_r2_.y = _e204.y;
    vs_r2_.z = _e204.z;
    let _e220 = (-(vs_r0_.xyz) + global.vs_uniforms_vec4_[21].xyz);
    vs_r4_.x = _e220.x;
    vs_r4_.y = _e220.y;
    vs_r4_.z = _e220.z;
    vs_r5_.x = dot(vs_r4_.xyz, vs_r3_.xyz);
    vs_r4_.x = dot(vs_r4_.xyz, vs_r4_.xyz);
    let _e248 = (-(vs_r0_.xyz) + global.vs_uniforms_vec4_[22].xyz);
    vs_r6_.x = _e248.x;
    vs_r6_.y = _e248.y;
    vs_r6_.z = _e248.z;
    vs_r5_.y = dot(vs_r6_.xyz, vs_r3_.xyz);
    vs_r4_.y = dot(vs_r6_.xyz, vs_r6_.xyz);
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
    let _e295 = (vs_r5_.xy * vs_r6_.xy);
    vs_r4_.z = _e295.x;
    vs_r4_.w = _e295.y;
    let _e306 = (vs_r4_.xy * vs_r6_.xy);
    vs_r5_.x = _e306.x;
    vs_r5_.y = _e306.y;
    let _e319 = (vs_r5_.xy * global.vs_uniforms_vec4_[26].xy);
    vs_r5_.x = _e319.x;
    vs_r5_.y = _e319.y;
    let _e335 = ((vs_r4_.xy * global.vs_uniforms_vec4_[27].xy) + vs_r5_.xy);
    vs_r4_.x = _e335.x;
    vs_r4_.y = _e335.y;
    let _e348 = (vs_r4_.xy + global.vs_uniforms_vec4_[25].xy);
    vs_r4_.x = _e348.x;
    vs_r4_.y = _e348.y;
    let _e363 = max(vs_r4_.zw, vec2<f32>(0f, 0f));
    vs_r4_.z = _e363.x;
    vs_r4_.w = _e363.y;
    if (vs_r4_.x == 0f) {
        local_2 = FLT_MAX;
    } else {
        local_2 = (1f / vs_r4_.x);
    }
    vs_r5_.x = local_2;
    if (vs_r4_.y == 0f) {
        local_3 = FLT_MAX;
    } else {
        local_3 = (1f / vs_r4_.y);
    }
    vs_r5_.y = local_3;
    let _e396 = (vs_r4_.zw * vs_r5_.xy);
    vs_r4_.x = _e396.x;
    vs_r4_.y = _e396.y;
    let _e412 = ((global.vs_uniforms_vec4_[17].xyz * vs_r4_.xxx) + vs_r2_.xyz);
    vs_r2_.x = _e412.x;
    vs_r2_.y = _e412.y;
    vs_r2_.z = _e412.z;
    let _e435 = clamp(((global.vs_uniforms_vec4_[18].xyz * vs_r4_.yyy) + vs_r2_.xyz), vec3(0f), vec3(1f));
    vs_r1_.x = _e435.x;
    vs_r1_.y = _e435.y;
    vs_r1_.z = _e435.z;
    vs_r2_ = global.vs_uniforms_vec4_[28];
    vs_o1_ = clamp(((vs_r2_ * vs_r1_) + global.vs_uniforms_vec4_[29]), vec4(0f), vec4(1f));
    vs_r1_.x = ((vs_r0_.z * global.vs_uniforms_vec4_[30].x) + global.vs_uniforms_vec4_[30].y);
    vs_r1_.x = max(vs_r1_.x, 0f);
    vs_r2_.x = pow(abs(vs_r1_.x), global.vs_uniforms_vec4_[30].z);
    vs_o9_v.x = min(vs_r2_.x, 1f);
    let _e514 = ((vs_v3_.xyx * vec3<f32>(1f, 1f, 0f)) + vec3<f32>(0f, 0f, 1f));
    vs_r1_.x = _e514.x;
    vs_r1_.y = _e514.y;
    vs_r1_.z = _e514.z;
    vs_o2_.x = dot(global.vs_uniforms_vec4_[6].xyw, vs_r1_.xyz);
    vs_o2_.y = dot(global.vs_uniforms_vec4_[7].xyw, vs_r1_.xyz);
    let _e541 = normalize(vs_r0_.xyz);
    vs_r1_.x = _e541.x;
    vs_r1_.y = _e541.y;
    vs_r1_.z = _e541.z;
    vs_r1_.w = dot(-(vs_r1_.xyz), vs_r3_.xyz);
    vs_r1_.w = (vs_r1_.w + vs_r1_.w);
    let _e572 = ((vs_r1_.www * -(vs_r3_.xyz)) + -(vs_r1_.xyz));
    vs_r1_.x = _e572.x;
    vs_r1_.y = _e572.y;
    vs_r1_.z = _e572.z;
    let _e582 = vs_r3_.xyz;
    vs_o5_.x = _e582.x;
    vs_o5_.y = _e582.y;
    vs_o5_.z = _e582.z;
    vs_r1_.w = (vs_r1_.z + 1f);
    vs_r1_.z = dot(vs_r1_.xyw, vs_r1_.xyw);
    if (vs_r1_.z == 0f) {
        local_4 = FLT_MAX;
    } else {
        local_4 = inverseSqrt(abs(vs_r1_.z));
    }
    vs_r1_.z = local_4;
    let _e621 = (vs_r1_.xy * vs_r1_.zz);
    vs_r1_.x = _e621.x;
    vs_r1_.y = _e621.y;
    let _e643 = ((vs_r1_.xy * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    vs_o3_.x = _e643.x;
    vs_o3_.y = _e643.y;
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
    let _e723 = vs_r0_.xyz;
    vs_o4_.x = _e723.x;
    vs_o4_.y = _e723.y;
    vs_o4_.z = _e723.z;
    return VertexOutput(vs_o1_, vs_o2_, vs_o3_, vs_o4_, vs_o5_, io_5_4_, io_5_5_, io_5_6_, vs_o9_v, gl_Position);
}
