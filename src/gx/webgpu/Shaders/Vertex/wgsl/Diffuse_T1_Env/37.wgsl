struct UniformBlock_0_ {
    vs_uniforms_vec4_: array<vec4<f32>, 227>,
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
    var vs_o4_: vec4<f32>;
    var vs_o5_: vec4<f32>;
    var io_5_4_: vec4<f32>;
    var vs_o7_v: vec4<f32>;
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
    let _e80 = (-(vs_r0_.xyz) + global.vs_uniforms_vec4_[21].xyz);
    vs_r1_.x = _e80.x;
    vs_r1_.y = _e80.y;
    vs_r1_.z = _e80.z;
    vs_r2_.x = dot(vs_r1_.xyz, vs_r1_.xyz);
    if (vs_r2_.x == 0f) {
        local = FLT_MAX;
    } else {
        local = inverseSqrt(abs(vs_r2_.x));
    }
    vs_r3_.x = local;
    let _e113 = (-(vs_r0_.xyz) + global.vs_uniforms_vec4_[22].xyz);
    vs_r4_.x = _e113.x;
    vs_r4_.y = _e113.y;
    vs_r4_.z = _e113.z;
    vs_r2_.y = dot(vs_r4_.xyz, vs_r4_.xyz);
    if (vs_r2_.y == 0f) {
        local_1 = FLT_MAX;
    } else {
        local_1 = inverseSqrt(abs(vs_r2_.y));
    }
    vs_r3_.y = local_1;
    let _e146 = (-(vs_r0_.xyz) + global.vs_uniforms_vec4_[23].xyz);
    vs_r5_.x = _e146.x;
    vs_r5_.y = _e146.y;
    vs_r5_.z = _e146.z;
    vs_r2_.z = dot(vs_r5_.xyz, vs_r5_.xyz);
    if (vs_r2_.z == 0f) {
        local_2 = FLT_MAX;
    } else {
        local_2 = inverseSqrt(abs(vs_r2_.z));
    }
    vs_r3_.z = local_2;
    let _e176 = (vs_r2_.xyz * vs_r3_.xyz);
    vs_r6_.x = _e176.x;
    vs_r6_.y = _e176.y;
    vs_r6_.z = _e176.z;
    let _e191 = (vs_r6_.xyz * global.vs_uniforms_vec4_[26].xyz);
    vs_r6_.x = _e191.x;
    vs_r6_.y = _e191.y;
    vs_r6_.z = _e191.z;
    let _e209 = ((vs_r2_.xyz * global.vs_uniforms_vec4_[27].xyz) + vs_r6_.xyz);
    vs_r2_.x = _e209.x;
    vs_r2_.y = _e209.y;
    vs_r2_.z = _e209.z;
    let _e224 = (vs_r2_.xyz + global.vs_uniforms_vec4_[25].xyz);
    vs_r2_.x = _e224.x;
    vs_r2_.y = _e224.y;
    vs_r2_.z = _e224.z;
    if (vs_r2_.x == 0f) {
        local_3 = FLT_MAX;
    } else {
        local_3 = (1f / vs_r2_.x);
    }
    vs_r6_.x = local_3;
    if (vs_r2_.y == 0f) {
        local_4 = FLT_MAX;
    } else {
        local_4 = (1f / vs_r2_.y);
    }
    vs_r6_.y = local_4;
    if (vs_r2_.z == 0f) {
        local_5 = FLT_MAX;
    } else {
        local_5 = (1f / vs_r2_.z);
    }
    vs_r6_.z = local_5;
    vs_r2_.x = dot(global.vs_uniforms_vec4_[31].xyz, vs_v1_.xyz);
    vs_r2_.y = dot(global.vs_uniforms_vec4_[32].xyz, vs_v1_.xyz);
    vs_r2_.z = dot(global.vs_uniforms_vec4_[33].xyz, vs_v1_.xyz);
    let _e292 = normalize(vs_r2_.xyz);
    vs_r7_.x = _e292.x;
    vs_r7_.y = _e292.y;
    vs_r7_.z = _e292.z;
    vs_r1_.x = dot(vs_r1_.xyz, vs_r7_.xyz);
    vs_r1_.y = dot(vs_r4_.xyz, vs_r7_.xyz);
    vs_r1_.z = dot(vs_r5_.xyz, vs_r7_.xyz);
    let _e323 = (vs_r3_.xyz * vs_r1_.xyz);
    vs_r1_.x = _e323.x;
    vs_r1_.y = _e323.y;
    vs_r1_.z = _e323.z;
    let _e340 = max(vs_r1_.xyz, vec3<f32>(0f, 0f, 0f));
    vs_r1_.x = _e340.x;
    vs_r1_.y = _e340.y;
    vs_r1_.z = _e340.z;
    let _e353 = (vs_r6_.xyz * vs_r1_.xyz);
    vs_r1_.x = _e353.x;
    vs_r1_.y = _e353.y;
    vs_r1_.z = _e353.z;
    vs_r1_.w = clamp(dot(-(global.vs_uniforms_vec4_[12].xyz), vs_r7_.xyz), 0f, 1f);
    let _e377 = global.vs_uniforms_vec4_[10].xyz;
    vs_r2_.x = _e377.x;
    vs_r2_.y = _e377.y;
    vs_r2_.z = _e377.z;
    let _e395 = ((vs_r1_.www * vs_r2_.xyz) + global.vs_uniforms_vec4_[11].xyz);
    vs_r2_.x = _e395.x;
    vs_r2_.y = _e395.y;
    vs_r2_.z = _e395.z;
    let _e413 = ((global.vs_uniforms_vec4_[17].xyz * vs_r1_.xxx) + vs_r2_.xyz);
    vs_r2_.x = _e413.x;
    vs_r2_.y = _e413.y;
    vs_r2_.z = _e413.z;
    let _e431 = ((global.vs_uniforms_vec4_[18].xyz * vs_r1_.yyy) + vs_r2_.xyz);
    vs_r1_.x = _e431.x;
    vs_r1_.y = _e431.y;
    vs_r1_.w = _e431.z;
    let _e454 = clamp(((global.vs_uniforms_vec4_[19].xyz * vs_r1_.zzz) + vs_r1_.xyw), vec3(0f), vec3(1f));
    vs_r1_.x = _e454.x;
    vs_r1_.y = _e454.y;
    vs_r1_.z = _e454.z;
    vs_r1_.w = 1f;
    vs_r2_ = global.vs_uniforms_vec4_[28];
    vs_o1_ = clamp(((vs_r2_ * vs_r1_) + global.vs_uniforms_vec4_[29]), vec4(0f), vec4(1f));
    vs_r1_.x = ((vs_r0_.z * global.vs_uniforms_vec4_[30].x) + global.vs_uniforms_vec4_[30].y);
    vs_r1_.x = max(vs_r1_.x, 0f);
    vs_r2_.x = pow(abs(vs_r1_.x), global.vs_uniforms_vec4_[30].z);
    vs_o7_v.x = min(vs_r2_.x, 1f);
    let _e539 = ((vs_v2_.xyx * vec3<f32>(1f, 1f, 0f)) + vec3<f32>(0f, 0f, 1f));
    vs_r1_.x = _e539.x;
    vs_r1_.y = _e539.y;
    vs_r1_.z = _e539.z;
    vs_o2_.x = dot(global.vs_uniforms_vec4_[6].xyw, vs_r1_.xyz);
    vs_o2_.y = dot(global.vs_uniforms_vec4_[7].xyw, vs_r1_.xyz);
    let _e566 = normalize(vs_r0_.xyz);
    vs_r1_.x = _e566.x;
    vs_r1_.y = _e566.y;
    vs_r1_.z = _e566.z;
    vs_r1_.w = dot(-(vs_r1_.xyz), vs_r7_.xyz);
    vs_r1_.w = (vs_r1_.w + vs_r1_.w);
    let _e597 = ((vs_r1_.www * -(vs_r7_.xyz)) + -(vs_r1_.xyz));
    vs_r1_.x = _e597.x;
    vs_r1_.y = _e597.y;
    vs_r1_.z = _e597.z;
    let _e607 = vs_r7_.xyz;
    vs_o5_.x = _e607.x;
    vs_o5_.y = _e607.y;
    vs_o5_.z = _e607.z;
    vs_r1_.w = (vs_r1_.z + 1f);
    vs_r1_.z = dot(vs_r1_.xyw, vs_r1_.xyw);
    if (vs_r1_.z == 0f) {
        local_6 = FLT_MAX;
    } else {
        local_6 = inverseSqrt(abs(vs_r1_.z));
    }
    vs_r1_.z = local_6;
    let _e646 = (vs_r1_.xy * vs_r1_.zz);
    vs_r1_.x = _e646.x;
    vs_r1_.y = _e646.y;
    let _e668 = ((vs_r1_.xy * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    vs_o3_.x = _e668.x;
    vs_o3_.y = _e668.y;
    io_5_4_.x = dot(vs_r0_, global.vs_uniforms_vec4_[224]);
    io_5_4_.y = dot(vs_r0_, global.vs_uniforms_vec4_[225]);
    io_5_4_.z = dot(vs_r0_, global.vs_uniforms_vec4_[226]);
    let _e694 = vs_r0_.xyz;
    vs_o4_.x = _e694.x;
    vs_o4_.y = _e694.y;
    vs_o4_.z = _e694.z;
    return VertexOutput(vs_o1_, vs_o2_, vs_o3_, vs_o4_, vs_o5_, io_5_4_, vs_o7_v, gl_Position);
}
