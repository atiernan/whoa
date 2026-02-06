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

@vertex fn main(@location(0) vs_v0_: vec4<f32>, @location(3) vs_v1_: vec4<f32>, @location(6) vs_v2_: vec4<f32>, @location(7) vs_v3_: vec4<f32>) -> VertexOutput {
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
    let _e107 = normalize(vs_r2_.xyz);
    vs_r3_.x = _e107.x;
    vs_r3_.y = _e107.y;
    vs_r3_.z = _e107.z;
    vs_r2_.x = clamp(dot(-(global.vs_uniforms_vec4_[12].xyz), vs_r3_.xyz), 0f, 1f);
    let _e131 = global.vs_uniforms_vec4_[10].xyz;
    vs_r4_.x = _e131.x;
    vs_r4_.y = _e131.y;
    vs_r4_.z = _e131.z;
    let _e149 = ((vs_r2_.xxx * vs_r4_.xyz) + global.vs_uniforms_vec4_[11].xyz);
    vs_r2_.x = _e149.x;
    vs_r2_.y = _e149.y;
    vs_r2_.z = _e149.z;
    let _e165 = (-(vs_r0_.xyz) + global.vs_uniforms_vec4_[21].xyz);
    vs_r4_.x = _e165.x;
    vs_r4_.y = _e165.y;
    vs_r4_.z = _e165.z;
    vs_r5_.x = dot(vs_r4_.xyz, vs_r3_.xyz);
    vs_r4_.x = dot(vs_r4_.xyz, vs_r4_.xyz);
    let _e193 = (-(vs_r0_.xyz) + global.vs_uniforms_vec4_[22].xyz);
    vs_r6_.x = _e193.x;
    vs_r6_.y = _e193.y;
    vs_r6_.z = _e193.z;
    vs_r5_.y = dot(vs_r6_.xyz, vs_r3_.xyz);
    vs_r4_.y = dot(vs_r6_.xyz, vs_r6_.xyz);
    let _e221 = (-(vs_r0_.xyz) + global.vs_uniforms_vec4_[23].xyz);
    vs_r6_.x = _e221.x;
    vs_r6_.y = _e221.y;
    vs_r6_.z = _e221.z;
    vs_r5_.z = dot(vs_r6_.xyz, vs_r3_.xyz);
    let _e237 = vs_r3_.xyz;
    vs_o5_.x = _e237.x;
    vs_o5_.y = _e237.y;
    vs_o5_.z = _e237.z;
    vs_r4_.z = dot(vs_r6_.xyz, vs_r6_.xyz);
    if (vs_r4_.x == 0f) {
        local = FLT_MAX;
    } else {
        local = inverseSqrt(abs(vs_r4_.x));
    }
    vs_r3_.x = local;
    if (vs_r4_.y == 0f) {
        local_1 = FLT_MAX;
    } else {
        local_1 = inverseSqrt(abs(vs_r4_.y));
    }
    vs_r3_.y = local_1;
    if (vs_r4_.z == 0f) {
        local_2 = FLT_MAX;
    } else {
        local_2 = inverseSqrt(abs(vs_r4_.z));
    }
    vs_r3_.z = local_2;
    let _e289 = (vs_r5_.xyz * vs_r3_.xyz);
    vs_r5_.x = _e289.x;
    vs_r5_.y = _e289.y;
    vs_r5_.z = _e289.z;
    let _e302 = (vs_r4_.xyz * vs_r3_.xyz);
    vs_r3_.x = _e302.x;
    vs_r3_.y = _e302.y;
    vs_r3_.z = _e302.z;
    let _e317 = (vs_r3_.xyz * global.vs_uniforms_vec4_[26].xyz);
    vs_r3_.x = _e317.x;
    vs_r3_.y = _e317.y;
    vs_r3_.z = _e317.z;
    let _e335 = ((vs_r4_.xyz * global.vs_uniforms_vec4_[27].xyz) + vs_r3_.xyz);
    vs_r3_.x = _e335.x;
    vs_r3_.y = _e335.y;
    vs_r3_.z = _e335.z;
    let _e350 = (vs_r3_.xyz + global.vs_uniforms_vec4_[25].xyz);
    vs_r3_.x = _e350.x;
    vs_r3_.y = _e350.y;
    vs_r3_.z = _e350.z;
    let _e367 = max(vs_r5_.xyz, vec3<f32>(0f, 0f, 0f));
    vs_r4_.x = _e367.x;
    vs_r4_.y = _e367.y;
    vs_r4_.z = _e367.z;
    if (vs_r3_.x == 0f) {
        local_3 = FLT_MAX;
    } else {
        local_3 = (1f / vs_r3_.x);
    }
    vs_r5_.x = local_3;
    if (vs_r3_.y == 0f) {
        local_4 = FLT_MAX;
    } else {
        local_4 = (1f / vs_r3_.y);
    }
    vs_r5_.y = local_4;
    if (vs_r3_.z == 0f) {
        local_5 = FLT_MAX;
    } else {
        local_5 = (1f / vs_r3_.z);
    }
    vs_r5_.z = local_5;
    let _e413 = (vs_r4_.xyz * vs_r5_.xyz);
    vs_r3_.x = _e413.x;
    vs_r3_.y = _e413.y;
    vs_r3_.z = _e413.z;
    let _e431 = ((global.vs_uniforms_vec4_[17].xyz * vs_r3_.xxx) + vs_r2_.xyz);
    vs_r2_.x = _e431.x;
    vs_r2_.y = _e431.y;
    vs_r2_.z = _e431.z;
    let _e449 = ((global.vs_uniforms_vec4_[18].xyz * vs_r3_.yyy) + vs_r2_.xyz);
    vs_r2_.x = _e449.x;
    vs_r2_.y = _e449.y;
    vs_r2_.z = _e449.z;
    let _e472 = clamp(((global.vs_uniforms_vec4_[19].xyz * vs_r3_.zzz) + vs_r2_.xyz), vec3(0f), vec3(1f));
    vs_r1_.x = _e472.x;
    vs_r1_.y = _e472.y;
    vs_r1_.z = _e472.z;
    vs_r2_ = global.vs_uniforms_vec4_[28];
    vs_o1_ = clamp(((vs_r2_ * vs_r1_) + global.vs_uniforms_vec4_[29]), vec4(0f), vec4(1f));
    vs_r1_.x = ((vs_r0_.z * global.vs_uniforms_vec4_[30].x) + global.vs_uniforms_vec4_[30].y);
    vs_r1_.x = max(vs_r1_.x, 0f);
    vs_r2_.x = pow(abs(vs_r1_.x), global.vs_uniforms_vec4_[30].z);
    vs_o9_v.x = min(vs_r2_.x, 1f);
    let _e551 = ((vs_v2_.xyx * vec3<f32>(1f, 1f, 0f)) + vec3<f32>(0f, 0f, 1f));
    vs_r1_.x = _e551.x;
    vs_r1_.y = _e551.y;
    vs_r1_.z = _e551.z;
    vs_o2_.x = dot(global.vs_uniforms_vec4_[6].xyw, vs_r1_.xyz);
    vs_o2_.y = dot(global.vs_uniforms_vec4_[7].xyw, vs_r1_.xyz);
    let _e591 = ((vs_v3_.xyx * vec3<f32>(1f, 1f, 0f)) + vec3<f32>(0f, 0f, 1f));
    vs_r1_.x = _e591.x;
    vs_r1_.y = _e591.y;
    vs_r1_.z = _e591.z;
    vs_o3_.x = dot(global.vs_uniforms_vec4_[8].xyw, vs_r1_.xyz);
    vs_o3_.y = dot(global.vs_uniforms_vec4_[9].xyw, vs_r1_.xyz);
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
    let _e689 = vs_r0_.xyz;
    vs_o4_.x = _e689.x;
    vs_o4_.y = _e689.y;
    vs_o4_.z = _e689.z;
    return VertexOutput(vs_o1_, vs_o2_, vs_o3_, vs_o4_, vs_o5_, io_5_4_, io_5_5_, io_5_6_, vs_o9_v, gl_Position);
}
