struct UniformBlock_0_ {
    vs_uniforms_vec4_: array<vec4<f32>, 227>,
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
    var vs_o6_v: vec4<f32>;
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
    let _e79 = (-(vs_r0_.xyz) + global.vs_uniforms_vec4_[21].xyz);
    vs_r1_.x = _e79.x;
    vs_r1_.y = _e79.y;
    vs_r1_.z = _e79.z;
    vs_r2_.x = dot(vs_r1_.xyz, vs_r1_.xyz);
    if (vs_r2_.x == 0f) {
        local = FLT_MAX;
    } else {
        local = inverseSqrt(abs(vs_r2_.x));
    }
    vs_r3_.x = local;
    let _e112 = (-(vs_r0_.xyz) + global.vs_uniforms_vec4_[22].xyz);
    vs_r4_.x = _e112.x;
    vs_r4_.y = _e112.y;
    vs_r4_.z = _e112.z;
    vs_r2_.y = dot(vs_r4_.xyz, vs_r4_.xyz);
    if (vs_r2_.y == 0f) {
        local_1 = FLT_MAX;
    } else {
        local_1 = inverseSqrt(abs(vs_r2_.y));
    }
    vs_r3_.y = local_1;
    let _e145 = (-(vs_r0_.xyz) + global.vs_uniforms_vec4_[23].xyz);
    vs_r5_.x = _e145.x;
    vs_r5_.y = _e145.y;
    vs_r5_.z = _e145.z;
    vs_r2_.z = dot(vs_r5_.xyz, vs_r5_.xyz);
    if (vs_r2_.z == 0f) {
        local_2 = FLT_MAX;
    } else {
        local_2 = inverseSqrt(abs(vs_r2_.z));
    }
    vs_r3_.z = local_2;
    let _e175 = (vs_r2_.xyz * vs_r3_.xyz);
    vs_r6_.x = _e175.x;
    vs_r6_.y = _e175.y;
    vs_r6_.z = _e175.z;
    let _e190 = (vs_r6_.xyz * global.vs_uniforms_vec4_[26].xyz);
    vs_r6_.x = _e190.x;
    vs_r6_.y = _e190.y;
    vs_r6_.z = _e190.z;
    let _e208 = ((vs_r2_.xyz * global.vs_uniforms_vec4_[27].xyz) + vs_r6_.xyz);
    vs_r2_.x = _e208.x;
    vs_r2_.y = _e208.y;
    vs_r2_.z = _e208.z;
    let _e223 = (vs_r2_.xyz + global.vs_uniforms_vec4_[25].xyz);
    vs_r2_.x = _e223.x;
    vs_r2_.y = _e223.y;
    vs_r2_.z = _e223.z;
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
    let _e291 = normalize(vs_r2_.xyz);
    vs_r7_.x = _e291.x;
    vs_r7_.y = _e291.y;
    vs_r7_.z = _e291.z;
    vs_r1_.x = dot(vs_r1_.xyz, vs_r7_.xyz);
    vs_r1_.y = dot(vs_r4_.xyz, vs_r7_.xyz);
    vs_r1_.z = dot(vs_r5_.xyz, vs_r7_.xyz);
    let _e322 = (vs_r3_.xyz * vs_r1_.xyz);
    vs_r1_.x = _e322.x;
    vs_r1_.y = _e322.y;
    vs_r1_.z = _e322.z;
    let _e339 = max(vs_r1_.xyz, vec3<f32>(0f, 0f, 0f));
    vs_r1_.x = _e339.x;
    vs_r1_.y = _e339.y;
    vs_r1_.z = _e339.z;
    let _e352 = (vs_r6_.xyz * vs_r1_.xyz);
    vs_r1_.x = _e352.x;
    vs_r1_.y = _e352.y;
    vs_r1_.z = _e352.z;
    vs_r1_.w = clamp(dot(-(global.vs_uniforms_vec4_[12].xyz), vs_r7_.xyz), 0f, 1f);
    let _e374 = vs_r7_.xyz;
    vs_o4_.x = _e374.x;
    vs_o4_.y = _e374.y;
    vs_o4_.z = _e374.z;
    let _e386 = global.vs_uniforms_vec4_[10].xyz;
    vs_r2_.x = _e386.x;
    vs_r2_.y = _e386.y;
    vs_r2_.z = _e386.z;
    let _e404 = ((vs_r1_.www * vs_r2_.xyz) + global.vs_uniforms_vec4_[11].xyz);
    vs_r2_.x = _e404.x;
    vs_r2_.y = _e404.y;
    vs_r2_.z = _e404.z;
    let _e422 = ((global.vs_uniforms_vec4_[17].xyz * vs_r1_.xxx) + vs_r2_.xyz);
    vs_r2_.x = _e422.x;
    vs_r2_.y = _e422.y;
    vs_r2_.z = _e422.z;
    let _e440 = ((global.vs_uniforms_vec4_[18].xyz * vs_r1_.yyy) + vs_r2_.xyz);
    vs_r1_.x = _e440.x;
    vs_r1_.y = _e440.y;
    vs_r1_.w = _e440.z;
    let _e463 = clamp(((global.vs_uniforms_vec4_[19].xyz * vs_r1_.zzz) + vs_r1_.xyw), vec3(0f), vec3(1f));
    vs_r1_.x = _e463.x;
    vs_r1_.y = _e463.y;
    vs_r1_.z = _e463.z;
    vs_r1_.w = 1f;
    vs_r2_ = global.vs_uniforms_vec4_[28];
    vs_o1_ = clamp(((vs_r2_ * vs_r1_) + global.vs_uniforms_vec4_[29]), vec4(0f), vec4(1f));
    vs_r1_.x = ((vs_r0_.z * global.vs_uniforms_vec4_[30].x) + global.vs_uniforms_vec4_[30].y);
    vs_r1_.x = max(vs_r1_.x, 0f);
    vs_r2_.x = pow(abs(vs_r1_.x), global.vs_uniforms_vec4_[30].z);
    vs_o6_v.x = min(vs_r2_.x, 1f);
    let _e548 = ((vs_v2_.xyx * vec3<f32>(1f, 1f, 0f)) + vec3<f32>(0f, 0f, 1f));
    vs_r1_.x = _e548.x;
    vs_r1_.y = _e548.y;
    vs_r1_.z = _e548.z;
    vs_o2_.x = dot(global.vs_uniforms_vec4_[6].xyw, vs_r1_.xyz);
    vs_o2_.y = dot(global.vs_uniforms_vec4_[7].xyw, vs_r1_.xyz);
    vs_o5_.x = dot(vs_r0_, global.vs_uniforms_vec4_[224]);
    vs_o5_.y = dot(vs_r0_, global.vs_uniforms_vec4_[225]);
    vs_o5_.z = dot(vs_r0_, global.vs_uniforms_vec4_[226]);
    let _e592 = vs_r0_.xyz;
    vs_o3_.x = _e592.x;
    vs_o3_.y = _e592.y;
    vs_o3_.z = _e592.z;
    return VertexOutput(vs_o1_, vs_o2_, vs_o3_, vs_o4_, vs_o5_, vs_o6_v, gl_Position);
}
