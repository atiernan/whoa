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
    var vs_o4_v: vec4<f32>;
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
    let _e126 = (-(vs_r0_.xyz) + global.vs_uniforms_vec4_[23].xyz);
    vs_r0_.x = _e126.x;
    vs_r0_.y = _e126.y;
    vs_r0_.w = _e126.z;
    vs_r0_.z = ((vs_r0_.z * global.vs_uniforms_vec4_[30].x) + global.vs_uniforms_vec4_[30].y);
    vs_r0_.z = max(vs_r0_.z, 0f);
    vs_r1_.w = pow(abs(vs_r0_.z), global.vs_uniforms_vec4_[30].z);
    vs_o4_v.x = min(vs_r1_.w, 1f);
    vs_r2_.y = dot(vs_r4_.xyz, vs_r4_.xyz);
    if (vs_r2_.y == 0f) {
        local_1 = FLT_MAX;
    } else {
        local_1 = inverseSqrt(abs(vs_r2_.y));
    }
    vs_r3_.y = local_1;
    vs_r2_.z = dot(vs_r0_.xyw, vs_r0_.xyw);
    if (vs_r2_.z == 0f) {
        local_2 = FLT_MAX;
    } else {
        local_2 = inverseSqrt(abs(vs_r2_.z));
    }
    vs_r3_.z = local_2;
    let _e213 = (vs_r2_.xyz * vs_r3_.xyz);
    vs_r5_.x = _e213.x;
    vs_r5_.y = _e213.y;
    vs_r5_.z = _e213.z;
    let _e228 = (vs_r5_.xyz * global.vs_uniforms_vec4_[26].xyz);
    vs_r5_.x = _e228.x;
    vs_r5_.y = _e228.y;
    vs_r5_.z = _e228.z;
    let _e246 = ((vs_r2_.xyz * global.vs_uniforms_vec4_[27].xyz) + vs_r5_.xyz);
    vs_r2_.x = _e246.x;
    vs_r2_.y = _e246.y;
    vs_r2_.z = _e246.z;
    let _e261 = (vs_r2_.xyz + global.vs_uniforms_vec4_[25].xyz);
    vs_r2_.x = _e261.x;
    vs_r2_.y = _e261.y;
    vs_r2_.z = _e261.z;
    if (vs_r2_.x == 0f) {
        local_3 = FLT_MAX;
    } else {
        local_3 = (1f / vs_r2_.x);
    }
    vs_r5_.x = local_3;
    if (vs_r2_.y == 0f) {
        local_4 = FLT_MAX;
    } else {
        local_4 = (1f / vs_r2_.y);
    }
    vs_r5_.y = local_4;
    if (vs_r2_.z == 0f) {
        local_5 = FLT_MAX;
    } else {
        local_5 = (1f / vs_r2_.z);
    }
    vs_r5_.z = local_5;
    vs_r2_.x = dot(global.vs_uniforms_vec4_[31].xyz, vs_v1_.xyz);
    vs_r2_.y = dot(global.vs_uniforms_vec4_[32].xyz, vs_v1_.xyz);
    vs_r2_.z = dot(global.vs_uniforms_vec4_[33].xyz, vs_v1_.xyz);
    let _e329 = normalize(vs_r2_.xyz);
    vs_r6_.x = _e329.x;
    vs_r6_.y = _e329.y;
    vs_r6_.z = _e329.z;
    vs_r1_.x = dot(vs_r1_.xyz, vs_r6_.xyz);
    vs_r1_.y = dot(vs_r4_.xyz, vs_r6_.xyz);
    vs_r1_.z = dot(vs_r0_.xyw, vs_r6_.xyz);
    vs_r0_.x = clamp(dot(-(global.vs_uniforms_vec4_[12].xyz), vs_r6_.xyz), 0f, 1f);
    let _e371 = global.vs_uniforms_vec4_[10].xyz;
    vs_r2_.x = _e371.x;
    vs_r2_.y = _e371.y;
    vs_r2_.z = _e371.z;
    let _e389 = ((vs_r0_.xxx * vs_r2_.xyz) + global.vs_uniforms_vec4_[11].xyz);
    vs_r0_.x = _e389.x;
    vs_r0_.y = _e389.y;
    vs_r0_.z = _e389.z;
    let _e402 = (vs_r3_.xyz * vs_r1_.xyz);
    vs_r1_.x = _e402.x;
    vs_r1_.y = _e402.y;
    vs_r1_.z = _e402.z;
    let _e419 = max(vs_r1_.xyz, vec3<f32>(0f, 0f, 0f));
    vs_r1_.x = _e419.x;
    vs_r1_.y = _e419.y;
    vs_r1_.z = _e419.z;
    let _e432 = (vs_r5_.xyz * vs_r1_.xyz);
    vs_r1_.x = _e432.x;
    vs_r1_.y = _e432.y;
    vs_r1_.z = _e432.z;
    let _e450 = ((global.vs_uniforms_vec4_[17].xyz * vs_r1_.xxx) + vs_r0_.xyz);
    vs_r0_.x = _e450.x;
    vs_r0_.y = _e450.y;
    vs_r0_.z = _e450.z;
    let _e468 = ((global.vs_uniforms_vec4_[18].xyz * vs_r1_.yyy) + vs_r0_.xyz);
    vs_r0_.x = _e468.x;
    vs_r0_.y = _e468.y;
    vs_r0_.z = _e468.z;
    let _e491 = clamp(((global.vs_uniforms_vec4_[19].xyz * vs_r1_.zzz) + vs_r0_.xyz), vec3(0f), vec3(1f));
    vs_r0_.x = _e491.x;
    vs_r0_.y = _e491.y;
    vs_r0_.z = _e491.z;
    vs_r0_.w = 1f;
    vs_r1_ = global.vs_uniforms_vec4_[28];
    vs_o1_ = clamp(((vs_r1_ * vs_r0_) + global.vs_uniforms_vec4_[29]), vec4(0f), vec4(1f));
    let _e536 = ((vs_v2_.xyx * vec3<f32>(1f, 1f, 0f)) + vec3<f32>(0f, 0f, 1f));
    vs_r0_.x = _e536.x;
    vs_r0_.y = _e536.y;
    vs_r0_.z = _e536.z;
    vs_o2_.x = dot(global.vs_uniforms_vec4_[6].xyw, vs_r0_.xyz);
    vs_o2_.y = dot(global.vs_uniforms_vec4_[7].xyw, vs_r0_.xyz);
    let _e576 = ((vs_v3_.xyx * vec3<f32>(1f, 1f, 0f)) + vec3<f32>(0f, 0f, 1f));
    vs_r0_.x = _e576.x;
    vs_r0_.y = _e576.y;
    vs_r0_.z = _e576.z;
    vs_o3_.x = dot(global.vs_uniforms_vec4_[8].xyw, vs_r0_.xyz);
    vs_o3_.y = dot(global.vs_uniforms_vec4_[9].xyw, vs_r0_.xyz);
    return VertexOutput(vs_o1_, vs_o2_, vs_o3_, vs_o4_v, gl_Position);
}
