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
    var vs_r8_: vec4<f32>;
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
    var local_7: f32;
    var local_8: f32;

    vs_r0_.w = 1f;
    vs_r0_.x = dot(global.vs_uniforms_vec4_[31], vs_v0_);
    vs_r0_.y = dot(global.vs_uniforms_vec4_[32], vs_v0_);
    vs_r0_.z = dot(global.vs_uniforms_vec4_[33], vs_v0_);
    gl_Position.x = dot(global.vs_uniforms_vec4_[2], vs_r0_);
    gl_Position.y = dot(global.vs_uniforms_vec4_[3], vs_r0_);
    gl_Position.z = dot(global.vs_uniforms_vec4_[4], vs_r0_);
    gl_Position.w = dot(global.vs_uniforms_vec4_[5], vs_r0_);
    let _e81 = (-(vs_r0_.xyz) + global.vs_uniforms_vec4_[21].xyz);
    vs_r1_.x = _e81.x;
    vs_r1_.y = _e81.y;
    vs_r1_.z = _e81.z;
    vs_r2_.x = dot(vs_r1_.xyz, vs_r1_.xyz);
    if (vs_r2_.x == 0f) {
        local = FLT_MAX;
    } else {
        local = inverseSqrt(abs(vs_r2_.x));
    }
    vs_r3_.x = local;
    let _e114 = (-(vs_r0_.xyz) + global.vs_uniforms_vec4_[22].xyz);
    vs_r4_.x = _e114.x;
    vs_r4_.y = _e114.y;
    vs_r4_.z = _e114.z;
    vs_r2_.y = dot(vs_r4_.xyz, vs_r4_.xyz);
    if (vs_r2_.y == 0f) {
        local_1 = FLT_MAX;
    } else {
        local_1 = inverseSqrt(abs(vs_r2_.y));
    }
    vs_r3_.y = local_1;
    let _e147 = (-(vs_r0_.xyz) + global.vs_uniforms_vec4_[23].xyz);
    vs_r5_.x = _e147.x;
    vs_r5_.y = _e147.y;
    vs_r5_.z = _e147.z;
    vs_r2_.z = dot(vs_r5_.xyz, vs_r5_.xyz);
    if (vs_r2_.z == 0f) {
        local_2 = FLT_MAX;
    } else {
        local_2 = inverseSqrt(abs(vs_r2_.z));
    }
    vs_r3_.z = local_2;
    let _e180 = (-(vs_r0_.xyz) + global.vs_uniforms_vec4_[24].xyz);
    vs_r6_.x = _e180.x;
    vs_r6_.y = _e180.y;
    vs_r6_.z = _e180.z;
    vs_r2_.w = dot(vs_r6_.xyz, vs_r6_.xyz);
    if (vs_r2_.w == 0f) {
        local_3 = FLT_MAX;
    } else {
        local_3 = inverseSqrt(abs(vs_r2_.w));
    }
    vs_r3_.w = local_3;
    vs_r7_ = (vs_r2_ * vs_r3_);
    vs_r7_ = (vs_r7_ * global.vs_uniforms_vec4_[26]);
    vs_r2_ = ((vs_r2_ * global.vs_uniforms_vec4_[27]) + vs_r7_);
    vs_r2_ = (vs_r2_ + global.vs_uniforms_vec4_[25]);
    if (vs_r2_.x == 0f) {
        local_4 = FLT_MAX;
    } else {
        local_4 = (1f / vs_r2_.x);
    }
    vs_r7_.x = local_4;
    if (vs_r2_.y == 0f) {
        local_5 = FLT_MAX;
    } else {
        local_5 = (1f / vs_r2_.y);
    }
    vs_r7_.y = local_5;
    if (vs_r2_.z == 0f) {
        local_6 = FLT_MAX;
    } else {
        local_6 = (1f / vs_r2_.z);
    }
    vs_r7_.z = local_6;
    if (vs_r2_.w == 0f) {
        local_7 = FLT_MAX;
    } else {
        local_7 = (1f / vs_r2_.w);
    }
    vs_r7_.w = local_7;
    vs_r2_.x = dot(global.vs_uniforms_vec4_[31].xyz, vs_v1_.xyz);
    vs_r2_.y = dot(global.vs_uniforms_vec4_[32].xyz, vs_v1_.xyz);
    vs_r2_.z = dot(global.vs_uniforms_vec4_[33].xyz, vs_v1_.xyz);
    let _e296 = normalize(vs_r2_.xyz);
    vs_r8_.x = _e296.x;
    vs_r8_.y = _e296.y;
    vs_r8_.z = _e296.z;
    vs_r1_.x = dot(vs_r1_.xyz, vs_r8_.xyz);
    vs_r1_.y = dot(vs_r4_.xyz, vs_r8_.xyz);
    vs_r1_.z = dot(vs_r5_.xyz, vs_r8_.xyz);
    vs_r1_.w = dot(vs_r6_.xyz, vs_r8_.xyz);
    vs_r1_ = (vs_r3_ * vs_r1_);
    vs_r1_ = max(vs_r1_, vec4<f32>(0f, 0f, 0f, 0f));
    vs_r1_ = (vs_r7_ * vs_r1_);
    vs_r2_.x = clamp(dot(-(global.vs_uniforms_vec4_[12].xyz), vs_r8_.xyz), 0f, 1f);
    let _e358 = global.vs_uniforms_vec4_[10].xyz;
    vs_r3_.x = _e358.x;
    vs_r3_.y = _e358.y;
    vs_r3_.z = _e358.z;
    let _e376 = ((vs_r2_.xxx * vs_r3_.xyz) + global.vs_uniforms_vec4_[11].xyz);
    vs_r2_.x = _e376.x;
    vs_r2_.y = _e376.y;
    vs_r2_.z = _e376.z;
    let _e394 = ((global.vs_uniforms_vec4_[17].xyz * vs_r1_.xxx) + vs_r2_.xyz);
    vs_r2_.x = _e394.x;
    vs_r2_.y = _e394.y;
    vs_r2_.z = _e394.z;
    let _e412 = ((global.vs_uniforms_vec4_[18].xyz * vs_r1_.yyy) + vs_r2_.xyz);
    vs_r2_.x = _e412.x;
    vs_r2_.y = _e412.y;
    vs_r2_.z = _e412.z;
    let _e430 = ((global.vs_uniforms_vec4_[19].xyz * vs_r1_.zzz) + vs_r2_.xyz);
    vs_r1_.x = _e430.x;
    vs_r1_.y = _e430.y;
    vs_r1_.z = _e430.z;
    let _e453 = clamp(((global.vs_uniforms_vec4_[20].xyz * vs_r1_.www) + vs_r1_.xyz), vec3(0f), vec3(1f));
    vs_r1_.x = _e453.x;
    vs_r1_.y = _e453.y;
    vs_r1_.z = _e453.z;
    vs_r1_.w = 1f;
    vs_r2_ = global.vs_uniforms_vec4_[28];
    vs_o1_ = clamp(((vs_r2_ * vs_r1_) + global.vs_uniforms_vec4_[29]), vec4(0f), vec4(1f));
    vs_r1_.x = ((vs_r0_.z * global.vs_uniforms_vec4_[30].x) + global.vs_uniforms_vec4_[30].y);
    vs_r1_.x = max(vs_r1_.x, 0f);
    vs_r2_.x = pow(abs(vs_r1_.x), global.vs_uniforms_vec4_[30].z);
    vs_o7_v.x = min(vs_r2_.x, 1f);
    let _e538 = ((vs_v2_.xyx * vec3<f32>(1f, 1f, 0f)) + vec3<f32>(0f, 0f, 1f));
    vs_r1_.x = _e538.x;
    vs_r1_.y = _e538.y;
    vs_r1_.z = _e538.z;
    vs_o2_.x = dot(global.vs_uniforms_vec4_[6].xyw, vs_r1_.xyz);
    vs_o2_.y = dot(global.vs_uniforms_vec4_[7].xyw, vs_r1_.xyz);
    let _e565 = normalize(vs_r0_.xyz);
    vs_r1_.x = _e565.x;
    vs_r1_.y = _e565.y;
    vs_r1_.z = _e565.z;
    vs_r1_.w = dot(-(vs_r1_.xyz), vs_r8_.xyz);
    vs_r1_.w = (vs_r1_.w + vs_r1_.w);
    let _e596 = ((vs_r1_.www * -(vs_r8_.xyz)) + -(vs_r1_.xyz));
    vs_r1_.x = _e596.x;
    vs_r1_.y = _e596.y;
    vs_r1_.z = _e596.z;
    let _e606 = vs_r8_.xyz;
    vs_o5_.x = _e606.x;
    vs_o5_.y = _e606.y;
    vs_o5_.z = _e606.z;
    vs_r1_.w = (vs_r1_.z + 1f);
    vs_r1_.z = dot(vs_r1_.xyw, vs_r1_.xyw);
    if (vs_r1_.z == 0f) {
        local_8 = FLT_MAX;
    } else {
        local_8 = inverseSqrt(abs(vs_r1_.z));
    }
    vs_r1_.z = local_8;
    let _e645 = (vs_r1_.xy * vs_r1_.zz);
    vs_r1_.x = _e645.x;
    vs_r1_.y = _e645.y;
    let _e667 = ((vs_r1_.xy * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    vs_o3_.x = _e667.x;
    vs_o3_.y = _e667.y;
    io_5_4_.x = dot(vs_r0_, global.vs_uniforms_vec4_[224]);
    io_5_4_.y = dot(vs_r0_, global.vs_uniforms_vec4_[225]);
    io_5_4_.z = dot(vs_r0_, global.vs_uniforms_vec4_[226]);
    let _e693 = vs_r0_.xyz;
    vs_o4_.x = _e693.x;
    vs_o4_.y = _e693.y;
    vs_o4_.z = _e693.z;
    return VertexOutput(vs_o1_, vs_o2_, vs_o3_, vs_o4_, vs_o5_, io_5_4_, vs_o7_v, gl_Position);
}
