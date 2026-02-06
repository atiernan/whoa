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

@vertex fn main(@location(0) vs_v0_: vec4<f32>, @location(2) @interpolate(flat) vs_v1_u: vec4<u32>, @location(3) vs_v2_: vec4<f32>, @location(6) vs_v3_: vec4<f32>) -> VertexOutput {
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

    var vs_v1_: vec4<f32>;
    var local: f32;
    var local_1: f32;
    var local_2: f32;
    var local_3: f32;
    var local_4: f32;
    var local_5: f32;
    var local_6: f32;

    vs_v1_ = vec4<f32>(vs_v1_u);
    vs_r0_.w = 1f;
    vs_r1_.x = (3f * vs_v1_.x);
    vs_a0_.x = i32((floor((abs(vs_r1_.x) + 0.5f)) * sign(vs_r1_.x)));
    vs_r0_.x = dot(global.vs_uniforms_vec4_[(31i + vs_a0_.x)], vs_v0_);
    vs_r0_.y = dot(global.vs_uniforms_vec4_[(32i + vs_a0_.x)], vs_v0_);
    vs_r0_.z = dot(global.vs_uniforms_vec4_[(33i + vs_a0_.x)], vs_v0_);
    gl_Position.x = dot(global.vs_uniforms_vec4_[2], vs_r0_);
    gl_Position.y = dot(global.vs_uniforms_vec4_[3], vs_r0_);
    gl_Position.z = dot(global.vs_uniforms_vec4_[4], vs_r0_);
    gl_Position.w = dot(global.vs_uniforms_vec4_[5], vs_r0_);
    vs_r1_.x = dot((global.vs_uniforms_vec4_[(31i + vs_a0_.x)]).xyz, vs_v2_.xyz);
    vs_r1_.y = dot((global.vs_uniforms_vec4_[(32i + vs_a0_.x)]).xyz, vs_v2_.xyz);
    vs_r1_.z = dot((global.vs_uniforms_vec4_[(33i + vs_a0_.x)]).xyz, vs_v2_.xyz);
    let _e152 = normalize(vs_r1_.xyz);
    vs_r2_.x = _e152.x;
    vs_r2_.y = _e152.y;
    vs_r2_.z = _e152.z;
    let _e168 = (-(vs_r0_.xyz) + global.vs_uniforms_vec4_[21].xyz);
    vs_r1_.x = _e168.x;
    vs_r1_.y = _e168.y;
    vs_r1_.z = _e168.z;
    vs_r3_.x = dot(vs_r1_.xyz, vs_r2_.xyz);
    vs_r1_.x = dot(vs_r1_.xyz, vs_r1_.xyz);
    let _e196 = (-(vs_r0_.xyz) + global.vs_uniforms_vec4_[22].xyz);
    vs_r4_.x = _e196.x;
    vs_r4_.y = _e196.y;
    vs_r4_.z = _e196.z;
    vs_r3_.y = dot(vs_r4_.xyz, vs_r2_.xyz);
    vs_r1_.y = dot(vs_r4_.xyz, vs_r4_.xyz);
    let _e224 = (-(vs_r0_.xyz) + global.vs_uniforms_vec4_[23].xyz);
    vs_r4_.x = _e224.x;
    vs_r4_.y = _e224.y;
    vs_r4_.z = _e224.z;
    vs_r3_.z = dot(vs_r4_.xyz, vs_r2_.xyz);
    vs_r1_.z = dot(vs_r4_.xyz, vs_r4_.xyz);
    if (vs_r1_.x == 0f) {
        local = FLT_MAX;
    } else {
        local = inverseSqrt(abs(vs_r1_.x));
    }
    vs_r4_.x = local;
    if (vs_r1_.y == 0f) {
        local_1 = FLT_MAX;
    } else {
        local_1 = inverseSqrt(abs(vs_r1_.y));
    }
    vs_r4_.y = local_1;
    if (vs_r1_.z == 0f) {
        local_2 = FLT_MAX;
    } else {
        local_2 = inverseSqrt(abs(vs_r1_.z));
    }
    vs_r4_.z = local_2;
    let _e282 = (vs_r3_.xyz * vs_r4_.xyz);
    vs_r3_.x = _e282.x;
    vs_r3_.y = _e282.y;
    vs_r3_.z = _e282.z;
    let _e295 = (vs_r1_.xyz * vs_r4_.xyz);
    vs_r4_.x = _e295.x;
    vs_r4_.y = _e295.y;
    vs_r4_.z = _e295.z;
    let _e310 = (vs_r4_.xyz * global.vs_uniforms_vec4_[26].xyz);
    vs_r4_.x = _e310.x;
    vs_r4_.y = _e310.y;
    vs_r4_.z = _e310.z;
    let _e328 = ((vs_r1_.xyz * global.vs_uniforms_vec4_[27].xyz) + vs_r4_.xyz);
    vs_r1_.x = _e328.x;
    vs_r1_.y = _e328.y;
    vs_r1_.z = _e328.z;
    let _e343 = (vs_r1_.xyz + global.vs_uniforms_vec4_[25].xyz);
    vs_r1_.x = _e343.x;
    vs_r1_.y = _e343.y;
    vs_r1_.z = _e343.z;
    let _e360 = max(vs_r3_.xyz, vec3<f32>(0f, 0f, 0f));
    vs_r3_.x = _e360.x;
    vs_r3_.y = _e360.y;
    vs_r3_.z = _e360.z;
    if (vs_r1_.x == 0f) {
        local_3 = FLT_MAX;
    } else {
        local_3 = (1f / vs_r1_.x);
    }
    vs_r4_.x = local_3;
    if (vs_r1_.y == 0f) {
        local_4 = FLT_MAX;
    } else {
        local_4 = (1f / vs_r1_.y);
    }
    vs_r4_.y = local_4;
    if (vs_r1_.z == 0f) {
        local_5 = FLT_MAX;
    } else {
        local_5 = (1f / vs_r1_.z);
    }
    vs_r4_.z = local_5;
    let _e406 = (vs_r3_.xyz * vs_r4_.xyz);
    vs_r1_.x = _e406.x;
    vs_r1_.y = _e406.y;
    vs_r1_.z = _e406.z;
    vs_r1_.w = clamp(dot(-(global.vs_uniforms_vec4_[12].xyz), vs_r2_.xyz), 0f, 1f);
    let _e430 = global.vs_uniforms_vec4_[10].xyz;
    vs_r3_.x = _e430.x;
    vs_r3_.y = _e430.y;
    vs_r3_.z = _e430.z;
    let _e448 = ((vs_r1_.www * vs_r3_.xyz) + global.vs_uniforms_vec4_[11].xyz);
    vs_r3_.x = _e448.x;
    vs_r3_.y = _e448.y;
    vs_r3_.z = _e448.z;
    let _e466 = ((global.vs_uniforms_vec4_[17].xyz * vs_r1_.xxx) + vs_r3_.xyz);
    vs_r3_.x = _e466.x;
    vs_r3_.y = _e466.y;
    vs_r3_.z = _e466.z;
    let _e484 = ((global.vs_uniforms_vec4_[18].xyz * vs_r1_.yyy) + vs_r3_.xyz);
    vs_r1_.x = _e484.x;
    vs_r1_.y = _e484.y;
    vs_r1_.w = _e484.z;
    let _e507 = clamp(((global.vs_uniforms_vec4_[19].xyz * vs_r1_.zzz) + vs_r1_.xyw), vec3(0f), vec3(1f));
    vs_r1_.x = _e507.x;
    vs_r1_.y = _e507.y;
    vs_r1_.z = _e507.z;
    vs_r1_.w = 1f;
    vs_r3_ = global.vs_uniforms_vec4_[28];
    vs_o1_ = clamp(((vs_r3_ * vs_r1_) + global.vs_uniforms_vec4_[29]), vec4(0f), vec4(1f));
    vs_r1_.x = ((vs_r0_.z * global.vs_uniforms_vec4_[30].x) + global.vs_uniforms_vec4_[30].y);
    vs_r1_.x = max(vs_r1_.x, 0f);
    vs_r2_.w = pow(abs(vs_r1_.x), global.vs_uniforms_vec4_[30].z);
    vs_o7_v.x = min(vs_r2_.w, 1f);
    let _e592 = ((vs_v3_.xyx * vec3<f32>(1f, 1f, 0f)) + vec3<f32>(0f, 0f, 1f));
    vs_r1_.x = _e592.x;
    vs_r1_.y = _e592.y;
    vs_r1_.z = _e592.z;
    vs_o2_.x = dot(global.vs_uniforms_vec4_[6].xyw, vs_r1_.xyz);
    vs_o2_.y = dot(global.vs_uniforms_vec4_[7].xyw, vs_r1_.xyz);
    let _e619 = normalize(vs_r0_.xyz);
    vs_r1_.x = _e619.x;
    vs_r1_.y = _e619.y;
    vs_r1_.z = _e619.z;
    vs_r1_.w = dot(-(vs_r1_.xyz), vs_r2_.xyz);
    vs_r1_.w = (vs_r1_.w + vs_r1_.w);
    let _e650 = ((vs_r1_.www * -(vs_r2_.xyz)) + -(vs_r1_.xyz));
    vs_r1_.x = _e650.x;
    vs_r1_.y = _e650.y;
    vs_r1_.z = _e650.z;
    let _e660 = vs_r2_.xyz;
    vs_o5_.x = _e660.x;
    vs_o5_.y = _e660.y;
    vs_o5_.z = _e660.z;
    vs_r1_.w = (vs_r1_.z + 1f);
    vs_r1_.z = dot(vs_r1_.xyw, vs_r1_.xyw);
    if (vs_r1_.z == 0f) {
        local_6 = FLT_MAX;
    } else {
        local_6 = inverseSqrt(abs(vs_r1_.z));
    }
    vs_r1_.z = local_6;
    let _e699 = (vs_r1_.xy * vs_r1_.zz);
    vs_r1_.x = _e699.x;
    vs_r1_.y = _e699.y;
    let _e721 = ((vs_r1_.xy * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    vs_o3_.x = _e721.x;
    vs_o3_.y = _e721.y;
    io_5_4_.x = dot(vs_r0_, global.vs_uniforms_vec4_[224]);
    io_5_4_.y = dot(vs_r0_, global.vs_uniforms_vec4_[225]);
    io_5_4_.z = dot(vs_r0_, global.vs_uniforms_vec4_[226]);
    let _e747 = vs_r0_.xyz;
    vs_o4_.x = _e747.x;
    vs_o4_.y = _e747.y;
    vs_o4_.z = _e747.z;
    return VertexOutput(vs_o1_, vs_o2_, vs_o3_, vs_o4_, vs_o5_, io_5_4_, vs_o7_v, gl_Position);
}
