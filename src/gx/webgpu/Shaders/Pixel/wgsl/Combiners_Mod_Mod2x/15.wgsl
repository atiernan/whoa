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
    let _e60 = (ps_r0_.xyz + ps_r0_.xyz);
    ps_r0_.x = _e60.x;
    ps_r0_.y = _e60.y;
    ps_r0_.z = _e60.z;
    ps_r0_.w = (ps_r0_.w * ps_v0_.w);
    ps_r1_.x = (dot(ps_r0_.ww, ps_r1_.ww) + 0f);
    ps_r2_ = vec4((dot(ps_r0_.ww, ps_r1_.ww) + -(global.ps_uniforms_vec4_[2].w)));
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
                    let _e199 = ((io_5_4_.xy * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
                    ps_r1_.y = _e199.x;
                    ps_r1_.z = _e199.y;
                    let _e212 = (ps_r1_.yz + global.ps_uniforms_vec4_[5].xy);
                    ps_r3_.x = _e212.x;
                    ps_r3_.y = _e212.y;
                    let _e227 = (vec2<f32>(1f, 0f) * io_5_4_.zx);
                    ps_r3_.z = _e227.x;
                    ps_r3_.w = _e227.y;
                    ps_r3_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r3_.xy, ps_r3_.w);
                    ps_r0_.w = (ps_r2_.x + ps_r3_.x);
                    let _e251 = (ps_r1_.yz + global.ps_uniforms_vec4_[7].xy);
                    ps_r2_.x = _e251.x;
                    ps_r2_.y = _e251.y;
                    let _e266 = (vec2<f32>(1f, 0f) * io_5_4_.zx);
                    ps_r2_.z = _e266.x;
                    ps_r2_.w = _e266.y;
                    ps_r2_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r2_.xy, ps_r2_.w);
                    ps_r0_.w = (ps_r0_.w + ps_r2_.x);
                    let _e290 = (ps_r1_.yz + global.ps_uniforms_vec4_[9].xy);
                    ps_r2_.x = _e290.x;
                    ps_r2_.y = _e290.y;
                    let _e305 = (vec2<f32>(1f, 0f) * io_5_4_.zx);
                    ps_r2_.z = _e305.x;
                    ps_r2_.w = _e305.y;
                    ps_r2_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r2_.xy, ps_r2_.w);
                    ps_r0_.w = (ps_r0_.w + ps_r2_.x);
                    let _e329 = (ps_r1_.yz + global.ps_uniforms_vec4_[11].xy);
                    ps_r2_.x = _e329.x;
                    ps_r2_.y = _e329.y;
                    let _e344 = (vec2<f32>(1f, 0f) * io_5_4_.zx);
                    ps_r2_.z = _e344.x;
                    ps_r2_.w = _e344.y;
                    ps_r2_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r2_.xy, ps_r2_.w);
                    ps_r0_.w = (ps_r0_.w + ps_r2_.x);
                    ps_r0_.w = (ps_r0_.w * 0.2f);
                }
            } else {
                {
                    ps_r2_ = ((io_5_4_.xyzx * vec4<f32>(0.5f, 0.5f, 1f, 0f)) + vec4<f32>(0.5f, 0.5f, 0f, 0f));
                    ps_r2_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r2_.xy, ps_r2_.w);
                    let _e407 = ((io_5_4_.xy * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
                    ps_r1_.y = _e407.x;
                    ps_r1_.z = _e407.y;
                    let _e420 = (ps_r1_.yz + global.ps_uniforms_vec4_[5].xy);
                    ps_r3_.x = _e420.x;
                    ps_r3_.y = _e420.y;
                    let _e435 = (vec2<f32>(1f, 0f) * io_5_4_.zx);
                    ps_r3_.z = _e435.x;
                    ps_r3_.w = _e435.y;
                    ps_r3_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r3_.xy, ps_r3_.w);
                    ps_r1_.w = (ps_r2_.x + ps_r3_.x);
                    let _e459 = (ps_r1_.yz + global.ps_uniforms_vec4_[7].xy);
                    ps_r2_.x = _e459.x;
                    ps_r2_.y = _e459.y;
                    let _e474 = (vec2<f32>(1f, 0f) * io_5_4_.zx);
                    ps_r2_.z = _e474.x;
                    ps_r2_.w = _e474.y;
                    ps_r2_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r2_.xy, ps_r2_.w);
                    ps_r1_.w = (ps_r1_.w + ps_r2_.x);
                    let _e498 = (ps_r1_.yz + global.ps_uniforms_vec4_[9].xy);
                    ps_r2_.x = _e498.x;
                    ps_r2_.y = _e498.y;
                    let _e513 = (vec2<f32>(1f, 0f) * io_5_4_.zx);
                    ps_r2_.z = _e513.x;
                    ps_r2_.w = _e513.y;
                    ps_r2_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r2_.xy, ps_r2_.w);
                    ps_r1_.w = (ps_r1_.w + ps_r2_.x);
                    let _e537 = (ps_r1_.yz + global.ps_uniforms_vec4_[11].xy);
                    ps_r2_.x = _e537.x;
                    ps_r2_.y = _e537.y;
                    let _e552 = (vec2<f32>(1f, 0f) * io_5_4_.zx);
                    ps_r2_.z = _e552.x;
                    ps_r2_.w = _e552.y;
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
            let _e667 = ((io_5_5_.xy * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
            ps_r1_.y = _e667.x;
            ps_r1_.z = _e667.y;
            let _e680 = (ps_r1_.yz + global.ps_uniforms_vec4_[5].xy);
            ps_r4_.x = _e680.x;
            ps_r4_.y = _e680.y;
            let _e695 = (vec2<f32>(1f, 0f) * io_5_5_.zx);
            ps_r4_.z = _e695.x;
            ps_r4_.w = _e695.y;
            ps_r4_ = textureSampleLevel(ps_s5_tex, ps_s5_smp, ps_r4_.xy, ps_r4_.w);
            ps_r0_.w = (ps_r3_.x + ps_r4_.x);
            let _e719 = (ps_r1_.yz + global.ps_uniforms_vec4_[7].xy);
            ps_r3_.x = _e719.x;
            ps_r3_.y = _e719.y;
            let _e734 = (vec2<f32>(1f, 0f) * io_5_5_.zx);
            ps_r3_.z = _e734.x;
            ps_r3_.w = _e734.y;
            ps_r3_ = textureSampleLevel(ps_s5_tex, ps_s5_smp, ps_r3_.xy, ps_r3_.w);
            ps_r0_.w = (ps_r0_.w + ps_r3_.x);
            let _e758 = (ps_r1_.yz + global.ps_uniforms_vec4_[9].xy);
            ps_r3_.x = _e758.x;
            ps_r3_.y = _e758.y;
            let _e773 = (vec2<f32>(1f, 0f) * io_5_5_.zx);
            ps_r3_.z = _e773.x;
            ps_r3_.w = _e773.y;
            ps_r3_ = textureSampleLevel(ps_s5_tex, ps_s5_smp, ps_r3_.xy, ps_r3_.w);
            ps_r0_.w = (ps_r0_.w + ps_r3_.x);
            let _e797 = (ps_r1_.yz + global.ps_uniforms_vec4_[11].xy);
            ps_r3_.x = _e797.x;
            ps_r3_.y = _e797.y;
            let _e812 = (vec2<f32>(1f, 0f) * io_5_5_.zx);
            ps_r3_.z = _e812.x;
            ps_r3_.w = _e812.y;
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
                    let _e891 = ((io_5_6_.xy * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
                    ps_r1_.y = _e891.x;
                    ps_r1_.z = _e891.y;
                    let _e904 = (ps_r1_.yz + global.ps_uniforms_vec4_[5].xy);
                    ps_r4_.x = _e904.x;
                    ps_r4_.y = _e904.y;
                    let _e919 = (vec2<f32>(1f, 0f) * io_5_6_.zx);
                    ps_r4_.z = _e919.x;
                    ps_r4_.w = _e919.y;
                    ps_r4_ = textureSampleLevel(ps_s6_tex, ps_s6_smp, ps_r4_.xy, ps_r4_.w);
                    ps_r1_.w = (ps_r3_.x + ps_r4_.x);
                    let _e943 = (ps_r1_.yz + global.ps_uniforms_vec4_[7].xy);
                    ps_r3_.x = _e943.x;
                    ps_r3_.y = _e943.y;
                    let _e958 = (vec2<f32>(1f, 0f) * io_5_6_.zx);
                    ps_r3_.z = _e958.x;
                    ps_r3_.w = _e958.y;
                    ps_r3_ = textureSampleLevel(ps_s6_tex, ps_s6_smp, ps_r3_.xy, ps_r3_.w);
                    ps_r1_.w = (ps_r1_.w + ps_r3_.x);
                    let _e982 = (ps_r1_.yz + global.ps_uniforms_vec4_[9].xy);
                    ps_r3_.x = _e982.x;
                    ps_r3_.y = _e982.y;
                    let _e997 = (vec2<f32>(1f, 0f) * io_5_6_.zx);
                    ps_r3_.z = _e997.x;
                    ps_r3_.w = _e997.y;
                    ps_r3_ = textureSampleLevel(ps_s6_tex, ps_s6_smp, ps_r3_.xy, ps_r3_.w);
                    ps_r1_.w = (ps_r1_.w + ps_r3_.x);
                    let _e1021 = (ps_r1_.yz + global.ps_uniforms_vec4_[11].xy);
                    ps_r3_.x = _e1021.x;
                    ps_r3_.y = _e1021.y;
                    let _e1036 = (vec2<f32>(1f, 0f) * io_5_6_.zx);
                    ps_r3_.z = _e1036.x;
                    ps_r3_.w = _e1036.y;
                    ps_r3_ = textureSampleLevel(ps_s6_tex, ps_s6_smp, ps_r3_.xy, ps_r3_.w);
                    ps_r1_.y = (ps_r1_.w + ps_r3_.x);
                    ps_r0_.w = (ps_r1_.y * 0.2f);
                }
            } else {
                {
                    let _e1078 = ((io_5_4_.ww * vec2<f32>(0.5f, 0f)) + vec2<f32>(0.5f, 0f));
                    ps_r3_.x = _e1078.x;
                    ps_r3_.w = _e1078.y;
                    ps_r3_.y = ((io_5_5_.w * 0.5f) + 0.5f);
                    ps_r3_.z = io_5_6_.w;
                    ps_r4_ = textureSampleLevel(ps_s7_tex, ps_s7_smp, ps_r3_.xy, ps_r3_.w);
                    let _e1114 = (ps_r3_.xy + global.ps_uniforms_vec4_[5].xy);
                    ps_r5_.x = _e1114.x;
                    ps_r5_.y = _e1114.y;
                    let _e1122 = ps_r3_.zw;
                    ps_r5_.z = _e1122.x;
                    ps_r5_.w = _e1122.y;
                    ps_r6_ = textureSampleLevel(ps_s7_tex, ps_s7_smp, ps_r5_.xy, ps_r5_.w);
                    ps_r1_.y = (ps_r4_.x + ps_r6_.x);
                    let _e1146 = (ps_r3_.xy + global.ps_uniforms_vec4_[7].xy);
                    ps_r5_.x = _e1146.x;
                    ps_r5_.y = _e1146.y;
                    ps_r4_ = textureSampleLevel(ps_s7_tex, ps_s7_smp, ps_r5_.xy, ps_r5_.w);
                    ps_r1_.y = (ps_r1_.y + ps_r4_.x);
                    let _e1170 = (ps_r3_.xy + global.ps_uniforms_vec4_[9].xy);
                    ps_r5_.x = _e1170.x;
                    ps_r5_.y = _e1170.y;
                    ps_r4_ = textureSampleLevel(ps_s7_tex, ps_s7_smp, ps_r5_.xy, ps_r5_.w);
                    ps_r1_.y = (ps_r1_.y + ps_r4_.x);
                    let _e1194 = (ps_r3_.xy + global.ps_uniforms_vec4_[11].xy);
                    ps_r5_.x = _e1194.x;
                    ps_r5_.y = _e1194.y;
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
    let _e1341 = (ps_r0_.www * ps_v0_.xyz);
    ps_r1_.y = _e1341.x;
    ps_r1_.z = _e1341.y;
    ps_r1_.w = _e1341.z;
    let _e1360 = ((ps_r0_.xyz * ps_r1_.yzw) + -(global.ps_uniforms_vec4_[2].xyz));
    ps_r0_.x = _e1360.x;
    ps_r0_.y = _e1360.y;
    ps_r0_.z = _e1360.z;
    let _e1378 = ((io_11_0_.xxx * ps_r0_.xyz) + global.ps_uniforms_vec4_[2].xyz);
    ps_oC0_.x = _e1378.x;
    ps_oC0_.y = _e1378.y;
    ps_oC0_.z = _e1378.z;
    ps_oC0_.w = ps_r1_.x;
    return FragmentOutput(ps_oC0_);
}
