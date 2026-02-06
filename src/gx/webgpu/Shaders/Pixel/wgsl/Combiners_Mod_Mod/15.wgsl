struct UniformBlock_1_ {
    ps_uniforms_vec4_: array<vec4<f32>, 12>,
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
@group(1) @binding(10) var ps_s5_smp: sampler;
@group(1) @binding(11) var ps_s5_tex: texture_2d<f32>;
@group(1) @binding(12) var ps_s6_smp: sampler;
@group(1) @binding(13) var ps_s6_tex: texture_2d<f32>;
@group(1) @binding(14) var ps_s7_smp: sampler;
@group(1) @binding(15) var ps_s7_tex: texture_2d<f32>;

@fragment fn main(@location(0) ps_v0_: vec4<f32>, @location(1) ps_v1_: vec4<f32>, @location(2) ps_v2_: vec4<f32>, @location(3) ps_v3_: vec4<f32>, @location(4) ps_v4_: vec4<f32>, @location(5) io_5_4_: vec4<f32>, @location(6) io_5_5_: vec4<f32>, @location(7) io_5_6_: vec4<f32>, @location(10) io_11_0_: vec4<f32>) -> FragmentOutput {
    var ps_r0_: vec4<f32>;
    var ps_r1_: vec4<f32>;
    var ps_r2_: vec4<f32>;
    var ps_r3_: vec4<f32>;
    var ps_r4_: vec4<f32>;
    var ps_r5_: vec4<f32>;
    var ps_r6_: vec4<f32>;
    var ps_oC0_: vec4<f32>;

    var local: f32;

    ps_r0_ = textureSample(ps_s0_tex, ps_s0_smp, ps_v1_.xy);
    ps_r1_ = textureSample(ps_s1_tex, ps_s1_smp, ps_v2_.xy);
    let _e47 = (ps_r0_.xyz * ps_r1_.xyz);
    ps_r0_.x = _e47.x;
    ps_r0_.y = _e47.y;
    ps_r0_.z = _e47.z;
    ps_r0_.w = (ps_r0_.w * ps_v0_.w);
    ps_r1_.x = (ps_r1_.w * ps_r0_.w);
    ps_r2_ = ((ps_r0_.wwww * ps_r1_.wwww) + -(global.ps_uniforms_vec4_[2].wwww));
    if any((ps_r2_.xyz < vec3(0f))) {
        discard;
    }
    ps_r0_.w = max(abs(io_5_4_.x), abs(io_5_4_.y));
    ps_r0_.w = clamp(((ps_r0_.w * -3.4482758f) + 3.413793f), 0f, 1f);
    if (-(ps_r0_.w) >= 0f) {
        local = 0f;
    } else {
        local = 1f;
    }
    ps_r0_.w = local;
    if (ps_r0_.w != -(ps_r0_.w)) {
        {
            if (10f < ps_v3_.z) {
                {
                    ps_r2_ = ((io_5_4_.xyzx * vec4<f32>(0.5f, 0.5f, 1f, 0f)) + vec4<f32>(0.5f, 0.5f, 0f, 0f));
                    ps_r2_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r2_.xy, ps_r2_.w);
                    let _e179 = ((io_5_4_.xy * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
                    ps_r1_.y = _e179.x;
                    ps_r1_.z = _e179.y;
                    let _e192 = (ps_r1_.yz + global.ps_uniforms_vec4_[5].xy);
                    ps_r3_.x = _e192.x;
                    ps_r3_.y = _e192.y;
                    let _e207 = (vec2<f32>(1f, 0f) * io_5_4_.zx);
                    ps_r3_.z = _e207.x;
                    ps_r3_.w = _e207.y;
                    ps_r3_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r3_.xy, ps_r3_.w);
                    ps_r0_.w = (ps_r2_.x + ps_r3_.x);
                    let _e231 = (ps_r1_.yz + global.ps_uniforms_vec4_[7].xy);
                    ps_r2_.x = _e231.x;
                    ps_r2_.y = _e231.y;
                    let _e246 = (vec2<f32>(1f, 0f) * io_5_4_.zx);
                    ps_r2_.z = _e246.x;
                    ps_r2_.w = _e246.y;
                    ps_r2_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r2_.xy, ps_r2_.w);
                    ps_r0_.w = (ps_r0_.w + ps_r2_.x);
                    let _e270 = (ps_r1_.yz + global.ps_uniforms_vec4_[9].xy);
                    ps_r2_.x = _e270.x;
                    ps_r2_.y = _e270.y;
                    let _e285 = (vec2<f32>(1f, 0f) * io_5_4_.zx);
                    ps_r2_.z = _e285.x;
                    ps_r2_.w = _e285.y;
                    ps_r2_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r2_.xy, ps_r2_.w);
                    ps_r0_.w = (ps_r0_.w + ps_r2_.x);
                    let _e309 = (ps_r1_.yz + global.ps_uniforms_vec4_[11].xy);
                    ps_r2_.x = _e309.x;
                    ps_r2_.y = _e309.y;
                    let _e324 = (vec2<f32>(1f, 0f) * io_5_4_.zx);
                    ps_r2_.z = _e324.x;
                    ps_r2_.w = _e324.y;
                    ps_r2_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r2_.xy, ps_r2_.w);
                    ps_r0_.w = (ps_r0_.w + ps_r2_.x);
                    ps_r0_.w = (ps_r0_.w * 0.2f);
                }
            } else {
                {
                    ps_r2_ = ((io_5_4_.xyzx * vec4<f32>(0.5f, 0.5f, 1f, 0f)) + vec4<f32>(0.5f, 0.5f, 0f, 0f));
                    ps_r2_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r2_.xy, ps_r2_.w);
                    let _e387 = ((io_5_4_.xy * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
                    ps_r1_.y = _e387.x;
                    ps_r1_.z = _e387.y;
                    let _e400 = (ps_r1_.yz + global.ps_uniforms_vec4_[5].xy);
                    ps_r3_.x = _e400.x;
                    ps_r3_.y = _e400.y;
                    let _e415 = (vec2<f32>(1f, 0f) * io_5_4_.zx);
                    ps_r3_.z = _e415.x;
                    ps_r3_.w = _e415.y;
                    ps_r3_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r3_.xy, ps_r3_.w);
                    ps_r1_.w = (ps_r2_.x + ps_r3_.x);
                    let _e439 = (ps_r1_.yz + global.ps_uniforms_vec4_[7].xy);
                    ps_r2_.x = _e439.x;
                    ps_r2_.y = _e439.y;
                    let _e454 = (vec2<f32>(1f, 0f) * io_5_4_.zx);
                    ps_r2_.z = _e454.x;
                    ps_r2_.w = _e454.y;
                    ps_r2_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r2_.xy, ps_r2_.w);
                    ps_r1_.w = (ps_r1_.w + ps_r2_.x);
                    let _e478 = (ps_r1_.yz + global.ps_uniforms_vec4_[9].xy);
                    ps_r2_.x = _e478.x;
                    ps_r2_.y = _e478.y;
                    let _e493 = (vec2<f32>(1f, 0f) * io_5_4_.zx);
                    ps_r2_.z = _e493.x;
                    ps_r2_.w = _e493.y;
                    ps_r2_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r2_.xy, ps_r2_.w);
                    ps_r1_.w = (ps_r1_.w + ps_r2_.x);
                    let _e517 = (ps_r1_.yz + global.ps_uniforms_vec4_[11].xy);
                    ps_r2_.x = _e517.x;
                    ps_r2_.y = _e517.y;
                    let _e532 = (vec2<f32>(1f, 0f) * io_5_4_.zx);
                    ps_r2_.z = _e532.x;
                    ps_r2_.w = _e532.y;
                    ps_r2_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r2_.xy, ps_r2_.w);
                    ps_r1_.y = (ps_r1_.w + ps_r2_.x);
                    ps_r0_.w = (ps_r1_.y * 0.2f);
                }
            }
        }
    } else {
        {
            ps_r0_.w = 1f;
        }
    }
    ps_r1_.y = dot(ps_v3_.xyz, global.ps_uniforms_vec4_[3].xyz);
    ps_r1_.y = clamp((ps_r1_.y + global.ps_uniforms_vec4_[3].w), 0f, 1f);
    ps_r2_.x = mix(ps_r0_.w, 1f, ps_r1_.y);
    ps_r0_.w = max(abs(io_5_5_.x), abs(io_5_5_.y));
    if (ps_r0_.w < 1f) {
        {
            ps_r3_ = ((io_5_5_.xyzx * vec4<f32>(0.5f, 0.5f, 1f, 0f)) + vec4<f32>(0.5f, 0.5f, 0f, 0f));
            ps_r3_ = textureSampleLevel(ps_s5_tex, ps_s5_smp, ps_r3_.xy, ps_r3_.w);
            let _e647 = ((io_5_5_.xy * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
            ps_r1_.y = _e647.x;
            ps_r1_.z = _e647.y;
            let _e660 = (ps_r1_.yz + global.ps_uniforms_vec4_[5].xy);
            ps_r4_.x = _e660.x;
            ps_r4_.y = _e660.y;
            let _e675 = (vec2<f32>(1f, 0f) * io_5_5_.zx);
            ps_r4_.z = _e675.x;
            ps_r4_.w = _e675.y;
            ps_r4_ = textureSampleLevel(ps_s5_tex, ps_s5_smp, ps_r4_.xy, ps_r4_.w);
            ps_r0_.w = (ps_r3_.x + ps_r4_.x);
            let _e699 = (ps_r1_.yz + global.ps_uniforms_vec4_[7].xy);
            ps_r3_.x = _e699.x;
            ps_r3_.y = _e699.y;
            let _e714 = (vec2<f32>(1f, 0f) * io_5_5_.zx);
            ps_r3_.z = _e714.x;
            ps_r3_.w = _e714.y;
            ps_r3_ = textureSampleLevel(ps_s5_tex, ps_s5_smp, ps_r3_.xy, ps_r3_.w);
            ps_r0_.w = (ps_r0_.w + ps_r3_.x);
            let _e738 = (ps_r1_.yz + global.ps_uniforms_vec4_[9].xy);
            ps_r3_.x = _e738.x;
            ps_r3_.y = _e738.y;
            let _e753 = (vec2<f32>(1f, 0f) * io_5_5_.zx);
            ps_r3_.z = _e753.x;
            ps_r3_.w = _e753.y;
            ps_r3_ = textureSampleLevel(ps_s5_tex, ps_s5_smp, ps_r3_.xy, ps_r3_.w);
            ps_r0_.w = (ps_r0_.w + ps_r3_.x);
            let _e777 = (ps_r1_.yz + global.ps_uniforms_vec4_[11].xy);
            ps_r3_.x = _e777.x;
            ps_r3_.y = _e777.y;
            let _e792 = (vec2<f32>(1f, 0f) * io_5_5_.zx);
            ps_r3_.z = _e792.x;
            ps_r3_.w = _e792.y;
            ps_r3_ = textureSampleLevel(ps_s5_tex, ps_s5_smp, ps_r3_.xy, ps_r3_.w);
            ps_r0_.w = (ps_r0_.w + ps_r3_.x);
            ps_r0_.w = (ps_r0_.w * 0.2f);
        }
    } else {
        {
            ps_r1_.y = max(abs(io_5_6_.x), abs(io_5_6_.y));
            if (ps_r1_.y < 1f) {
                {
                    ps_r3_ = ((io_5_6_.xyzx * vec4<f32>(0.5f, 0.5f, 1f, 0f)) + vec4<f32>(0.5f, 0.5f, 0f, 0f));
                    ps_r3_ = textureSampleLevel(ps_s6_tex, ps_s6_smp, ps_r3_.xy, ps_r3_.w);
                    let _e871 = ((io_5_6_.xy * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
                    ps_r1_.y = _e871.x;
                    ps_r1_.z = _e871.y;
                    let _e884 = (ps_r1_.yz + global.ps_uniforms_vec4_[5].xy);
                    ps_r4_.x = _e884.x;
                    ps_r4_.y = _e884.y;
                    let _e899 = (vec2<f32>(1f, 0f) * io_5_6_.zx);
                    ps_r4_.z = _e899.x;
                    ps_r4_.w = _e899.y;
                    ps_r4_ = textureSampleLevel(ps_s6_tex, ps_s6_smp, ps_r4_.xy, ps_r4_.w);
                    ps_r1_.w = (ps_r3_.x + ps_r4_.x);
                    let _e923 = (ps_r1_.yz + global.ps_uniforms_vec4_[7].xy);
                    ps_r3_.x = _e923.x;
                    ps_r3_.y = _e923.y;
                    let _e938 = (vec2<f32>(1f, 0f) * io_5_6_.zx);
                    ps_r3_.z = _e938.x;
                    ps_r3_.w = _e938.y;
                    ps_r3_ = textureSampleLevel(ps_s6_tex, ps_s6_smp, ps_r3_.xy, ps_r3_.w);
                    ps_r1_.w = (ps_r1_.w + ps_r3_.x);
                    let _e962 = (ps_r1_.yz + global.ps_uniforms_vec4_[9].xy);
                    ps_r3_.x = _e962.x;
                    ps_r3_.y = _e962.y;
                    let _e977 = (vec2<f32>(1f, 0f) * io_5_6_.zx);
                    ps_r3_.z = _e977.x;
                    ps_r3_.w = _e977.y;
                    ps_r3_ = textureSampleLevel(ps_s6_tex, ps_s6_smp, ps_r3_.xy, ps_r3_.w);
                    ps_r1_.w = (ps_r1_.w + ps_r3_.x);
                    let _e1001 = (ps_r1_.yz + global.ps_uniforms_vec4_[11].xy);
                    ps_r3_.x = _e1001.x;
                    ps_r3_.y = _e1001.y;
                    let _e1016 = (vec2<f32>(1f, 0f) * io_5_6_.zx);
                    ps_r3_.z = _e1016.x;
                    ps_r3_.w = _e1016.y;
                    ps_r3_ = textureSampleLevel(ps_s6_tex, ps_s6_smp, ps_r3_.xy, ps_r3_.w);
                    ps_r1_.y = (ps_r1_.w + ps_r3_.x);
                    ps_r0_.w = (ps_r1_.y * 0.2f);
                }
            } else {
                {
                    let _e1058 = ((io_5_4_.ww * vec2<f32>(0.5f, 0f)) + vec2<f32>(0.5f, 0f));
                    ps_r3_.x = _e1058.x;
                    ps_r3_.w = _e1058.y;
                    ps_r3_.y = ((io_5_5_.w * 0.5f) + 0.5f);
                    ps_r3_.z = io_5_6_.w;
                    ps_r4_ = textureSampleLevel(ps_s7_tex, ps_s7_smp, ps_r3_.xy, ps_r3_.w);
                    let _e1094 = (ps_r3_.xy + global.ps_uniforms_vec4_[5].xy);
                    ps_r5_.x = _e1094.x;
                    ps_r5_.y = _e1094.y;
                    let _e1102 = ps_r3_.zw;
                    ps_r5_.z = _e1102.x;
                    ps_r5_.w = _e1102.y;
                    ps_r6_ = textureSampleLevel(ps_s7_tex, ps_s7_smp, ps_r5_.xy, ps_r5_.w);
                    ps_r1_.y = (ps_r4_.x + ps_r6_.x);
                    let _e1126 = (ps_r3_.xy + global.ps_uniforms_vec4_[7].xy);
                    ps_r5_.x = _e1126.x;
                    ps_r5_.y = _e1126.y;
                    ps_r4_ = textureSampleLevel(ps_s7_tex, ps_s7_smp, ps_r5_.xy, ps_r5_.w);
                    ps_r1_.y = (ps_r1_.y + ps_r4_.x);
                    let _e1150 = (ps_r3_.xy + global.ps_uniforms_vec4_[9].xy);
                    ps_r5_.x = _e1150.x;
                    ps_r5_.y = _e1150.y;
                    ps_r4_ = textureSampleLevel(ps_s7_tex, ps_s7_smp, ps_r5_.xy, ps_r5_.w);
                    ps_r1_.y = (ps_r1_.y + ps_r4_.x);
                    let _e1174 = (ps_r3_.xy + global.ps_uniforms_vec4_[11].xy);
                    ps_r5_.x = _e1174.x;
                    ps_r5_.y = _e1174.y;
                    ps_r3_ = textureSampleLevel(ps_s7_tex, ps_s7_smp, ps_r5_.xy, ps_r5_.w);
                    ps_r1_.y = (ps_r1_.y + ps_r3_.x);
                    ps_r1_.z = io_5_4_.w;
                    ps_r1_.w = io_5_5_.w;
                    ps_r2_.y = max(abs(ps_r1_.z), abs(ps_r1_.w));
                    ps_r1_.z = clamp(((ps_r2_.y * -11.111111f) + 11f), 0f, 1f);
                    ps_r1_.y = ((ps_r1_.y * 0.2f) + -1f);
                    ps_r0_.w = ((ps_r1_.z * ps_r1_.y) + 1f);
                }
            }
        }
    }
    ps_r1_.y = min(ps_r0_.w, ps_r2_.x);
    ps_r0_.w = dot(global.ps_uniforms_vec4_[4].xyz, ps_v4_.xyz);
    ps_r0_.w = (-(abs(ps_r0_.w)) + 1.2f);
    ps_r0_.w = (ps_r0_.w * ps_r0_.w);
    ps_r0_.w = clamp((ps_r0_.w * ps_r0_.w), 0f, 1f);
    ps_r2_.x = mix(ps_r1_.y, 1f, ps_r0_.w);
    ps_r0_.w = ((ps_r2_.x * 0.3f) + 0.7f);
    let _e1321 = (ps_r0_.www * ps_v0_.xyz);
    ps_r1_.y = _e1321.x;
    ps_r1_.z = _e1321.y;
    ps_r1_.w = _e1321.z;
    let _e1340 = ((ps_r0_.xyz * ps_r1_.yzw) + -(global.ps_uniforms_vec4_[2].xyz));
    ps_r0_.x = _e1340.x;
    ps_r0_.y = _e1340.y;
    ps_r0_.z = _e1340.z;
    let _e1358 = ((io_11_0_.xxx * ps_r0_.xyz) + global.ps_uniforms_vec4_[2].xyz);
    ps_oC0_.x = _e1358.x;
    ps_oC0_.y = _e1358.y;
    ps_oC0_.z = _e1358.z;
    ps_oC0_.w = ps_r1_.x;
    return FragmentOutput(ps_oC0_);
}
