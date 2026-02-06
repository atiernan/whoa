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
    var ps_oC0_: vec4<f32>;

    var local: f32;

    ps_r0_ = textureSample(ps_s0_tex, ps_s0_smp, ps_v1_.xy);
    ps_r0_.w = max(abs(ps_v4_.x), abs(ps_v4_.y));
    ps_r0_.w = clamp(((ps_r0_.w * -3.4482758f) + 3.413793f), 0f, 1f);
    ps_r1_.x = (-(ps_r0_.w) + 0.01f);
    if (ps_r1_.x >= 0f) {
        local = 0f;
    } else {
        local = 1f;
    }
    ps_r1_.x = local;
    if (ps_r1_.x != -(ps_r1_.x)) {
        {
            if (10f < ps_v2_.z) {
                {
                    ps_r1_ = ((ps_v4_.xyzx * vec4<f32>(0.5f, 0.5f, 1f, 0f)) + vec4<f32>(0.5f, 0.5f, 0f, 0f));
                    ps_r1_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r1_.xy, ps_r1_.w);
                    let _e129 = ((ps_v4_.xy * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
                    ps_r1_.y = _e129.x;
                    ps_r1_.z = _e129.y;
                    let _e142 = (ps_r1_.yz + global.ps_uniforms_vec4_[5].xy);
                    ps_r2_.x = _e142.x;
                    ps_r2_.y = _e142.y;
                    let _e157 = (vec2<f32>(1f, 0f) * ps_v4_.zx);
                    ps_r2_.z = _e157.x;
                    ps_r2_.w = _e157.y;
                    ps_r2_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r2_.xy, ps_r2_.w);
                    ps_r1_.x = (ps_r1_.x + ps_r2_.x);
                    let _e181 = (ps_r1_.yz + global.ps_uniforms_vec4_[7].xy);
                    ps_r2_.x = _e181.x;
                    ps_r2_.y = _e181.y;
                    let _e196 = (vec2<f32>(1f, 0f) * ps_v4_.zx);
                    ps_r2_.z = _e196.x;
                    ps_r2_.w = _e196.y;
                    ps_r2_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r2_.xy, ps_r2_.w);
                    ps_r1_.x = (ps_r1_.x + ps_r2_.x);
                    let _e220 = (ps_r1_.yz + global.ps_uniforms_vec4_[9].xy);
                    ps_r2_.x = _e220.x;
                    ps_r2_.y = _e220.y;
                    let _e235 = (vec2<f32>(1f, 0f) * ps_v4_.zx);
                    ps_r2_.z = _e235.x;
                    ps_r2_.w = _e235.y;
                    ps_r2_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r2_.xy, ps_r2_.w);
                    ps_r1_.x = (ps_r1_.x + ps_r2_.x);
                    let _e259 = (ps_r1_.yz + global.ps_uniforms_vec4_[11].xy);
                    ps_r2_.x = _e259.x;
                    ps_r2_.y = _e259.y;
                    let _e274 = (vec2<f32>(1f, 0f) * ps_v4_.zx);
                    ps_r2_.z = _e274.x;
                    ps_r2_.w = _e274.y;
                    ps_r2_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r2_.xy, ps_r2_.w);
                    ps_r1_.x = (ps_r1_.x + ps_r2_.x);
                    ps_r1_.x = ((ps_r1_.x * 0.2f) + -1f);
                    ps_r1_.x = ((ps_r0_.w * ps_r1_.x) + 1f);
                    ps_r2_.x = min(ps_r1_.x, 1f);
                }
            } else {
                {
                    ps_r1_ = ((ps_v4_.xyzx * vec4<f32>(0.5f, 0.5f, 1f, 0f)) + vec4<f32>(0.5f, 0.5f, 0f, 0f));
                    ps_r1_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r1_.xy, ps_r1_.w);
                    let _e366 = ((ps_v4_.xy * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
                    ps_r1_.y = _e366.x;
                    ps_r1_.z = _e366.y;
                    let _e379 = (ps_r1_.yz + global.ps_uniforms_vec4_[5].xy);
                    ps_r3_.x = _e379.x;
                    ps_r3_.y = _e379.y;
                    let _e394 = (vec2<f32>(1f, 0f) * ps_v4_.zx);
                    ps_r3_.z = _e394.x;
                    ps_r3_.w = _e394.y;
                    ps_r3_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r3_.xy, ps_r3_.w);
                    ps_r1_.x = (ps_r1_.x + ps_r3_.x);
                    let _e418 = (ps_r1_.yz + global.ps_uniforms_vec4_[6].xy);
                    ps_r3_.x = _e418.x;
                    ps_r3_.y = _e418.y;
                    let _e433 = (vec2<f32>(1f, 0f) * ps_v4_.zx);
                    ps_r3_.z = _e433.x;
                    ps_r3_.w = _e433.y;
                    ps_r3_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r3_.xy, ps_r3_.w);
                    ps_r1_.x = (ps_r1_.x + ps_r3_.x);
                    let _e457 = (ps_r1_.yz + global.ps_uniforms_vec4_[7].xy);
                    ps_r3_.x = _e457.x;
                    ps_r3_.y = _e457.y;
                    let _e472 = (vec2<f32>(1f, 0f) * ps_v4_.zx);
                    ps_r3_.z = _e472.x;
                    ps_r3_.w = _e472.y;
                    ps_r3_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r3_.xy, ps_r3_.w);
                    ps_r1_.x = (ps_r1_.x + ps_r3_.x);
                    let _e496 = (ps_r1_.yz + global.ps_uniforms_vec4_[8].xy);
                    ps_r3_.x = _e496.x;
                    ps_r3_.y = _e496.y;
                    let _e511 = (vec2<f32>(1f, 0f) * ps_v4_.zx);
                    ps_r3_.z = _e511.x;
                    ps_r3_.w = _e511.y;
                    ps_r3_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r3_.xy, ps_r3_.w);
                    ps_r1_.x = (ps_r1_.x + ps_r3_.x);
                    let _e535 = (ps_r1_.yz + global.ps_uniforms_vec4_[9].xy);
                    ps_r3_.x = _e535.x;
                    ps_r3_.y = _e535.y;
                    let _e550 = (vec2<f32>(1f, 0f) * ps_v4_.zx);
                    ps_r3_.z = _e550.x;
                    ps_r3_.w = _e550.y;
                    ps_r3_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r3_.xy, ps_r3_.w);
                    ps_r1_.x = (ps_r1_.x + ps_r3_.x);
                    let _e574 = (ps_r1_.yz + global.ps_uniforms_vec4_[10].xy);
                    ps_r3_.x = _e574.x;
                    ps_r3_.y = _e574.y;
                    let _e589 = (vec2<f32>(1f, 0f) * ps_v4_.zx);
                    ps_r3_.z = _e589.x;
                    ps_r3_.w = _e589.y;
                    ps_r3_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r3_.xy, ps_r3_.w);
                    ps_r1_.x = (ps_r1_.x + ps_r3_.x);
                    let _e613 = (ps_r1_.yz + global.ps_uniforms_vec4_[11].xy);
                    ps_r3_.x = _e613.x;
                    ps_r3_.y = _e613.y;
                    let _e628 = (vec2<f32>(1f, 0f) * ps_v4_.zx);
                    ps_r3_.z = _e628.x;
                    ps_r3_.w = _e628.y;
                    ps_r3_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r3_.xy, ps_r3_.w);
                    ps_r1_.x = (ps_r1_.x + ps_r3_.x);
                    let _e652 = (ps_r1_.yz + global.ps_uniforms_vec4_[12].xy);
                    ps_r3_.x = _e652.x;
                    ps_r3_.y = _e652.y;
                    let _e667 = (vec2<f32>(1f, 0f) * ps_v4_.zx);
                    ps_r3_.z = _e667.x;
                    ps_r3_.w = _e667.y;
                    ps_r3_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r3_.xy, ps_r3_.w);
                    ps_r1_.x = (ps_r1_.x + ps_r3_.x);
                    ps_r1_.x = ((ps_r1_.x * 0.11111111f) + -1f);
                    ps_r0_.w = ((ps_r0_.w * ps_r1_.x) + 1f);
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
    ps_r1_.x = mix(ps_r2_.x, 1f, ps_r0_.w);
    ps_r0_.w = dot(global.ps_uniforms_vec4_[4].xyz, ps_v3_.xyz);
    ps_r0_.w = (-(abs(ps_r0_.w)) + 1.2f);
    ps_r0_.w = (ps_r0_.w * ps_r0_.w);
    ps_r0_.w = clamp((ps_r0_.w * ps_r0_.w), 0f, 1f);
    ps_r2_.x = mix(ps_r1_.x, 1f, ps_r0_.w);
    ps_r0_.w = ((ps_r2_.x * 0.3f) + 0.7f);
    let _e821 = (ps_r0_.www * ps_v0_.xyz);
    ps_r1_.x = _e821.x;
    ps_r1_.y = _e821.y;
    ps_r1_.z = _e821.z;
    let _e840 = ((ps_r0_.xyz * ps_r1_.xyz) + -(global.ps_uniforms_vec4_[2].xyz));
    ps_r0_.x = _e840.x;
    ps_r0_.y = _e840.y;
    ps_r0_.z = _e840.z;
    let _e858 = ((io_11_0_.xxx * ps_r0_.xyz) + global.ps_uniforms_vec4_[2].xyz);
    ps_oC0_.x = _e858.x;
    ps_oC0_.y = _e858.y;
    ps_oC0_.z = _e858.z;
    ps_oC0_.w = ps_v0_.w;
    return FragmentOutput(ps_oC0_);
}
