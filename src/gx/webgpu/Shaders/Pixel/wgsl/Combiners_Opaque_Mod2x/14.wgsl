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
                    let _e202 = ((io_5_4_.xy * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
                    ps_r1_.y = _e202.x;
                    ps_r1_.z = _e202.y;
                    let _e215 = (ps_r1_.yz + global.ps_uniforms_vec4_[5].xy);
                    ps_r3_.x = _e215.x;
                    ps_r3_.y = _e215.y;
                    let _e230 = (vec2<f32>(1f, 0f) * io_5_4_.zx);
                    ps_r3_.z = _e230.x;
                    ps_r3_.w = _e230.y;
                    ps_r3_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r3_.xy, ps_r3_.w);
                    ps_r1_.w = (ps_r2_.x + ps_r3_.x);
                    let _e254 = (ps_r1_.yz + global.ps_uniforms_vec4_[7].xy);
                    ps_r2_.x = _e254.x;
                    ps_r2_.y = _e254.y;
                    let _e269 = (vec2<f32>(1f, 0f) * io_5_4_.zx);
                    ps_r2_.z = _e269.x;
                    ps_r2_.w = _e269.y;
                    ps_r2_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r2_.xy, ps_r2_.w);
                    ps_r1_.w = (ps_r1_.w + ps_r2_.x);
                    let _e293 = (ps_r1_.yz + global.ps_uniforms_vec4_[9].xy);
                    ps_r2_.x = _e293.x;
                    ps_r2_.y = _e293.y;
                    let _e308 = (vec2<f32>(1f, 0f) * io_5_4_.zx);
                    ps_r2_.z = _e308.x;
                    ps_r2_.w = _e308.y;
                    ps_r2_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r2_.xy, ps_r2_.w);
                    ps_r1_.w = (ps_r1_.w + ps_r2_.x);
                    let _e332 = (ps_r1_.yz + global.ps_uniforms_vec4_[11].xy);
                    ps_r2_.x = _e332.x;
                    ps_r2_.y = _e332.y;
                    let _e347 = (vec2<f32>(1f, 0f) * io_5_4_.zx);
                    ps_r2_.z = _e347.x;
                    ps_r2_.w = _e347.y;
                    ps_r2_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r2_.xy, ps_r2_.w);
                    ps_r1_.y = (ps_r1_.w + ps_r2_.x);
                    ps_r1_.y = ((ps_r1_.y * 0.2f) + -1f);
                    ps_r1_.y = ((ps_r1_.x * ps_r1_.y) + 1f);
                }
            } else {
                {
                    ps_r2_ = ((io_5_4_.xyzx * vec4<f32>(0.5f, 0.5f, 1f, 0f)) + vec4<f32>(0.5f, 0.5f, 0f, 0f));
                    ps_r2_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r2_.xy, ps_r2_.w);
                    let _e428 = ((io_5_4_.xy * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
                    ps_r1_.z = _e428.x;
                    ps_r1_.w = _e428.y;
                    let _e441 = (ps_r1_.zw + global.ps_uniforms_vec4_[5].xy);
                    ps_r3_.x = _e441.x;
                    ps_r3_.y = _e441.y;
                    let _e456 = (vec2<f32>(1f, 0f) * io_5_4_.zx);
                    ps_r3_.z = _e456.x;
                    ps_r3_.w = _e456.y;
                    ps_r3_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r3_.xy, ps_r3_.w);
                    ps_r2_.x = (ps_r2_.x + ps_r3_.x);
                    let _e480 = (ps_r1_.zw + global.ps_uniforms_vec4_[6].xy);
                    ps_r3_.x = _e480.x;
                    ps_r3_.y = _e480.y;
                    let _e495 = (vec2<f32>(1f, 0f) * io_5_4_.zx);
                    ps_r3_.z = _e495.x;
                    ps_r3_.w = _e495.y;
                    ps_r3_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r3_.xy, ps_r3_.w);
                    ps_r2_.x = (ps_r2_.x + ps_r3_.x);
                    let _e519 = (ps_r1_.zw + global.ps_uniforms_vec4_[7].xy);
                    ps_r3_.x = _e519.x;
                    ps_r3_.y = _e519.y;
                    let _e534 = (vec2<f32>(1f, 0f) * io_5_4_.zx);
                    ps_r3_.z = _e534.x;
                    ps_r3_.w = _e534.y;
                    ps_r3_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r3_.xy, ps_r3_.w);
                    ps_r2_.x = (ps_r2_.x + ps_r3_.x);
                    let _e558 = (ps_r1_.zw + global.ps_uniforms_vec4_[8].xy);
                    ps_r3_.x = _e558.x;
                    ps_r3_.y = _e558.y;
                    let _e573 = (vec2<f32>(1f, 0f) * io_5_4_.zx);
                    ps_r3_.z = _e573.x;
                    ps_r3_.w = _e573.y;
                    ps_r3_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r3_.xy, ps_r3_.w);
                    ps_r2_.x = (ps_r2_.x + ps_r3_.x);
                    let _e597 = (ps_r1_.zw + global.ps_uniforms_vec4_[9].xy);
                    ps_r3_.x = _e597.x;
                    ps_r3_.y = _e597.y;
                    let _e612 = (vec2<f32>(1f, 0f) * io_5_4_.zx);
                    ps_r3_.z = _e612.x;
                    ps_r3_.w = _e612.y;
                    ps_r3_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r3_.xy, ps_r3_.w);
                    ps_r2_.x = (ps_r2_.x + ps_r3_.x);
                    let _e636 = (ps_r1_.zw + global.ps_uniforms_vec4_[10].xy);
                    ps_r3_.x = _e636.x;
                    ps_r3_.y = _e636.y;
                    let _e651 = (vec2<f32>(1f, 0f) * io_5_4_.zx);
                    ps_r3_.z = _e651.x;
                    ps_r3_.w = _e651.y;
                    ps_r3_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r3_.xy, ps_r3_.w);
                    ps_r2_.x = (ps_r2_.x + ps_r3_.x);
                    let _e675 = (ps_r1_.zw + global.ps_uniforms_vec4_[11].xy);
                    ps_r3_.x = _e675.x;
                    ps_r3_.y = _e675.y;
                    let _e690 = (vec2<f32>(1f, 0f) * io_5_4_.zx);
                    ps_r3_.z = _e690.x;
                    ps_r3_.w = _e690.y;
                    ps_r3_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r3_.xy, ps_r3_.w);
                    ps_r2_.x = (ps_r2_.x + ps_r3_.x);
                    let _e714 = (ps_r1_.zw + global.ps_uniforms_vec4_[12].xy);
                    ps_r3_.x = _e714.x;
                    ps_r3_.y = _e714.y;
                    let _e729 = (vec2<f32>(1f, 0f) * io_5_4_.zx);
                    ps_r3_.z = _e729.x;
                    ps_r3_.w = _e729.y;
                    ps_r3_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r3_.xy, ps_r3_.w);
                    ps_r1_.z = (ps_r2_.x + ps_r3_.x);
                    ps_r1_.z = ((ps_r1_.z * 0.11111111f) + -1f);
                    ps_r1_.y = ((ps_r1_.x * ps_r1_.z) + 1f);
                }
            }
        }
    } else {
        {
            ps_r1_.y = 1f;
        }
    }
    ps_r1_.x = dot(ps_v3_.xyz, global.ps_uniforms_vec4_[3].xyz);
    ps_r1_.x = clamp((ps_r1_.x + global.ps_uniforms_vec4_[3].w), 0f, 1f);
    ps_r2_.x = mix(ps_r1_.y, 1f, ps_r1_.x);
    ps_r1_.x = max(abs(io_5_5_.x), abs(io_5_5_.y));
    if (ps_r1_.x < 1f) {
        {
            ps_r1_ = ((io_5_5_.xyzx * vec4<f32>(0.5f, 0.5f, 1f, 0f)) + vec4<f32>(0.5f, 0.5f, 0f, 0f));
            ps_r1_ = textureSampleLevel(ps_s5_tex, ps_s5_smp, ps_r1_.xy, ps_r1_.w);
            let _e862 = ((io_5_5_.xy * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
            ps_r1_.y = _e862.x;
            ps_r1_.z = _e862.y;
            let _e875 = (ps_r1_.yz + global.ps_uniforms_vec4_[5].xy);
            ps_r3_.x = _e875.x;
            ps_r3_.y = _e875.y;
            let _e890 = (vec2<f32>(1f, 0f) * io_5_5_.zx);
            ps_r3_.z = _e890.x;
            ps_r3_.w = _e890.y;
            ps_r3_ = textureSampleLevel(ps_s5_tex, ps_s5_smp, ps_r3_.xy, ps_r3_.w);
            ps_r1_.x = (ps_r1_.x + ps_r3_.x);
            let _e914 = (ps_r1_.yz + global.ps_uniforms_vec4_[7].xy);
            ps_r3_.x = _e914.x;
            ps_r3_.y = _e914.y;
            let _e929 = (vec2<f32>(1f, 0f) * io_5_5_.zx);
            ps_r3_.z = _e929.x;
            ps_r3_.w = _e929.y;
            ps_r3_ = textureSampleLevel(ps_s5_tex, ps_s5_smp, ps_r3_.xy, ps_r3_.w);
            ps_r1_.x = (ps_r1_.x + ps_r3_.x);
            let _e953 = (ps_r1_.yz + global.ps_uniforms_vec4_[9].xy);
            ps_r3_.x = _e953.x;
            ps_r3_.y = _e953.y;
            let _e968 = (vec2<f32>(1f, 0f) * io_5_5_.zx);
            ps_r3_.z = _e968.x;
            ps_r3_.w = _e968.y;
            ps_r3_ = textureSampleLevel(ps_s5_tex, ps_s5_smp, ps_r3_.xy, ps_r3_.w);
            ps_r1_.x = (ps_r1_.x + ps_r3_.x);
            let _e992 = (ps_r1_.yz + global.ps_uniforms_vec4_[11].xy);
            ps_r3_.x = _e992.x;
            ps_r3_.y = _e992.y;
            let _e1007 = (vec2<f32>(1f, 0f) * io_5_5_.zx);
            ps_r3_.z = _e1007.x;
            ps_r3_.w = _e1007.y;
            ps_r3_ = textureSampleLevel(ps_s5_tex, ps_s5_smp, ps_r3_.xy, ps_r3_.w);
            ps_r1_.x = (ps_r1_.x + ps_r3_.x);
            ps_r1_.x = (ps_r1_.x * 0.2f);
        }
    } else {
        {
            ps_r1_.y = max(abs(io_5_6_.x), abs(io_5_6_.y));
            if (ps_r1_.y < 1f) {
                {
                    ps_r3_ = ((io_5_6_.xyzx * vec4<f32>(0.5f, 0.5f, 1f, 0f)) + vec4<f32>(0.5f, 0.5f, 0f, 0f));
                    ps_r3_ = textureSampleLevel(ps_s6_tex, ps_s6_smp, ps_r3_.xy, ps_r3_.w);
                    let _e1086 = ((io_5_6_.xy * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
                    ps_r1_.y = _e1086.x;
                    ps_r1_.z = _e1086.y;
                    let _e1099 = (ps_r1_.yz + global.ps_uniforms_vec4_[5].xy);
                    ps_r4_.x = _e1099.x;
                    ps_r4_.y = _e1099.y;
                    let _e1114 = (vec2<f32>(1f, 0f) * io_5_6_.zx);
                    ps_r4_.z = _e1114.x;
                    ps_r4_.w = _e1114.y;
                    ps_r4_ = textureSampleLevel(ps_s6_tex, ps_s6_smp, ps_r4_.xy, ps_r4_.w);
                    ps_r1_.w = (ps_r3_.x + ps_r4_.x);
                    let _e1138 = (ps_r1_.yz + global.ps_uniforms_vec4_[7].xy);
                    ps_r3_.x = _e1138.x;
                    ps_r3_.y = _e1138.y;
                    let _e1153 = (vec2<f32>(1f, 0f) * io_5_6_.zx);
                    ps_r3_.z = _e1153.x;
                    ps_r3_.w = _e1153.y;
                    ps_r3_ = textureSampleLevel(ps_s6_tex, ps_s6_smp, ps_r3_.xy, ps_r3_.w);
                    ps_r1_.w = (ps_r1_.w + ps_r3_.x);
                    let _e1177 = (ps_r1_.yz + global.ps_uniforms_vec4_[9].xy);
                    ps_r3_.x = _e1177.x;
                    ps_r3_.y = _e1177.y;
                    let _e1192 = (vec2<f32>(1f, 0f) * io_5_6_.zx);
                    ps_r3_.z = _e1192.x;
                    ps_r3_.w = _e1192.y;
                    ps_r3_ = textureSampleLevel(ps_s6_tex, ps_s6_smp, ps_r3_.xy, ps_r3_.w);
                    ps_r1_.w = (ps_r1_.w + ps_r3_.x);
                    let _e1216 = (ps_r1_.yz + global.ps_uniforms_vec4_[11].xy);
                    ps_r3_.x = _e1216.x;
                    ps_r3_.y = _e1216.y;
                    let _e1231 = (vec2<f32>(1f, 0f) * io_5_6_.zx);
                    ps_r3_.z = _e1231.x;
                    ps_r3_.w = _e1231.y;
                    ps_r3_ = textureSampleLevel(ps_s6_tex, ps_s6_smp, ps_r3_.xy, ps_r3_.w);
                    ps_r1_.y = (ps_r1_.w + ps_r3_.x);
                    ps_r1_.x = (ps_r1_.y * 0.2f);
                }
            } else {
                {
                    let _e1273 = ((io_5_4_.ww * vec2<f32>(0.5f, 0f)) + vec2<f32>(0.5f, 0f));
                    ps_r3_.x = _e1273.x;
                    ps_r3_.w = _e1273.y;
                    ps_r3_.y = ((io_5_5_.w * 0.5f) + 0.5f);
                    ps_r3_.z = io_5_6_.w;
                    ps_r4_ = textureSampleLevel(ps_s7_tex, ps_s7_smp, ps_r3_.xy, ps_r3_.w);
                    let _e1309 = (ps_r3_.xy + global.ps_uniforms_vec4_[5].xy);
                    ps_r5_.x = _e1309.x;
                    ps_r5_.y = _e1309.y;
                    let _e1317 = ps_r3_.zw;
                    ps_r5_.z = _e1317.x;
                    ps_r5_.w = _e1317.y;
                    ps_r6_ = textureSampleLevel(ps_s7_tex, ps_s7_smp, ps_r5_.xy, ps_r5_.w);
                    ps_r1_.y = (ps_r4_.x + ps_r6_.x);
                    let _e1341 = (ps_r3_.xy + global.ps_uniforms_vec4_[7].xy);
                    ps_r5_.x = _e1341.x;
                    ps_r5_.y = _e1341.y;
                    ps_r4_ = textureSampleLevel(ps_s7_tex, ps_s7_smp, ps_r5_.xy, ps_r5_.w);
                    ps_r1_.y = (ps_r1_.y + ps_r4_.x);
                    let _e1365 = (ps_r3_.xy + global.ps_uniforms_vec4_[9].xy);
                    ps_r5_.x = _e1365.x;
                    ps_r5_.y = _e1365.y;
                    ps_r4_ = textureSampleLevel(ps_s7_tex, ps_s7_smp, ps_r5_.xy, ps_r5_.w);
                    ps_r1_.y = (ps_r1_.y + ps_r4_.x);
                    let _e1389 = (ps_r3_.xy + global.ps_uniforms_vec4_[11].xy);
                    ps_r5_.x = _e1389.x;
                    ps_r5_.y = _e1389.y;
                    ps_r3_ = textureSampleLevel(ps_s7_tex, ps_s7_smp, ps_r5_.xy, ps_r5_.w);
                    ps_r1_.y = (ps_r1_.y + ps_r3_.x);
                    ps_r1_.z = io_5_4_.w;
                    ps_r1_.w = io_5_5_.w;
                    ps_r2_.y = max(abs(ps_r1_.z), abs(ps_r1_.w));
                    ps_r1_.z = clamp(((ps_r2_.y * -11.111111f) + 11f), 0f, 1f);
                    ps_r1_.y = ((ps_r1_.y * 0.2f) + -1f);
                    ps_r1_.x = ((ps_r1_.z * ps_r1_.y) + 1f);
                }
            }
        }
    }
    ps_r3_.x = min(ps_r1_.x, ps_r2_.x);
    ps_r1_.x = dot(global.ps_uniforms_vec4_[4].xyz, ps_v4_.xyz);
    ps_r1_.x = (-(abs(ps_r1_.x)) + 1.2f);
    ps_r1_.x = (ps_r1_.x * ps_r1_.x);
    ps_r1_.x = clamp((ps_r1_.x * ps_r1_.x), 0f, 1f);
    ps_r2_.x = mix(ps_r3_.x, 1f, ps_r1_.x);
    ps_r1_.x = ((ps_r2_.x * 0.3f) + 0.7f);
    let _e1536 = (ps_r1_.xxx * ps_v0_.xyz);
    ps_r1_.x = _e1536.x;
    ps_r1_.y = _e1536.y;
    ps_r1_.z = _e1536.z;
    let _e1555 = ((ps_r0_.xyz * ps_r1_.xyz) + -(global.ps_uniforms_vec4_[2].xyz));
    ps_r0_.x = _e1555.x;
    ps_r0_.y = _e1555.y;
    ps_r0_.z = _e1555.z;
    let _e1573 = ((io_11_0_.xxx * ps_r0_.xyz) + global.ps_uniforms_vec4_[2].xyz);
    ps_oC0_.x = _e1573.x;
    ps_oC0_.y = _e1573.y;
    ps_oC0_.z = _e1573.z;
    ps_oC0_.w = ps_r0_.w;
    return FragmentOutput(ps_oC0_);
}
