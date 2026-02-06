struct UniformBlock_0_ {
    vs_uniforms_vec4_: array<vec4<f32>, 256>,
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
    var vs_o6_v: vec4<f32>;
    var gl_Position: vec4<f32>;

    var vs_v1_: vec4<f32>;
    var local: f32;
    var local_1: f32;
    var local_2: f32;
    var local_3: f32;
    var local_4: f32;
    var local_5: f32;

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
    let _e151 = normalize(vs_r1_.xyz);
    vs_r2_.x = _e151.x;
    vs_r2_.y = _e151.y;
    vs_r2_.z = _e151.z;
    let _e167 = (-(vs_r0_.xyz) + global.vs_uniforms_vec4_[21].xyz);
    vs_r1_.x = _e167.x;
    vs_r1_.y = _e167.y;
    vs_r1_.z = _e167.z;
    vs_r3_.x = dot(vs_r1_.xyz, vs_r2_.xyz);
    vs_r1_.x = dot(vs_r1_.xyz, vs_r1_.xyz);
    let _e195 = (-(vs_r0_.xyz) + global.vs_uniforms_vec4_[22].xyz);
    vs_r4_.x = _e195.x;
    vs_r4_.y = _e195.y;
    vs_r4_.z = _e195.z;
    vs_r3_.y = dot(vs_r4_.xyz, vs_r2_.xyz);
    vs_r1_.y = dot(vs_r4_.xyz, vs_r4_.xyz);
    let _e223 = (-(vs_r0_.xyz) + global.vs_uniforms_vec4_[23].xyz);
    vs_r4_.x = _e223.x;
    vs_r4_.y = _e223.y;
    vs_r4_.z = _e223.z;
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
    let _e281 = (vs_r3_.xyz * vs_r4_.xyz);
    vs_r3_.x = _e281.x;
    vs_r3_.y = _e281.y;
    vs_r3_.z = _e281.z;
    let _e294 = (vs_r1_.xyz * vs_r4_.xyz);
    vs_r4_.x = _e294.x;
    vs_r4_.y = _e294.y;
    vs_r4_.z = _e294.z;
    let _e309 = (vs_r4_.xyz * global.vs_uniforms_vec4_[26].xyz);
    vs_r4_.x = _e309.x;
    vs_r4_.y = _e309.y;
    vs_r4_.z = _e309.z;
    let _e327 = ((vs_r1_.xyz * global.vs_uniforms_vec4_[27].xyz) + vs_r4_.xyz);
    vs_r1_.x = _e327.x;
    vs_r1_.y = _e327.y;
    vs_r1_.z = _e327.z;
    let _e342 = (vs_r1_.xyz + global.vs_uniforms_vec4_[25].xyz);
    vs_r1_.x = _e342.x;
    vs_r1_.y = _e342.y;
    vs_r1_.z = _e342.z;
    let _e359 = max(vs_r3_.xyz, vec3<f32>(0f, 0f, 0f));
    vs_r3_.x = _e359.x;
    vs_r3_.y = _e359.y;
    vs_r3_.z = _e359.z;
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
    let _e405 = (vs_r3_.xyz * vs_r4_.xyz);
    vs_r1_.x = _e405.x;
    vs_r1_.y = _e405.y;
    vs_r1_.z = _e405.z;
    vs_r1_.w = clamp(dot(-(global.vs_uniforms_vec4_[12].xyz), vs_r2_.xyz), 0f, 1f);
    let _e427 = vs_r2_.xyz;
    vs_o4_.x = _e427.x;
    vs_o4_.y = _e427.y;
    vs_o4_.z = _e427.z;
    let _e439 = global.vs_uniforms_vec4_[10].xyz;
    vs_r2_.x = _e439.x;
    vs_r2_.y = _e439.y;
    vs_r2_.z = _e439.z;
    let _e457 = ((vs_r1_.www * vs_r2_.xyz) + global.vs_uniforms_vec4_[11].xyz);
    vs_r2_.x = _e457.x;
    vs_r2_.y = _e457.y;
    vs_r2_.z = _e457.z;
    let _e475 = ((global.vs_uniforms_vec4_[17].xyz * vs_r1_.xxx) + vs_r2_.xyz);
    vs_r2_.x = _e475.x;
    vs_r2_.y = _e475.y;
    vs_r2_.z = _e475.z;
    let _e493 = ((global.vs_uniforms_vec4_[18].xyz * vs_r1_.yyy) + vs_r2_.xyz);
    vs_r1_.x = _e493.x;
    vs_r1_.y = _e493.y;
    vs_r1_.w = _e493.z;
    let _e516 = clamp(((global.vs_uniforms_vec4_[19].xyz * vs_r1_.zzz) + vs_r1_.xyw), vec3(0f), vec3(1f));
    vs_r1_.x = _e516.x;
    vs_r1_.y = _e516.y;
    vs_r1_.z = _e516.z;
    vs_r1_.w = 1f;
    vs_r2_ = global.vs_uniforms_vec4_[28];
    vs_o1_ = clamp(((vs_r2_ * vs_r1_) + global.vs_uniforms_vec4_[29]), vec4(0f), vec4(1f));
    vs_r1_.x = ((vs_r0_.z * global.vs_uniforms_vec4_[30].x) + global.vs_uniforms_vec4_[30].y);
    vs_r1_.x = max(vs_r1_.x, 0f);
    vs_r2_.x = pow(abs(vs_r1_.x), global.vs_uniforms_vec4_[30].z);
    vs_o6_v.x = min(vs_r2_.x, 1f);
    let _e601 = ((vs_v3_.xyx * vec3<f32>(1f, 1f, 0f)) + vec3<f32>(0f, 0f, 1f));
    vs_r1_.x = _e601.x;
    vs_r1_.y = _e601.y;
    vs_r1_.z = _e601.z;
    vs_o2_.x = dot(global.vs_uniforms_vec4_[6].xyw, vs_r1_.xyz);
    vs_o2_.y = dot(global.vs_uniforms_vec4_[7].xyw, vs_r1_.xyz);
    vs_o5_.x = dot(vs_r0_, global.vs_uniforms_vec4_[224]);
    vs_o5_.y = dot(vs_r0_, global.vs_uniforms_vec4_[225]);
    vs_o5_.z = dot(vs_r0_, global.vs_uniforms_vec4_[226]);
    let _e645 = vs_r0_.xyz;
    vs_o3_.x = _e645.x;
    vs_o3_.y = _e645.y;
    vs_o3_.z = _e645.z;
    return VertexOutput(vs_o1_, vs_o2_, vs_o3_, vs_o4_, vs_o5_, vs_o6_v, gl_Position);
}
