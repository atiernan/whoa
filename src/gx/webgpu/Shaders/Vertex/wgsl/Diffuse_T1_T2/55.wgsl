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
    var vs_r5_: vec4<f32>;
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
    let _e229 = normalize(vs_r0_.xyz);
    vs_r2_.x = _e229.x;
    vs_r2_.y = _e229.y;
    vs_r2_.z = _e229.z;
    vs_r1_.w = 1f;
    gl_Position.x = dot(global.vs_uniforms_vec4_[2], vs_r1_);
    gl_Position.y = dot(global.vs_uniforms_vec4_[3], vs_r1_);
    gl_Position.z = dot(global.vs_uniforms_vec4_[4], vs_r1_);
    gl_Position.w = dot(global.vs_uniforms_vec4_[5], vs_r1_);
    vs_r0_.x = clamp(dot(-(global.vs_uniforms_vec4_[12].xyz), vs_r2_.xyz), 0f, 1f);
    let _e284 = global.vs_uniforms_vec4_[10].xyz;
    vs_r3_.x = _e284.x;
    vs_r3_.y = _e284.y;
    vs_r3_.z = _e284.z;
    let _e302 = ((vs_r0_.xxx * vs_r3_.xyz) + global.vs_uniforms_vec4_[11].xyz);
    vs_r0_.x = _e302.x;
    vs_r0_.y = _e302.y;
    vs_r0_.z = _e302.z;
    let _e318 = (-(vs_r1_.xyz) + global.vs_uniforms_vec4_[21].xyz);
    vs_r3_.x = _e318.x;
    vs_r3_.y = _e318.y;
    vs_r3_.z = _e318.z;
    vs_r4_.x = dot(vs_r3_.xyz, vs_r2_.xyz);
    vs_r3_.x = dot(vs_r3_.xyz, vs_r3_.xyz);
    let _e346 = (-(vs_r1_.xyz) + global.vs_uniforms_vec4_[22].xyz);
    vs_r5_.x = _e346.x;
    vs_r5_.y = _e346.y;
    vs_r5_.z = _e346.z;
    vs_r4_.y = dot(vs_r5_.xyz, vs_r2_.xyz);
    vs_r3_.y = dot(vs_r5_.xyz, vs_r5_.xyz);
    let _e368 = vs_r2_.xyz;
    vs_o5_.x = _e368.x;
    vs_o5_.y = _e368.y;
    vs_o5_.z = _e368.z;
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
    let _e403 = (vs_r4_.xy * vs_r2_.xy);
    vs_r2_.z = _e403.x;
    vs_r2_.w = _e403.y;
    let _e414 = (vs_r3_.xy * vs_r2_.xy);
    vs_r2_.x = _e414.x;
    vs_r2_.y = _e414.y;
    let _e427 = (vs_r2_.xy * global.vs_uniforms_vec4_[26].xy);
    vs_r2_.x = _e427.x;
    vs_r2_.y = _e427.y;
    let _e443 = ((vs_r3_.xy * global.vs_uniforms_vec4_[27].xy) + vs_r2_.xy);
    vs_r2_.x = _e443.x;
    vs_r2_.y = _e443.y;
    let _e456 = (vs_r2_.xy + global.vs_uniforms_vec4_[25].xy);
    vs_r2_.x = _e456.x;
    vs_r2_.y = _e456.y;
    let _e471 = max(vs_r2_.zw, vec2<f32>(0f, 0f));
    vs_r2_.z = _e471.x;
    vs_r2_.w = _e471.y;
    if (vs_r2_.x == 0f) {
        local_2 = FLT_MAX;
    } else {
        local_2 = (1f / vs_r2_.x);
    }
    vs_r3_.x = local_2;
    if (vs_r2_.y == 0f) {
        local_3 = FLT_MAX;
    } else {
        local_3 = (1f / vs_r2_.y);
    }
    vs_r3_.y = local_3;
    let _e504 = (vs_r2_.zw * vs_r3_.xy);
    vs_r2_.x = _e504.x;
    vs_r2_.y = _e504.y;
    let _e520 = ((global.vs_uniforms_vec4_[17].xyz * vs_r2_.xxx) + vs_r0_.xyz);
    vs_r0_.x = _e520.x;
    vs_r0_.y = _e520.y;
    vs_r0_.z = _e520.z;
    let _e543 = clamp(((global.vs_uniforms_vec4_[18].xyz * vs_r2_.yyy) + vs_r0_.xyz), vec3(0f), vec3(1f));
    vs_r0_.x = _e543.x;
    vs_r0_.y = _e543.y;
    vs_r0_.z = _e543.z;
    vs_r0_.w = 1f;
    vs_r2_ = global.vs_uniforms_vec4_[28];
    vs_o1_ = clamp(((vs_r2_ * vs_r0_) + global.vs_uniforms_vec4_[29]), vec4(0f), vec4(1f));
    vs_r0_.x = ((vs_r1_.z * global.vs_uniforms_vec4_[30].x) + global.vs_uniforms_vec4_[30].y);
    vs_r0_.x = max(vs_r0_.x, 0f);
    vs_r2_.x = pow(abs(vs_r0_.x), global.vs_uniforms_vec4_[30].z);
    vs_o7_v.x = min(vs_r2_.x, 1f);
    let _e628 = ((vs_v4_.xyx * vec3<f32>(1f, 1f, 0f)) + vec3<f32>(0f, 0f, 1f));
    vs_r0_.x = _e628.x;
    vs_r0_.y = _e628.y;
    vs_r0_.z = _e628.z;
    vs_o2_.x = dot(global.vs_uniforms_vec4_[6].xyw, vs_r0_.xyz);
    vs_o2_.y = dot(global.vs_uniforms_vec4_[7].xyw, vs_r0_.xyz);
    let _e668 = ((vs_v5_.xyx * vec3<f32>(1f, 1f, 0f)) + vec3<f32>(0f, 0f, 1f));
    vs_r0_.x = _e668.x;
    vs_r0_.y = _e668.y;
    vs_r0_.z = _e668.z;
    vs_o3_.x = dot(global.vs_uniforms_vec4_[8].xyw, vs_r0_.xyz);
    vs_o3_.y = dot(global.vs_uniforms_vec4_[9].xyw, vs_r0_.xyz);
    io_5_4_.x = dot(vs_r1_, global.vs_uniforms_vec4_[224]);
    io_5_4_.y = dot(vs_r1_, global.vs_uniforms_vec4_[225]);
    io_5_4_.z = dot(vs_r1_, global.vs_uniforms_vec4_[226]);
    let _e712 = vs_r1_.xyz;
    vs_o4_.x = _e712.x;
    vs_o4_.y = _e712.y;
    vs_o4_.z = _e712.z;
    return VertexOutput(vs_o1_, vs_o2_, vs_o3_, vs_o4_, vs_o5_, io_5_4_, vs_o7_v, gl_Position);
}
