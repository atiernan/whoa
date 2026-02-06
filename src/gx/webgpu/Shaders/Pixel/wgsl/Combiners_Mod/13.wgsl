struct UniformBlock_1_ {
    ps_uniforms_vec4_: array<vec4<f32>, 13>,
}

struct FragmentOutput {
    @location(0) ps_oC0_: vec4<f32>,
}

@group(0) @binding(1) var<uniform> global: UniformBlock_1_;
@group(1) @binding(0) var ps_s0_smp: sampler;
@group(1) @binding(1) var ps_s0_tex: texture_2d<f32>;
@group(1) @binding(8) var ps_s4_smp: sampler;
@group(1) @binding(9) var ps_s4_tex: texture_2d<f32>;

@fragment fn main(@location(0) ps_v0_: vec4<f32>, @location(1) ps_v1_: vec4<f32>, @location(2) ps_v2_: vec4<f32>, @location(3) ps_v3_: vec4<f32>, @location(4) ps_v4_: vec4<f32>, @location(10) io_11_0_: vec4<f32>) -> FragmentOutput {
    var ps_r0_: vec4<f32>;
    var ps_r1_: vec4<f32>;
    var ps_r2_: vec4<f32>;
    var ps_r3_: vec4<f32>;
    var ps_r4_: vec4<f32>;
    var ps_oC0_: vec4<f32>;

    var local: f32;

    ps_r0_ = textureSample(ps_s0_tex, ps_s0_smp, ps_v1_.xy);
    ps_r1_.x = (ps_r0_.w * ps_v0_.w);
    ps_r2_ = ((ps_v0_.wwww * ps_r0_.wwww) + -(global.ps_uniforms_vec4_[2].wwww));
    if any((ps_r2_.xyz < vec3(0f))) {
        discard;
    }
    ps_r0_.w = max(abs(ps_v4_.x), abs(ps_v4_.y));
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
            if (10f < ps_v2_.z) {
                {
                    ps_r2_ = ((ps_v4_.xyzx * vec4<f32>(0.5f, 0.5f, 1f, 0f)) + vec4<f32>(0.5f, 0.5f, 0f, 0f));
                    ps_r2_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r2_.xy, ps_r2_.w);
                    let _e153 = ((ps_v4_.xy * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
                    ps_r1_.y = _e153.x;
                    ps_r1_.z = _e153.y;
                    let _e166 = (ps_r1_.yz + global.ps_uniforms_vec4_[5].xy);
                    ps_r3_.x = _e166.x;
                    ps_r3_.y = _e166.y;
                    let _e181 = (vec2<f32>(1f, 0f) * ps_v4_.zx);
                    ps_r3_.z = _e181.x;
                    ps_r3_.w = _e181.y;
                    ps_r3_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r3_.xy, ps_r3_.w);
                    ps_r1_.w = (ps_r2_.x + ps_r3_.x);
                    let _e205 = (ps_r1_.yz + global.ps_uniforms_vec4_[7].xy);
                    ps_r2_.x = _e205.x;
                    ps_r2_.y = _e205.y;
                    let _e220 = (vec2<f32>(1f, 0f) * ps_v4_.zx);
                    ps_r2_.z = _e220.x;
                    ps_r2_.w = _e220.y;
                    ps_r2_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r2_.xy, ps_r2_.w);
                    ps_r1_.w = (ps_r1_.w + ps_r2_.x);
                    let _e244 = (ps_r1_.yz + global.ps_uniforms_vec4_[9].xy);
                    ps_r2_.x = _e244.x;
                    ps_r2_.y = _e244.y;
                    let _e259 = (vec2<f32>(1f, 0f) * ps_v4_.zx);
                    ps_r2_.z = _e259.x;
                    ps_r2_.w = _e259.y;
                    ps_r2_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r2_.xy, ps_r2_.w);
                    ps_r1_.w = (ps_r1_.w + ps_r2_.x);
                    let _e283 = (ps_r1_.yz + global.ps_uniforms_vec4_[11].xy);
                    ps_r2_.x = _e283.x;
                    ps_r2_.y = _e283.y;
                    let _e298 = (vec2<f32>(1f, 0f) * ps_v4_.zx);
                    ps_r2_.z = _e298.x;
                    ps_r2_.w = _e298.y;
                    ps_r2_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r2_.xy, ps_r2_.w);
                    ps_r1_.y = (ps_r1_.w + ps_r2_.x);
                    ps_r1_.y = ((ps_r1_.y * 0.2f) + -1f);
                    ps_r1_.y = ((ps_r0_.w * ps_r1_.y) + 1f);
                    ps_r2_.x = min(ps_r1_.y, 1f);
                }
            } else {
                {
                    ps_r3_ = ((ps_v4_.xyzx * vec4<f32>(0.5f, 0.5f, 1f, 0f)) + vec4<f32>(0.5f, 0.5f, 0f, 0f));
                    ps_r3_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r3_.xy, ps_r3_.w);
                    let _e390 = ((ps_v4_.xy * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
                    ps_r1_.y = _e390.x;
                    ps_r1_.z = _e390.y;
                    let _e403 = (ps_r1_.yz + global.ps_uniforms_vec4_[5].xy);
                    ps_r4_.x = _e403.x;
                    ps_r4_.y = _e403.y;
                    let _e418 = (vec2<f32>(1f, 0f) * ps_v4_.zx);
                    ps_r4_.z = _e418.x;
                    ps_r4_.w = _e418.y;
                    ps_r4_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r4_.xy, ps_r4_.w);
                    ps_r1_.w = (ps_r3_.x + ps_r4_.x);
                    let _e442 = (ps_r1_.yz + global.ps_uniforms_vec4_[6].xy);
                    ps_r3_.x = _e442.x;
                    ps_r3_.y = _e442.y;
                    let _e457 = (vec2<f32>(1f, 0f) * ps_v4_.zx);
                    ps_r3_.z = _e457.x;
                    ps_r3_.w = _e457.y;
                    ps_r3_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r3_.xy, ps_r3_.w);
                    ps_r1_.w = (ps_r1_.w + ps_r3_.x);
                    let _e481 = (ps_r1_.yz + global.ps_uniforms_vec4_[7].xy);
                    ps_r3_.x = _e481.x;
                    ps_r3_.y = _e481.y;
                    let _e496 = (vec2<f32>(1f, 0f) * ps_v4_.zx);
                    ps_r3_.z = _e496.x;
                    ps_r3_.w = _e496.y;
                    ps_r3_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r3_.xy, ps_r3_.w);
                    ps_r1_.w = (ps_r1_.w + ps_r3_.x);
                    let _e520 = (ps_r1_.yz + global.ps_uniforms_vec4_[8].xy);
                    ps_r3_.x = _e520.x;
                    ps_r3_.y = _e520.y;
                    let _e535 = (vec2<f32>(1f, 0f) * ps_v4_.zx);
                    ps_r3_.z = _e535.x;
                    ps_r3_.w = _e535.y;
                    ps_r3_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r3_.xy, ps_r3_.w);
                    ps_r1_.w = (ps_r1_.w + ps_r3_.x);
                    let _e559 = (ps_r1_.yz + global.ps_uniforms_vec4_[9].xy);
                    ps_r3_.x = _e559.x;
                    ps_r3_.y = _e559.y;
                    let _e574 = (vec2<f32>(1f, 0f) * ps_v4_.zx);
                    ps_r3_.z = _e574.x;
                    ps_r3_.w = _e574.y;
                    ps_r3_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r3_.xy, ps_r3_.w);
                    ps_r1_.w = (ps_r1_.w + ps_r3_.x);
                    let _e598 = (ps_r1_.yz + global.ps_uniforms_vec4_[10].xy);
                    ps_r3_.x = _e598.x;
                    ps_r3_.y = _e598.y;
                    let _e613 = (vec2<f32>(1f, 0f) * ps_v4_.zx);
                    ps_r3_.z = _e613.x;
                    ps_r3_.w = _e613.y;
                    ps_r3_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r3_.xy, ps_r3_.w);
                    ps_r1_.w = (ps_r1_.w + ps_r3_.x);
                    let _e637 = (ps_r1_.yz + global.ps_uniforms_vec4_[11].xy);
                    ps_r3_.x = _e637.x;
                    ps_r3_.y = _e637.y;
                    let _e652 = (vec2<f32>(1f, 0f) * ps_v4_.zx);
                    ps_r3_.z = _e652.x;
                    ps_r3_.w = _e652.y;
                    ps_r3_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r3_.xy, ps_r3_.w);
                    ps_r1_.w = (ps_r1_.w + ps_r3_.x);
                    let _e676 = (ps_r1_.yz + global.ps_uniforms_vec4_[12].xy);
                    ps_r3_.x = _e676.x;
                    ps_r3_.y = _e676.y;
                    let _e691 = (vec2<f32>(1f, 0f) * ps_v4_.zx);
                    ps_r3_.z = _e691.x;
                    ps_r3_.w = _e691.y;
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
    ps_r0_.w = dot(ps_v2_.xyz, global.ps_uniforms_vec4_[3].xyz);
    ps_r0_.w = clamp((ps_r0_.w + global.ps_uniforms_vec4_[3].w), 0f, 1f);
    ps_r1_.y = mix(ps_r2_.x, 1f, ps_r0_.w);
    ps_r0_.w = dot(global.ps_uniforms_vec4_[4].xyz, ps_v3_.xyz);
    ps_r0_.w = (-(abs(ps_r0_.w)) + 1.2f);
    ps_r0_.w = (ps_r0_.w * ps_r0_.w);
    ps_r0_.w = clamp((ps_r0_.w * ps_r0_.w), 0f, 1f);
    ps_r2_.x = mix(ps_r1_.y, 1f, ps_r0_.w);
    ps_r0_.w = ((ps_r2_.x * 0.3f) + 0.7f);
    let _e845 = (ps_r0_.www * ps_v0_.xyz);
    ps_r1_.y = _e845.x;
    ps_r1_.z = _e845.y;
    ps_r1_.w = _e845.z;
    let _e864 = ((ps_r0_.xyz * ps_r1_.yzw) + -(global.ps_uniforms_vec4_[2].xyz));
    ps_r0_.x = _e864.x;
    ps_r0_.y = _e864.y;
    ps_r0_.z = _e864.z;
    let _e882 = ((io_11_0_.xxx * ps_r0_.xyz) + global.ps_uniforms_vec4_[2].xyz);
    ps_oC0_.x = _e882.x;
    ps_oC0_.y = _e882.y;
    ps_oC0_.z = _e882.z;
    ps_oC0_.w = ps_r1_.x;
    return FragmentOutput(ps_oC0_);
}
