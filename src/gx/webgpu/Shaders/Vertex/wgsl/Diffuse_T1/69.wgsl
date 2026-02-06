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
    @location(10) vs_o8_v: vec4<f32>,
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
    var vs_o8_v: vec4<f32>;
    var gl_Position: vec4<f32>;

    var local: f32;
    var local_1: f32;
    var local_2: f32;
    var local_3: f32;
    var local_4: f32;
    var local_5: f32;
    var local_6: f32;
    var local_7: f32;

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
    let _e105 = normalize(vs_r2_.xyz);
    vs_r3_.x = _e105.x;
    vs_r3_.y = _e105.y;
    vs_r3_.z = _e105.z;
    vs_r2_.x = clamp(dot(-(global.vs_uniforms_vec4_[12].xyz), vs_r3_.xyz), 0f, 1f);
    let _e129 = global.vs_uniforms_vec4_[10].xyz;
    vs_r4_.x = _e129.x;
    vs_r4_.y = _e129.y;
    vs_r4_.z = _e129.z;
    let _e147 = ((vs_r2_.xxx * vs_r4_.xyz) + global.vs_uniforms_vec4_[11].xyz);
    vs_r2_.x = _e147.x;
    vs_r2_.y = _e147.y;
    vs_r2_.z = _e147.z;
    let _e163 = (-(vs_r0_.xyz) + global.vs_uniforms_vec4_[21].xyz);
    vs_r4_.x = _e163.x;
    vs_r4_.y = _e163.y;
    vs_r4_.z = _e163.z;
    vs_r5_.x = dot(vs_r4_.xyz, vs_r3_.xyz);
    vs_r4_.x = dot(vs_r4_.xyz, vs_r4_.xyz);
    let _e191 = (-(vs_r0_.xyz) + global.vs_uniforms_vec4_[22].xyz);
    vs_r6_.x = _e191.x;
    vs_r6_.y = _e191.y;
    vs_r6_.z = _e191.z;
    vs_r5_.y = dot(vs_r6_.xyz, vs_r3_.xyz);
    vs_r4_.y = dot(vs_r6_.xyz, vs_r6_.xyz);
    let _e219 = (-(vs_r0_.xyz) + global.vs_uniforms_vec4_[23].xyz);
    vs_r6_.x = _e219.x;
    vs_r6_.y = _e219.y;
    vs_r6_.z = _e219.z;
    vs_r5_.z = dot(vs_r6_.xyz, vs_r3_.xyz);
    vs_r4_.z = dot(vs_r6_.xyz, vs_r6_.xyz);
    let _e247 = (-(vs_r0_.xyz) + global.vs_uniforms_vec4_[24].xyz);
    vs_r6_.x = _e247.x;
    vs_r6_.y = _e247.y;
    vs_r6_.z = _e247.z;
    vs_r5_.w = dot(vs_r6_.xyz, vs_r3_.xyz);
    let _e263 = vs_r3_.xyz;
    vs_o4_.x = _e263.x;
    vs_o4_.y = _e263.y;
    vs_o4_.z = _e263.z;
    vs_r4_.w = dot(vs_r6_.xyz, vs_r6_.xyz);
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
    if (vs_r4_.w == 0f) {
        local_3 = FLT_MAX;
    } else {
        local_3 = inverseSqrt(abs(vs_r4_.w));
    }
    vs_r3_.w = local_3;
    vs_r5_ = (vs_r5_ * vs_r3_);
    vs_r3_ = (vs_r4_ * vs_r3_);
    vs_r3_ = (vs_r3_ * global.vs_uniforms_vec4_[26]);
    vs_r3_ = ((vs_r4_ * global.vs_uniforms_vec4_[27]) + vs_r3_);
    vs_r3_ = (vs_r3_ + global.vs_uniforms_vec4_[25]);
    vs_r4_ = max(vs_r5_, vec4<f32>(0f, 0f, 0f, 0f));
    if (vs_r3_.x == 0f) {
        local_4 = FLT_MAX;
    } else {
        local_4 = (1f / vs_r3_.x);
    }
    vs_r5_.x = local_4;
    if (vs_r3_.y == 0f) {
        local_5 = FLT_MAX;
    } else {
        local_5 = (1f / vs_r3_.y);
    }
    vs_r5_.y = local_5;
    if (vs_r3_.z == 0f) {
        local_6 = FLT_MAX;
    } else {
        local_6 = (1f / vs_r3_.z);
    }
    vs_r5_.z = local_6;
    if (vs_r3_.w == 0f) {
        local_7 = FLT_MAX;
    } else {
        local_7 = (1f / vs_r3_.w);
    }
    vs_r5_.w = local_7;
    vs_r3_ = (vs_r4_ * vs_r5_);
    let _e409 = ((global.vs_uniforms_vec4_[17].xyz * vs_r3_.xxx) + vs_r2_.xyz);
    vs_r2_.x = _e409.x;
    vs_r2_.y = _e409.y;
    vs_r2_.z = _e409.z;
    let _e427 = ((global.vs_uniforms_vec4_[18].xyz * vs_r3_.yyy) + vs_r2_.xyz);
    vs_r2_.x = _e427.x;
    vs_r2_.y = _e427.y;
    vs_r2_.z = _e427.z;
    let _e445 = ((global.vs_uniforms_vec4_[19].xyz * vs_r3_.zzz) + vs_r2_.xyz);
    vs_r2_.x = _e445.x;
    vs_r2_.y = _e445.y;
    vs_r2_.z = _e445.z;
    let _e468 = clamp(((global.vs_uniforms_vec4_[20].xyz * vs_r3_.www) + vs_r2_.xyz), vec3(0f), vec3(1f));
    vs_r1_.x = _e468.x;
    vs_r1_.y = _e468.y;
    vs_r1_.z = _e468.z;
    vs_r2_ = global.vs_uniforms_vec4_[28];
    vs_o1_ = clamp(((vs_r2_ * vs_r1_) + global.vs_uniforms_vec4_[29]), vec4(0f), vec4(1f));
    vs_r1_.x = ((vs_r0_.z * global.vs_uniforms_vec4_[30].x) + global.vs_uniforms_vec4_[30].y);
    vs_r1_.x = max(vs_r1_.x, 0f);
    vs_r2_.x = pow(abs(vs_r1_.x), global.vs_uniforms_vec4_[30].z);
    vs_o8_v.x = min(vs_r2_.x, 1f);
    let _e547 = ((vs_v2_.xyx * vec3<f32>(1f, 1f, 0f)) + vec3<f32>(0f, 0f, 1f));
    vs_r1_.x = _e547.x;
    vs_r1_.y = _e547.y;
    vs_r1_.z = _e547.z;
    vs_o2_.x = dot(global.vs_uniforms_vec4_[6].xyw, vs_r1_.xyz);
    vs_o2_.y = dot(global.vs_uniforms_vec4_[7].xyw, vs_r1_.xyz);
    vs_o5_.x = dot(vs_r0_, global.vs_uniforms_vec4_[224]);
    vs_o5_.y = dot(vs_r0_, global.vs_uniforms_vec4_[225]);
    vs_o5_.z = dot(vs_r0_, global.vs_uniforms_vec4_[226]);
    io_5_4_.x = dot(vs_r0_, global.vs_uniforms_vec4_[227]);
    io_5_4_.y = dot(vs_r0_, global.vs_uniforms_vec4_[228]);
    io_5_4_.z = dot(vs_r0_, global.vs_uniforms_vec4_[229]);
    io_5_5_.x = dot(vs_r0_, global.vs_uniforms_vec4_[230]);
    io_5_5_.y = dot(vs_r0_, global.vs_uniforms_vec4_[231]);
    io_5_5_.z = dot(vs_r0_, global.vs_uniforms_vec4_[232]);
    vs_o5_.w = dot(vs_r0_, global.vs_uniforms_vec4_[233]);
    io_5_4_.w = dot(vs_r0_, global.vs_uniforms_vec4_[234]);
    io_5_5_.w = dot(vs_r0_, global.vs_uniforms_vec4_[235]);
    let _e645 = vs_r0_.xyz;
    vs_o3_.x = _e645.x;
    vs_o3_.y = _e645.y;
    vs_o3_.z = _e645.z;
    return VertexOutput(vs_o1_, vs_o2_, vs_o3_, vs_o4_, vs_o5_, io_5_4_, io_5_5_, vs_o8_v, gl_Position);
}
