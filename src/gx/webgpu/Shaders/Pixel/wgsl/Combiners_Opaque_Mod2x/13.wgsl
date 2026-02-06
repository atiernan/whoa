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
    ps_r0_.w = (dot(ps_v0_.ww, ps_r1_.ww) + 0f);
    ps_r1_ = vec4((dot(ps_v0_.ww, ps_r1_.ww) + -(global.ps_uniforms_vec4_[2].w)));
    if any((ps_r1_.xyz < vec3(0f))) {
        discard;
    }
    ps_r1_.x = max(abs(io_5_4_.x), abs(io_5_4_.y));
    ps_r1_.x = clamp(((ps_r1_.x * -3.4482758f) + 3.413793f), 0f, 1f);
    ps_r1_.y = (-(ps_r1_.x) + 0.01f);
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
                    let _e192 = ((io_5_4_.xy * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
                    ps_r1_.y = _e192.x;
                    ps_r1_.z = _e192.y;
                    let _e205 = (ps_r1_.yz + global.ps_uniforms_vec4_[5].xy);
                    ps_r3_.x = _e205.x;
                    ps_r3_.y = _e205.y;
                    let _e220 = (vec2<f32>(1f, 0f) * io_5_4_.zx);
                    ps_r3_.z = _e220.x;
                    ps_r3_.w = _e220.y;
                    ps_r3_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r3_.xy, ps_r3_.w);
                    ps_r1_.w = (ps_r2_.x + ps_r3_.x);
                    let _e244 = (ps_r1_.yz + global.ps_uniforms_vec4_[7].xy);
                    ps_r2_.x = _e244.x;
                    ps_r2_.y = _e244.y;
                    let _e259 = (vec2<f32>(1f, 0f) * io_5_4_.zx);
                    ps_r2_.z = _e259.x;
                    ps_r2_.w = _e259.y;
                    ps_r2_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r2_.xy, ps_r2_.w);
                    ps_r1_.w = (ps_r1_.w + ps_r2_.x);
                    let _e283 = (ps_r1_.yz + global.ps_uniforms_vec4_[9].xy);
                    ps_r2_.x = _e283.x;
                    ps_r2_.y = _e283.y;
                    let _e298 = (vec2<f32>(1f, 0f) * io_5_4_.zx);
                    ps_r2_.z = _e298.x;
                    ps_r2_.w = _e298.y;
                    ps_r2_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r2_.xy, ps_r2_.w);
                    ps_r1_.w = (ps_r1_.w + ps_r2_.x);
                    let _e322 = (ps_r1_.yz + global.ps_uniforms_vec4_[11].xy);
                    ps_r2_.x = _e322.x;
                    ps_r2_.y = _e322.y;
                    let _e337 = (vec2<f32>(1f, 0f) * io_5_4_.zx);
                    ps_r2_.z = _e337.x;
                    ps_r2_.w = _e337.y;
                    ps_r2_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r2_.xy, ps_r2_.w);
                    ps_r1_.y = (ps_r1_.w + ps_r2_.x);
                    ps_r1_.y = ((ps_r1_.y * 0.2f) + -1f);
                    ps_r1_.y = ((ps_r1_.x * ps_r1_.y) + 1f);
                    ps_r2_.x = min(ps_r1_.y, 1f);
                }
            } else {
                {
                    ps_r3_ = ((io_5_4_.xyzx * vec4<f32>(0.5f, 0.5f, 1f, 0f)) + vec4<f32>(0.5f, 0.5f, 0f, 0f));
                    ps_r3_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r3_.xy, ps_r3_.w);
                    let _e427 = ((io_5_4_.xy * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
                    ps_r1_.y = _e427.x;
                    ps_r1_.z = _e427.y;
                    let _e440 = (ps_r1_.yz + global.ps_uniforms_vec4_[5].xy);
                    ps_r4_.x = _e440.x;
                    ps_r4_.y = _e440.y;
                    let _e455 = (vec2<f32>(1f, 0f) * io_5_4_.zx);
                    ps_r4_.z = _e455.x;
                    ps_r4_.w = _e455.y;
                    ps_r4_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r4_.xy, ps_r4_.w);
                    ps_r1_.w = (ps_r3_.x + ps_r4_.x);
                    let _e479 = (ps_r1_.yz + global.ps_uniforms_vec4_[6].xy);
                    ps_r3_.x = _e479.x;
                    ps_r3_.y = _e479.y;
                    let _e494 = (vec2<f32>(1f, 0f) * io_5_4_.zx);
                    ps_r3_.z = _e494.x;
                    ps_r3_.w = _e494.y;
                    ps_r3_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r3_.xy, ps_r3_.w);
                    ps_r1_.w = (ps_r1_.w + ps_r3_.x);
                    let _e518 = (ps_r1_.yz + global.ps_uniforms_vec4_[7].xy);
                    ps_r3_.x = _e518.x;
                    ps_r3_.y = _e518.y;
                    let _e533 = (vec2<f32>(1f, 0f) * io_5_4_.zx);
                    ps_r3_.z = _e533.x;
                    ps_r3_.w = _e533.y;
                    ps_r3_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r3_.xy, ps_r3_.w);
                    ps_r1_.w = (ps_r1_.w + ps_r3_.x);
                    let _e557 = (ps_r1_.yz + global.ps_uniforms_vec4_[8].xy);
                    ps_r3_.x = _e557.x;
                    ps_r3_.y = _e557.y;
                    let _e572 = (vec2<f32>(1f, 0f) * io_5_4_.zx);
                    ps_r3_.z = _e572.x;
                    ps_r3_.w = _e572.y;
                    ps_r3_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r3_.xy, ps_r3_.w);
                    ps_r1_.w = (ps_r1_.w + ps_r3_.x);
                    let _e596 = (ps_r1_.yz + global.ps_uniforms_vec4_[9].xy);
                    ps_r3_.x = _e596.x;
                    ps_r3_.y = _e596.y;
                    let _e611 = (vec2<f32>(1f, 0f) * io_5_4_.zx);
                    ps_r3_.z = _e611.x;
                    ps_r3_.w = _e611.y;
                    ps_r3_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r3_.xy, ps_r3_.w);
                    ps_r1_.w = (ps_r1_.w + ps_r3_.x);
                    let _e635 = (ps_r1_.yz + global.ps_uniforms_vec4_[10].xy);
                    ps_r3_.x = _e635.x;
                    ps_r3_.y = _e635.y;
                    let _e650 = (vec2<f32>(1f, 0f) * io_5_4_.zx);
                    ps_r3_.z = _e650.x;
                    ps_r3_.w = _e650.y;
                    ps_r3_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r3_.xy, ps_r3_.w);
                    ps_r1_.w = (ps_r1_.w + ps_r3_.x);
                    let _e674 = (ps_r1_.yz + global.ps_uniforms_vec4_[11].xy);
                    ps_r3_.x = _e674.x;
                    ps_r3_.y = _e674.y;
                    let _e689 = (vec2<f32>(1f, 0f) * io_5_4_.zx);
                    ps_r3_.z = _e689.x;
                    ps_r3_.w = _e689.y;
                    ps_r3_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r3_.xy, ps_r3_.w);
                    ps_r1_.w = (ps_r1_.w + ps_r3_.x);
                    let _e713 = (ps_r1_.yz + global.ps_uniforms_vec4_[12].xy);
                    ps_r3_.x = _e713.x;
                    ps_r3_.y = _e713.y;
                    let _e728 = (vec2<f32>(1f, 0f) * io_5_4_.zx);
                    ps_r3_.z = _e728.x;
                    ps_r3_.w = _e728.y;
                    ps_r3_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r3_.xy, ps_r3_.w);
                    ps_r1_.y = (ps_r1_.w + ps_r3_.x);
                    ps_r1_.y = ((ps_r1_.y * 0.11111111f) + -1f);
                    ps_r1_.x = ((ps_r1_.x * ps_r1_.y) + 1f);
                    ps_r2_.x = min(ps_r1_.x, 1f);
                }
            }
        }
    } else {
        {
            ps_r2_.x = 1f;
        }
    }
    ps_r1_.x = dot(ps_v3_.xyz, global.ps_uniforms_vec4_[3].xyz);
    ps_r1_.x = clamp((ps_r1_.x + global.ps_uniforms_vec4_[3].w), 0f, 1f);
    ps_r3_.x = mix(ps_r2_.x, 1f, ps_r1_.x);
    ps_r1_.x = dot(global.ps_uniforms_vec4_[4].xyz, ps_v4_.xyz);
    ps_r1_.x = (-(abs(ps_r1_.x)) + 1.2f);
    ps_r1_.x = (ps_r1_.x * ps_r1_.x);
    ps_r1_.x = clamp((ps_r1_.x * ps_r1_.x), 0f, 1f);
    ps_r2_.x = mix(ps_r3_.x, 1f, ps_r1_.x);
    ps_r1_.x = ((ps_r2_.x * 0.3f) + 0.7f);
    let _e882 = (ps_r1_.xxx * ps_v0_.xyz);
    ps_r1_.x = _e882.x;
    ps_r1_.y = _e882.y;
    ps_r1_.z = _e882.z;
    let _e901 = ((ps_r0_.xyz * ps_r1_.xyz) + -(global.ps_uniforms_vec4_[2].xyz));
    ps_r0_.x = _e901.x;
    ps_r0_.y = _e901.y;
    ps_r0_.z = _e901.z;
    let _e919 = ((io_11_0_.xxx * ps_r0_.xyz) + global.ps_uniforms_vec4_[2].xyz);
    ps_oC0_.x = _e919.x;
    ps_oC0_.y = _e919.y;
    ps_oC0_.z = _e919.z;
    ps_oC0_.w = ps_r0_.w;
    return FragmentOutput(ps_oC0_);
}
