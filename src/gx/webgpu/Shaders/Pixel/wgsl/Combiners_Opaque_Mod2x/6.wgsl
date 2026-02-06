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
    var ps_oC0_: vec4<f32>;

    var local: f32;

    ps_r0_ = textureSample(ps_s0_tex, ps_s0_smp, ps_v1_.xy);
    ps_r1_ = textureSample(ps_s1_tex, ps_s1_smp, ps_v2_.xy);
    let _e46 = (ps_r0_.xyz * ps_r1_.xyz);
    ps_r0_.x = _e46.x;
    ps_r0_.y = _e46.y;
    ps_r0_.z = _e46.z;
    let _e59 = (ps_r0_.xyz + ps_r0_.xyz);
    ps_r0_.x = _e59.x;
    ps_r0_.y = _e59.y;
    ps_r0_.z = _e59.z;
    ps_oC0_.w = (dot(ps_v0_.ww, ps_r1_.ww) + 0f);
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
                    let _e183 = ((io_5_4_.xy * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
                    ps_r1_.y = _e183.x;
                    ps_r1_.z = _e183.y;
                    let _e196 = (ps_r1_.yz + global.ps_uniforms_vec4_[5].xy);
                    ps_r2_.x = _e196.x;
                    ps_r2_.y = _e196.y;
                    let _e211 = (vec2<f32>(1f, 0f) * io_5_4_.zx);
                    ps_r2_.z = _e211.x;
                    ps_r2_.w = _e211.y;
                    ps_r2_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r2_.xy, ps_r2_.w);
                    ps_r1_.x = (ps_r1_.x + ps_r2_.x);
                    let _e235 = (ps_r1_.yz + global.ps_uniforms_vec4_[7].xy);
                    ps_r2_.x = _e235.x;
                    ps_r2_.y = _e235.y;
                    let _e250 = (vec2<f32>(1f, 0f) * io_5_4_.zx);
                    ps_r2_.z = _e250.x;
                    ps_r2_.w = _e250.y;
                    ps_r2_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r2_.xy, ps_r2_.w);
                    ps_r1_.x = (ps_r1_.x + ps_r2_.x);
                    let _e274 = (ps_r1_.yz + global.ps_uniforms_vec4_[9].xy);
                    ps_r2_.x = _e274.x;
                    ps_r2_.y = _e274.y;
                    let _e289 = (vec2<f32>(1f, 0f) * io_5_4_.zx);
                    ps_r2_.z = _e289.x;
                    ps_r2_.w = _e289.y;
                    ps_r2_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r2_.xy, ps_r2_.w);
                    ps_r1_.x = (ps_r1_.x + ps_r2_.x);
                    let _e313 = (ps_r1_.yz + global.ps_uniforms_vec4_[11].xy);
                    ps_r2_.x = _e313.x;
                    ps_r2_.y = _e313.y;
                    let _e328 = (vec2<f32>(1f, 0f) * io_5_4_.zx);
                    ps_r2_.z = _e328.x;
                    ps_r2_.w = _e328.y;
                    ps_r2_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r2_.xy, ps_r2_.w);
                    ps_r1_.x = (ps_r1_.x + ps_r2_.x);
                    ps_r1_.x = ((ps_r1_.x * 0.2f) + -1f);
                    ps_r1_.x = ((ps_r0_.w * ps_r1_.x) + 1f);
                }
            } else {
                {
                    ps_r2_ = ((io_5_4_.xyzx * vec4<f32>(0.5f, 0.5f, 1f, 0f)) + vec4<f32>(0.5f, 0.5f, 0f, 0f));
                    ps_r2_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r2_.xy, ps_r2_.w);
                    let _e409 = ((io_5_4_.xy * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
                    ps_r1_.y = _e409.x;
                    ps_r1_.z = _e409.y;
                    let _e422 = (ps_r1_.yz + global.ps_uniforms_vec4_[5].xy);
                    ps_r3_.x = _e422.x;
                    ps_r3_.y = _e422.y;
                    let _e437 = (vec2<f32>(1f, 0f) * io_5_4_.zx);
                    ps_r3_.z = _e437.x;
                    ps_r3_.w = _e437.y;
                    ps_r3_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r3_.xy, ps_r3_.w);
                    ps_r1_.w = (ps_r2_.x + ps_r3_.x);
                    let _e461 = (ps_r1_.yz + global.ps_uniforms_vec4_[6].xy);
                    ps_r2_.x = _e461.x;
                    ps_r2_.y = _e461.y;
                    let _e476 = (vec2<f32>(1f, 0f) * io_5_4_.zx);
                    ps_r2_.z = _e476.x;
                    ps_r2_.w = _e476.y;
                    ps_r2_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r2_.xy, ps_r2_.w);
                    ps_r1_.w = (ps_r1_.w + ps_r2_.x);
                    let _e500 = (ps_r1_.yz + global.ps_uniforms_vec4_[7].xy);
                    ps_r2_.x = _e500.x;
                    ps_r2_.y = _e500.y;
                    let _e515 = (vec2<f32>(1f, 0f) * io_5_4_.zx);
                    ps_r2_.z = _e515.x;
                    ps_r2_.w = _e515.y;
                    ps_r2_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r2_.xy, ps_r2_.w);
                    ps_r1_.w = (ps_r1_.w + ps_r2_.x);
                    let _e539 = (ps_r1_.yz + global.ps_uniforms_vec4_[8].xy);
                    ps_r2_.x = _e539.x;
                    ps_r2_.y = _e539.y;
                    let _e554 = (vec2<f32>(1f, 0f) * io_5_4_.zx);
                    ps_r2_.z = _e554.x;
                    ps_r2_.w = _e554.y;
                    ps_r2_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r2_.xy, ps_r2_.w);
                    ps_r1_.w = (ps_r1_.w + ps_r2_.x);
                    let _e578 = (ps_r1_.yz + global.ps_uniforms_vec4_[9].xy);
                    ps_r2_.x = _e578.x;
                    ps_r2_.y = _e578.y;
                    let _e593 = (vec2<f32>(1f, 0f) * io_5_4_.zx);
                    ps_r2_.z = _e593.x;
                    ps_r2_.w = _e593.y;
                    ps_r2_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r2_.xy, ps_r2_.w);
                    ps_r1_.w = (ps_r1_.w + ps_r2_.x);
                    let _e617 = (ps_r1_.yz + global.ps_uniforms_vec4_[10].xy);
                    ps_r2_.x = _e617.x;
                    ps_r2_.y = _e617.y;
                    let _e632 = (vec2<f32>(1f, 0f) * io_5_4_.zx);
                    ps_r2_.z = _e632.x;
                    ps_r2_.w = _e632.y;
                    ps_r2_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r2_.xy, ps_r2_.w);
                    ps_r1_.w = (ps_r1_.w + ps_r2_.x);
                    let _e656 = (ps_r1_.yz + global.ps_uniforms_vec4_[11].xy);
                    ps_r2_.x = _e656.x;
                    ps_r2_.y = _e656.y;
                    let _e671 = (vec2<f32>(1f, 0f) * io_5_4_.zx);
                    ps_r2_.z = _e671.x;
                    ps_r2_.w = _e671.y;
                    ps_r2_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r2_.xy, ps_r2_.w);
                    ps_r1_.w = (ps_r1_.w + ps_r2_.x);
                    let _e695 = (ps_r1_.yz + global.ps_uniforms_vec4_[12].xy);
                    ps_r2_.x = _e695.x;
                    ps_r2_.y = _e695.y;
                    let _e710 = (vec2<f32>(1f, 0f) * io_5_4_.zx);
                    ps_r2_.z = _e710.x;
                    ps_r2_.w = _e710.y;
                    ps_r2_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r2_.xy, ps_r2_.w);
                    ps_r1_.y = (ps_r1_.w + ps_r2_.x);
                    ps_r1_.y = ((ps_r1_.y * 0.11111111f) + -1f);
                    ps_r1_.x = ((ps_r0_.w * ps_r1_.y) + 1f);
                }
            }
        }
    } else {
        {
            ps_r1_.x = 1f;
        }
    }
    ps_r0_.w = dot(ps_v3_.xyz, global.ps_uniforms_vec4_[3].xyz);
    ps_r0_.w = clamp((ps_r0_.w + global.ps_uniforms_vec4_[3].w), 0f, 1f);
    ps_r2_.x = mix(ps_r1_.x, 1f, ps_r0_.w);
    ps_r0_.w = max(abs(io_5_5_.x), abs(io_5_5_.y));
    if (ps_r0_.w < 1f) {
        {
            ps_r1_ = ((io_5_5_.xyzx * vec4<f32>(0.5f, 0.5f, 1f, 0f)) + vec4<f32>(0.5f, 0.5f, 0f, 0f));
            ps_r1_ = textureSampleLevel(ps_s5_tex, ps_s5_smp, ps_r1_.xy, ps_r1_.w);
            let _e843 = ((io_5_5_.xy * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
            ps_r1_.y = _e843.x;
            ps_r1_.z = _e843.y;
            let _e856 = (ps_r1_.yz + global.ps_uniforms_vec4_[5].xy);
            ps_r3_.x = _e856.x;
            ps_r3_.y = _e856.y;
            let _e871 = (vec2<f32>(1f, 0f) * io_5_5_.zx);
            ps_r3_.z = _e871.x;
            ps_r3_.w = _e871.y;
            ps_r3_ = textureSampleLevel(ps_s5_tex, ps_s5_smp, ps_r3_.xy, ps_r3_.w);
            ps_r0_.w = (ps_r1_.x + ps_r3_.x);
            let _e895 = (ps_r1_.yz + global.ps_uniforms_vec4_[7].xy);
            ps_r3_.x = _e895.x;
            ps_r3_.y = _e895.y;
            let _e910 = (vec2<f32>(1f, 0f) * io_5_5_.zx);
            ps_r3_.z = _e910.x;
            ps_r3_.w = _e910.y;
            ps_r3_ = textureSampleLevel(ps_s5_tex, ps_s5_smp, ps_r3_.xy, ps_r3_.w);
            ps_r0_.w = (ps_r0_.w + ps_r3_.x);
            let _e934 = (ps_r1_.yz + global.ps_uniforms_vec4_[9].xy);
            ps_r3_.x = _e934.x;
            ps_r3_.y = _e934.y;
            let _e949 = (vec2<f32>(1f, 0f) * io_5_5_.zx);
            ps_r3_.z = _e949.x;
            ps_r3_.w = _e949.y;
            ps_r3_ = textureSampleLevel(ps_s5_tex, ps_s5_smp, ps_r3_.xy, ps_r3_.w);
            ps_r0_.w = (ps_r0_.w + ps_r3_.x);
            let _e973 = (ps_r1_.yz + global.ps_uniforms_vec4_[11].xy);
            ps_r1_.x = _e973.x;
            ps_r1_.y = _e973.y;
            let _e988 = (vec2<f32>(1f, 0f) * io_5_5_.zx);
            ps_r1_.z = _e988.x;
            ps_r1_.w = _e988.y;
            ps_r1_ = textureSampleLevel(ps_s5_tex, ps_s5_smp, ps_r1_.xy, ps_r1_.w);
            ps_r0_.w = (ps_r0_.w + ps_r1_.x);
            ps_r0_.w = (ps_r0_.w * 0.2f);
        }
    } else {
        {
            ps_r1_.x = max(abs(io_5_6_.x), abs(io_5_6_.y));
            if (ps_r1_.x < 1f) {
                {
                    ps_r1_ = ((io_5_6_.xyzx * vec4<f32>(0.5f, 0.5f, 1f, 0f)) + vec4<f32>(0.5f, 0.5f, 0f, 0f));
                    ps_r1_ = textureSampleLevel(ps_s6_tex, ps_s6_smp, ps_r1_.xy, ps_r1_.w);
                    let _e1067 = ((io_5_6_.xy * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
                    ps_r1_.y = _e1067.x;
                    ps_r1_.z = _e1067.y;
                    let _e1080 = (ps_r1_.yz + global.ps_uniforms_vec4_[5].xy);
                    ps_r3_.x = _e1080.x;
                    ps_r3_.y = _e1080.y;
                    let _e1095 = (vec2<f32>(1f, 0f) * io_5_6_.zx);
                    ps_r3_.z = _e1095.x;
                    ps_r3_.w = _e1095.y;
                    ps_r3_ = textureSampleLevel(ps_s6_tex, ps_s6_smp, ps_r3_.xy, ps_r3_.w);
                    ps_r1_.x = (ps_r1_.x + ps_r3_.x);
                    let _e1119 = (ps_r1_.yz + global.ps_uniforms_vec4_[7].xy);
                    ps_r3_.x = _e1119.x;
                    ps_r3_.y = _e1119.y;
                    let _e1134 = (vec2<f32>(1f, 0f) * io_5_6_.zx);
                    ps_r3_.z = _e1134.x;
                    ps_r3_.w = _e1134.y;
                    ps_r3_ = textureSampleLevel(ps_s6_tex, ps_s6_smp, ps_r3_.xy, ps_r3_.w);
                    ps_r1_.x = (ps_r1_.x + ps_r3_.x);
                    let _e1158 = (ps_r1_.yz + global.ps_uniforms_vec4_[9].xy);
                    ps_r3_.x = _e1158.x;
                    ps_r3_.y = _e1158.y;
                    let _e1173 = (vec2<f32>(1f, 0f) * io_5_6_.zx);
                    ps_r3_.z = _e1173.x;
                    ps_r3_.w = _e1173.y;
                    ps_r3_ = textureSampleLevel(ps_s6_tex, ps_s6_smp, ps_r3_.xy, ps_r3_.w);
                    ps_r1_.x = (ps_r1_.x + ps_r3_.x);
                    let _e1197 = (ps_r1_.yz + global.ps_uniforms_vec4_[11].xy);
                    ps_r3_.x = _e1197.x;
                    ps_r3_.y = _e1197.y;
                    let _e1212 = (vec2<f32>(1f, 0f) * io_5_6_.zx);
                    ps_r3_.z = _e1212.x;
                    ps_r3_.w = _e1212.y;
                    ps_r3_ = textureSampleLevel(ps_s6_tex, ps_s6_smp, ps_r3_.xy, ps_r3_.w);
                    ps_r1_.x = (ps_r1_.x + ps_r3_.x);
                    ps_r0_.w = (ps_r1_.x * 0.2f);
                }
            } else {
                {
                    let _e1254 = ((io_5_4_.ww * vec2<f32>(0.5f, 0f)) + vec2<f32>(0.5f, 0f));
                    ps_r1_.x = _e1254.x;
                    ps_r1_.w = _e1254.y;
                    ps_r1_.y = ((io_5_5_.w * 0.5f) + 0.5f);
                    ps_r1_.z = io_5_6_.w;
                    ps_r3_ = textureSampleLevel(ps_s7_tex, ps_s7_smp, ps_r1_.xy, ps_r1_.w);
                    let _e1290 = (ps_r1_.xy + global.ps_uniforms_vec4_[5].xy);
                    ps_r4_.x = _e1290.x;
                    ps_r4_.y = _e1290.y;
                    let _e1298 = ps_r1_.zw;
                    ps_r4_.z = _e1298.x;
                    ps_r4_.w = _e1298.y;
                    ps_r5_ = textureSampleLevel(ps_s7_tex, ps_s7_smp, ps_r4_.xy, ps_r4_.w);
                    ps_r1_.z = (ps_r3_.x + ps_r5_.x);
                    let _e1322 = (ps_r1_.xy + global.ps_uniforms_vec4_[7].xy);
                    ps_r4_.x = _e1322.x;
                    ps_r4_.y = _e1322.y;
                    ps_r3_ = textureSampleLevel(ps_s7_tex, ps_s7_smp, ps_r4_.xy, ps_r4_.w);
                    ps_r1_.z = (ps_r1_.z + ps_r3_.x);
                    let _e1346 = (ps_r1_.xy + global.ps_uniforms_vec4_[9].xy);
                    ps_r4_.x = _e1346.x;
                    ps_r4_.y = _e1346.y;
                    ps_r3_ = textureSampleLevel(ps_s7_tex, ps_s7_smp, ps_r4_.xy, ps_r4_.w);
                    ps_r1_.z = (ps_r1_.z + ps_r3_.x);
                    let _e1370 = (ps_r1_.xy + global.ps_uniforms_vec4_[11].xy);
                    ps_r4_.x = _e1370.x;
                    ps_r4_.y = _e1370.y;
                    ps_r3_ = textureSampleLevel(ps_s7_tex, ps_s7_smp, ps_r4_.xy, ps_r4_.w);
                    ps_r1_.x = (ps_r1_.z + ps_r3_.x);
                    ps_r1_.y = io_5_4_.w;
                    ps_r1_.z = io_5_5_.w;
                    ps_r2_.y = max(abs(ps_r1_.y), abs(ps_r1_.z));
                    ps_r1_.y = clamp(((ps_r2_.y * -11.111111f) + 11f), 0f, 1f);
                    ps_r1_.x = ((ps_r1_.x * 0.2f) + -1f);
                    ps_r0_.w = ((ps_r1_.y * ps_r1_.x) + 1f);
                }
            }
        }
    }
    ps_r1_.x = min(ps_r0_.w, ps_r2_.x);
    ps_r0_.w = dot(global.ps_uniforms_vec4_[4].xyz, ps_v4_.xyz);
    ps_r0_.w = (-(abs(ps_r0_.w)) + 1.2f);
    ps_r0_.w = (ps_r0_.w * ps_r0_.w);
    ps_r0_.w = clamp((ps_r0_.w * ps_r0_.w), 0f, 1f);
    ps_r2_.x = mix(ps_r1_.x, 1f, ps_r0_.w);
    ps_r0_.w = ((ps_r2_.x * 0.3f) + 0.7f);
    let _e1517 = (ps_r0_.www * ps_v0_.xyz);
    ps_r1_.x = _e1517.x;
    ps_r1_.y = _e1517.y;
    ps_r1_.z = _e1517.z;
    let _e1536 = ((ps_r0_.xyz * ps_r1_.xyz) + -(global.ps_uniforms_vec4_[2].xyz));
    ps_r0_.x = _e1536.x;
    ps_r0_.y = _e1536.y;
    ps_r0_.z = _e1536.z;
    let _e1554 = ((io_11_0_.xxx * ps_r0_.xyz) + global.ps_uniforms_vec4_[2].xyz);
    ps_oC0_.x = _e1554.x;
    ps_oC0_.y = _e1554.y;
    ps_oC0_.z = _e1554.z;
    return FragmentOutput(ps_oC0_);
}
