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
    var ps_oC0_: vec4<f32>;

    var local: f32;

    ps_r0_ = textureSample(ps_s0_tex, ps_s0_smp, ps_v1_.xy);
    ps_r1_ = textureSample(ps_s1_tex, ps_s1_smp, ps_v2_.xy);
    let _e36 = (ps_r0_.xyz * ps_r1_.xyz);
    ps_r0_.x = _e36.x;
    ps_r0_.y = _e36.y;
    ps_r0_.z = _e36.z;
    let _e49 = (ps_r0_.xyz + ps_r0_.xyz);
    ps_r0_.x = _e49.x;
    ps_r0_.y = _e49.y;
    ps_r0_.z = _e49.z;
    ps_r0_.w = (ps_r0_.w * ps_v0_.w);
    ps_oC0_.w = (dot(ps_r0_.ww, ps_r1_.ww) + 0f);
    ps_r0_.w = max(abs(io_5_4_.x), abs(io_5_4_.y));
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
            if (10f < ps_v3_.z) {
                {
                    ps_r1_ = ((io_5_4_.xyzx * vec4<f32>(0.5f, 0.5f, 1f, 0f)) + vec4<f32>(0.5f, 0.5f, 0f, 0f));
                    ps_r1_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r1_.xy, ps_r1_.w);
                    let _e179 = ((io_5_4_.xy * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
                    ps_r1_.y = _e179.x;
                    ps_r1_.z = _e179.y;
                    let _e192 = (ps_r1_.yz + global.ps_uniforms_vec4_[5].xy);
                    ps_r2_.x = _e192.x;
                    ps_r2_.y = _e192.y;
                    let _e207 = (vec2<f32>(1f, 0f) * io_5_4_.zx);
                    ps_r2_.z = _e207.x;
                    ps_r2_.w = _e207.y;
                    ps_r2_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r2_.xy, ps_r2_.w);
                    ps_r1_.x = (ps_r1_.x + ps_r2_.x);
                    let _e231 = (ps_r1_.yz + global.ps_uniforms_vec4_[7].xy);
                    ps_r2_.x = _e231.x;
                    ps_r2_.y = _e231.y;
                    let _e246 = (vec2<f32>(1f, 0f) * io_5_4_.zx);
                    ps_r2_.z = _e246.x;
                    ps_r2_.w = _e246.y;
                    ps_r2_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r2_.xy, ps_r2_.w);
                    ps_r1_.x = (ps_r1_.x + ps_r2_.x);
                    let _e270 = (ps_r1_.yz + global.ps_uniforms_vec4_[9].xy);
                    ps_r2_.x = _e270.x;
                    ps_r2_.y = _e270.y;
                    let _e285 = (vec2<f32>(1f, 0f) * io_5_4_.zx);
                    ps_r2_.z = _e285.x;
                    ps_r2_.w = _e285.y;
                    ps_r2_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r2_.xy, ps_r2_.w);
                    ps_r1_.x = (ps_r1_.x + ps_r2_.x);
                    let _e309 = (ps_r1_.yz + global.ps_uniforms_vec4_[11].xy);
                    ps_r2_.x = _e309.x;
                    ps_r2_.y = _e309.y;
                    let _e324 = (vec2<f32>(1f, 0f) * io_5_4_.zx);
                    ps_r2_.z = _e324.x;
                    ps_r2_.w = _e324.y;
                    ps_r2_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r2_.xy, ps_r2_.w);
                    ps_r1_.x = (ps_r1_.x + ps_r2_.x);
                    ps_r1_.x = ((ps_r1_.x * 0.2f) + -1f);
                    ps_r1_.x = ((ps_r0_.w * ps_r1_.x) + 1f);
                    ps_r2_.x = min(ps_r1_.x, 1f);
                }
            } else {
                {
                    ps_r1_ = ((io_5_4_.xyzx * vec4<f32>(0.5f, 0.5f, 1f, 0f)) + vec4<f32>(0.5f, 0.5f, 0f, 0f));
                    ps_r1_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r1_.xy, ps_r1_.w);
                    let _e414 = ((io_5_4_.xy * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
                    ps_r1_.y = _e414.x;
                    ps_r1_.z = _e414.y;
                    let _e427 = (ps_r1_.yz + global.ps_uniforms_vec4_[5].xy);
                    ps_r3_.x = _e427.x;
                    ps_r3_.y = _e427.y;
                    let _e442 = (vec2<f32>(1f, 0f) * io_5_4_.zx);
                    ps_r3_.z = _e442.x;
                    ps_r3_.w = _e442.y;
                    ps_r3_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r3_.xy, ps_r3_.w);
                    ps_r1_.x = (ps_r1_.x + ps_r3_.x);
                    let _e466 = (ps_r1_.yz + global.ps_uniforms_vec4_[6].xy);
                    ps_r3_.x = _e466.x;
                    ps_r3_.y = _e466.y;
                    let _e481 = (vec2<f32>(1f, 0f) * io_5_4_.zx);
                    ps_r3_.z = _e481.x;
                    ps_r3_.w = _e481.y;
                    ps_r3_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r3_.xy, ps_r3_.w);
                    ps_r1_.x = (ps_r1_.x + ps_r3_.x);
                    let _e505 = (ps_r1_.yz + global.ps_uniforms_vec4_[7].xy);
                    ps_r3_.x = _e505.x;
                    ps_r3_.y = _e505.y;
                    let _e520 = (vec2<f32>(1f, 0f) * io_5_4_.zx);
                    ps_r3_.z = _e520.x;
                    ps_r3_.w = _e520.y;
                    ps_r3_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r3_.xy, ps_r3_.w);
                    ps_r1_.x = (ps_r1_.x + ps_r3_.x);
                    let _e544 = (ps_r1_.yz + global.ps_uniforms_vec4_[8].xy);
                    ps_r3_.x = _e544.x;
                    ps_r3_.y = _e544.y;
                    let _e559 = (vec2<f32>(1f, 0f) * io_5_4_.zx);
                    ps_r3_.z = _e559.x;
                    ps_r3_.w = _e559.y;
                    ps_r3_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r3_.xy, ps_r3_.w);
                    ps_r1_.x = (ps_r1_.x + ps_r3_.x);
                    let _e583 = (ps_r1_.yz + global.ps_uniforms_vec4_[9].xy);
                    ps_r3_.x = _e583.x;
                    ps_r3_.y = _e583.y;
                    let _e598 = (vec2<f32>(1f, 0f) * io_5_4_.zx);
                    ps_r3_.z = _e598.x;
                    ps_r3_.w = _e598.y;
                    ps_r3_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r3_.xy, ps_r3_.w);
                    ps_r1_.x = (ps_r1_.x + ps_r3_.x);
                    let _e622 = (ps_r1_.yz + global.ps_uniforms_vec4_[10].xy);
                    ps_r3_.x = _e622.x;
                    ps_r3_.y = _e622.y;
                    let _e637 = (vec2<f32>(1f, 0f) * io_5_4_.zx);
                    ps_r3_.z = _e637.x;
                    ps_r3_.w = _e637.y;
                    ps_r3_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r3_.xy, ps_r3_.w);
                    ps_r1_.x = (ps_r1_.x + ps_r3_.x);
                    let _e661 = (ps_r1_.yz + global.ps_uniforms_vec4_[11].xy);
                    ps_r3_.x = _e661.x;
                    ps_r3_.y = _e661.y;
                    let _e676 = (vec2<f32>(1f, 0f) * io_5_4_.zx);
                    ps_r3_.z = _e676.x;
                    ps_r3_.w = _e676.y;
                    ps_r3_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r3_.xy, ps_r3_.w);
                    ps_r1_.x = (ps_r1_.x + ps_r3_.x);
                    let _e700 = (ps_r1_.yz + global.ps_uniforms_vec4_[12].xy);
                    ps_r3_.x = _e700.x;
                    ps_r3_.y = _e700.y;
                    let _e715 = (vec2<f32>(1f, 0f) * io_5_4_.zx);
                    ps_r3_.z = _e715.x;
                    ps_r3_.w = _e715.y;
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
    ps_r0_.w = dot(ps_v3_.xyz, global.ps_uniforms_vec4_[3].xyz);
    ps_r0_.w = clamp((ps_r0_.w + global.ps_uniforms_vec4_[3].w), 0f, 1f);
    ps_r1_.x = mix(ps_r2_.x, 1f, ps_r0_.w);
    ps_r0_.w = dot(global.ps_uniforms_vec4_[4].xyz, ps_v4_.xyz);
    ps_r0_.w = (-(abs(ps_r0_.w)) + 1.2f);
    ps_r0_.w = (ps_r0_.w * ps_r0_.w);
    ps_r0_.w = clamp((ps_r0_.w * ps_r0_.w), 0f, 1f);
    ps_r2_.x = mix(ps_r1_.x, 1f, ps_r0_.w);
    ps_r0_.w = ((ps_r2_.x * 0.3f) + 0.7f);
    let _e869 = (ps_r0_.www * ps_v0_.xyz);
    ps_r1_.x = _e869.x;
    ps_r1_.y = _e869.y;
    ps_r1_.z = _e869.z;
    let _e888 = ((ps_r0_.xyz * ps_r1_.xyz) + -(global.ps_uniforms_vec4_[2].xyz));
    ps_r0_.x = _e888.x;
    ps_r0_.y = _e888.y;
    ps_r0_.z = _e888.z;
    let _e906 = ((io_11_0_.xxx * ps_r0_.xyz) + global.ps_uniforms_vec4_[2].xyz);
    ps_oC0_.x = _e906.x;
    ps_oC0_.y = _e906.y;
    ps_oC0_.z = _e906.z;
    return FragmentOutput(ps_oC0_);
}
