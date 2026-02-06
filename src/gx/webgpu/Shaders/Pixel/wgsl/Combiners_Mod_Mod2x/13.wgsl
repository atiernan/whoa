struct UniformBlock_1_ {
    ps_uniforms_vec4_: array<vec4<f32>, 13>,
}

struct FragmentOutput {
    @location(0) ps_oC0_: vec4<f32>,
}

@group(0) @binding(1) var<uniform> global: UniformBlock_1_;
@group(1) @binding(0) var ps_s0_smp: sampler;
@group(1) @binding(1) var ps_s0_tex: texture_2d<f32>;
@group(1) @binding(2) var ps_s1_smp: sampler;
@group(1) @binding(3) var ps_s1_tex: texture_2d<f32>;
@group(1) @binding(8) var ps_s4_smp: sampler;
@group(1) @binding(9) var ps_s4_tex: texture_2d<f32>;

@fragment fn main(@location(0) ps_v0_: vec4<f32>, @location(1) ps_v1_: vec4<f32>, @location(2) ps_v2_: vec4<f32>, @location(3) ps_v3_: vec4<f32>, @location(4) ps_v4_: vec4<f32>, @location(5) io_5_4_: vec4<f32>, @location(10) io_11_0_: vec4<f32>) -> FragmentOutput {
    var ps_r0_: vec4<f32>;
    var ps_r1_: vec4<f32>;
    var ps_r2_: vec4<f32>;
    var ps_r3_: vec4<f32>;
    var ps_r4_: vec4<f32>;
    var ps_oC0_: vec4<f32>;

    var local: f32;

    ps_r0_ = textureSample(ps_s0_tex, ps_s0_smp, ps_v1_.xy);
    ps_r1_ = textureSample(ps_s1_tex, ps_s1_smp, ps_v2_.xy);
    let _e37 = (ps_r0_.xyz * ps_r1_.xyz);
    ps_r0_.x = _e37.x;
    ps_r0_.y = _e37.y;
    ps_r0_.z = _e37.z;
    let _e50 = (ps_r0_.xyz + ps_r0_.xyz);
    ps_r0_.x = _e50.x;
    ps_r0_.y = _e50.y;
    ps_r0_.z = _e50.z;
    ps_r0_.w = (ps_r0_.w * ps_v0_.w);
    ps_r1_.x = (dot(ps_r0_.ww, ps_r1_.ww) + 0f);
    ps_r2_ = vec4((dot(ps_r0_.ww, ps_r1_.ww) + -(global.ps_uniforms_vec4_[2].w)));
    if any((ps_r2_.xyz < vec3(0f))) {
        discard;
    }
    ps_r0_.w = max(abs(io_5_4_.x), abs(io_5_4_.y));
    ps_r0_.w = clamp(((ps_r0_.w * -3.4482758f) + 3.413793f), 0f, 1f);
    ps_r1_.y = (-(ps_r0_.w) + 0.01f);
    if (ps_r1_.y >= 0f) {
        local = 0f;
    } else {
        local = 1f;
    }
    ps_r1_.y = local;
    if (ps_r1_.y != -(ps_r1_.y)) {
        {
            if (10f < ps_v3_.z) {
                {
                    ps_r2_ = ((io_5_4_.xyzx * vec4<f32>(0.5f, 0.5f, 1f, 0f)) + vec4<f32>(0.5f, 0.5f, 0f, 0f));
                    ps_r2_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r2_.xy, ps_r2_.w);
                    let _e198 = ((io_5_4_.xy * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
                    ps_r1_.y = _e198.x;
                    ps_r1_.z = _e198.y;
                    let _e211 = (ps_r1_.yz + global.ps_uniforms_vec4_[5].xy);
                    ps_r3_.x = _e211.x;
                    ps_r3_.y = _e211.y;
                    let _e226 = (vec2<f32>(1f, 0f) * io_5_4_.zx);
                    ps_r3_.z = _e226.x;
                    ps_r3_.w = _e226.y;
                    ps_r3_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r3_.xy, ps_r3_.w);
                    ps_r1_.w = (ps_r2_.x + ps_r3_.x);
                    let _e250 = (ps_r1_.yz + global.ps_uniforms_vec4_[7].xy);
                    ps_r2_.x = _e250.x;
                    ps_r2_.y = _e250.y;
                    let _e265 = (vec2<f32>(1f, 0f) * io_5_4_.zx);
                    ps_r2_.z = _e265.x;
                    ps_r2_.w = _e265.y;
                    ps_r2_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r2_.xy, ps_r2_.w);
                    ps_r1_.w = (ps_r1_.w + ps_r2_.x);
                    let _e289 = (ps_r1_.yz + global.ps_uniforms_vec4_[9].xy);
                    ps_r2_.x = _e289.x;
                    ps_r2_.y = _e289.y;
                    let _e304 = (vec2<f32>(1f, 0f) * io_5_4_.zx);
                    ps_r2_.z = _e304.x;
                    ps_r2_.w = _e304.y;
                    ps_r2_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r2_.xy, ps_r2_.w);
                    ps_r1_.w = (ps_r1_.w + ps_r2_.x);
                    let _e328 = (ps_r1_.yz + global.ps_uniforms_vec4_[11].xy);
                    ps_r2_.x = _e328.x;
                    ps_r2_.y = _e328.y;
                    let _e343 = (vec2<f32>(1f, 0f) * io_5_4_.zx);
                    ps_r2_.z = _e343.x;
                    ps_r2_.w = _e343.y;
                    ps_r2_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r2_.xy, ps_r2_.w);
                    ps_r1_.y = (ps_r1_.w + ps_r2_.x);
                    ps_r1_.y = ((ps_r1_.y * 0.2f) + -1f);
                    ps_r1_.y = ((ps_r0_.w * ps_r1_.y) + 1f);
                    ps_r2_.x = min(ps_r1_.y, 1f);
                }
            } else {
                {
                    ps_r3_ = ((io_5_4_.xyzx * vec4<f32>(0.5f, 0.5f, 1f, 0f)) + vec4<f32>(0.5f, 0.5f, 0f, 0f));
                    ps_r3_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r3_.xy, ps_r3_.w);
                    let _e433 = ((io_5_4_.xy * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
                    ps_r1_.y = _e433.x;
                    ps_r1_.z = _e433.y;
                    let _e446 = (ps_r1_.yz + global.ps_uniforms_vec4_[5].xy);
                    ps_r4_.x = _e446.x;
                    ps_r4_.y = _e446.y;
                    let _e461 = (vec2<f32>(1f, 0f) * io_5_4_.zx);
                    ps_r4_.z = _e461.x;
                    ps_r4_.w = _e461.y;
                    ps_r4_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r4_.xy, ps_r4_.w);
                    ps_r1_.w = (ps_r3_.x + ps_r4_.x);
                    let _e485 = (ps_r1_.yz + global.ps_uniforms_vec4_[6].xy);
                    ps_r3_.x = _e485.x;
                    ps_r3_.y = _e485.y;
                    let _e500 = (vec2<f32>(1f, 0f) * io_5_4_.zx);
                    ps_r3_.z = _e500.x;
                    ps_r3_.w = _e500.y;
                    ps_r3_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r3_.xy, ps_r3_.w);
                    ps_r1_.w = (ps_r1_.w + ps_r3_.x);
                    let _e524 = (ps_r1_.yz + global.ps_uniforms_vec4_[7].xy);
                    ps_r3_.x = _e524.x;
                    ps_r3_.y = _e524.y;
                    let _e539 = (vec2<f32>(1f, 0f) * io_5_4_.zx);
                    ps_r3_.z = _e539.x;
                    ps_r3_.w = _e539.y;
                    ps_r3_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r3_.xy, ps_r3_.w);
                    ps_r1_.w = (ps_r1_.w + ps_r3_.x);
                    let _e563 = (ps_r1_.yz + global.ps_uniforms_vec4_[8].xy);
                    ps_r3_.x = _e563.x;
                    ps_r3_.y = _e563.y;
                    let _e578 = (vec2<f32>(1f, 0f) * io_5_4_.zx);
                    ps_r3_.z = _e578.x;
                    ps_r3_.w = _e578.y;
                    ps_r3_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r3_.xy, ps_r3_.w);
                    ps_r1_.w = (ps_r1_.w + ps_r3_.x);
                    let _e602 = (ps_r1_.yz + global.ps_uniforms_vec4_[9].xy);
                    ps_r3_.x = _e602.x;
                    ps_r3_.y = _e602.y;
                    let _e617 = (vec2<f32>(1f, 0f) * io_5_4_.zx);
                    ps_r3_.z = _e617.x;
                    ps_r3_.w = _e617.y;
                    ps_r3_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r3_.xy, ps_r3_.w);
                    ps_r1_.w = (ps_r1_.w + ps_r3_.x);
                    let _e641 = (ps_r1_.yz + global.ps_uniforms_vec4_[10].xy);
                    ps_r3_.x = _e641.x;
                    ps_r3_.y = _e641.y;
                    let _e656 = (vec2<f32>(1f, 0f) * io_5_4_.zx);
                    ps_r3_.z = _e656.x;
                    ps_r3_.w = _e656.y;
                    ps_r3_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r3_.xy, ps_r3_.w);
                    ps_r1_.w = (ps_r1_.w + ps_r3_.x);
                    let _e680 = (ps_r1_.yz + global.ps_uniforms_vec4_[11].xy);
                    ps_r3_.x = _e680.x;
                    ps_r3_.y = _e680.y;
                    let _e695 = (vec2<f32>(1f, 0f) * io_5_4_.zx);
                    ps_r3_.z = _e695.x;
                    ps_r3_.w = _e695.y;
                    ps_r3_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r3_.xy, ps_r3_.w);
                    ps_r1_.w = (ps_r1_.w + ps_r3_.x);
                    let _e719 = (ps_r1_.yz + global.ps_uniforms_vec4_[12].xy);
                    ps_r3_.x = _e719.x;
                    ps_r3_.y = _e719.y;
                    let _e734 = (vec2<f32>(1f, 0f) * io_5_4_.zx);
                    ps_r3_.z = _e734.x;
                    ps_r3_.w = _e734.y;
                    ps_r3_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r3_.xy, ps_r3_.w);
                    ps_r1_.y = (ps_r1_.w + ps_r3_.x);
                    ps_r1_.y = ((ps_r1_.y * 0.11111111f) + -1f);
                    ps_r0_.w = ((ps_r0_.w * ps_r1_.y) + 1f);
                    ps_r2_.x = min(ps_r0_.w, 1f);
                }
            }
        }
    } else {
        {
            ps_r2_.x = 1f;
        }
    }
    ps_r0_.w = dot(ps_v3_.xyz, global.ps_uniforms_vec4_[3].xyz);
    ps_r0_.w = clamp((ps_r0_.w + global.ps_uniforms_vec4_[3].w), 0f, 1f);
    ps_r1_.y = mix(ps_r2_.x, 1f, ps_r0_.w);
    ps_r0_.w = dot(global.ps_uniforms_vec4_[4].xyz, ps_v4_.xyz);
    ps_r0_.w = (-(abs(ps_r0_.w)) + 1.2f);
    ps_r0_.w = (ps_r0_.w * ps_r0_.w);
    ps_r0_.w = clamp((ps_r0_.w * ps_r0_.w), 0f, 1f);
    ps_r2_.x = mix(ps_r1_.y, 1f, ps_r0_.w);
    ps_r0_.w = ((ps_r2_.x * 0.3f) + 0.7f);
    let _e888 = (ps_r0_.www * ps_v0_.xyz);
    ps_r1_.y = _e888.x;
    ps_r1_.z = _e888.y;
    ps_r1_.w = _e888.z;
    let _e907 = ((ps_r0_.xyz * ps_r1_.yzw) + -(global.ps_uniforms_vec4_[2].xyz));
    ps_r0_.x = _e907.x;
    ps_r0_.y = _e907.y;
    ps_r0_.z = _e907.z;
    let _e925 = ((io_11_0_.xxx * ps_r0_.xyz) + global.ps_uniforms_vec4_[2].xyz);
    ps_oC0_.x = _e925.x;
    ps_oC0_.y = _e925.y;
    ps_oC0_.z = _e925.z;
    ps_oC0_.w = ps_r1_.x;
    return FragmentOutput(ps_oC0_);
}
