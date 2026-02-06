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
@group(1) @binding(10) var ps_s5_smp: sampler;
@group(1) @binding(11) var ps_s5_tex: texture_2d<f32>;
@group(1) @binding(12) var ps_s6_smp: sampler;
@group(1) @binding(13) var ps_s6_tex: texture_2d<f32>;
@group(1) @binding(14) var ps_s7_smp: sampler;
@group(1) @binding(15) var ps_s7_tex: texture_2d<f32>;

@fragment fn main(@location(0) ps_v0_: vec4<f32>, @location(1) ps_v1_: vec4<f32>, @location(2) ps_v2_: vec4<f32>, @location(3) ps_v3_: vec4<f32>, @location(4) ps_v4_: vec4<f32>, @location(5) io_5_4_: vec4<f32>, @location(6) io_5_5_: vec4<f32>, @location(10) io_11_0_: vec4<f32>) -> FragmentOutput {
    var ps_r0_: vec4<f32>;
    var ps_r1_: vec4<f32>;
    var ps_r2_: vec4<f32>;
    var ps_r3_: vec4<f32>;
    var ps_r4_: vec4<f32>;
    var ps_r5_: vec4<f32>;
    var ps_oC0_: vec4<f32>;

    var local: f32;

    ps_r0_ = textureSample(ps_s0_tex, ps_s0_smp, ps_v1_.xy);
    ps_r1_ = (-(global.ps_uniforms_vec4_[2].wwww) + ps_v0_.wwww);
    if any((ps_r1_.xyz < vec3(0f))) {
        discard;
    }
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
                    let _e153 = ((ps_v4_.xy * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
                    ps_r1_.y = _e153.x;
                    ps_r1_.z = _e153.y;
                    let _e166 = (ps_r1_.yz + global.ps_uniforms_vec4_[5].xy);
                    ps_r2_.x = _e166.x;
                    ps_r2_.y = _e166.y;
                    let _e181 = (vec2<f32>(1f, 0f) * ps_v4_.zx);
                    ps_r2_.z = _e181.x;
                    ps_r2_.w = _e181.y;
                    ps_r2_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r2_.xy, ps_r2_.w);
                    ps_r1_.x = (ps_r1_.x + ps_r2_.x);
                    let _e205 = (ps_r1_.yz + global.ps_uniforms_vec4_[7].xy);
                    ps_r2_.x = _e205.x;
                    ps_r2_.y = _e205.y;
                    let _e220 = (vec2<f32>(1f, 0f) * ps_v4_.zx);
                    ps_r2_.z = _e220.x;
                    ps_r2_.w = _e220.y;
                    ps_r2_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r2_.xy, ps_r2_.w);
                    ps_r1_.x = (ps_r1_.x + ps_r2_.x);
                    let _e244 = (ps_r1_.yz + global.ps_uniforms_vec4_[9].xy);
                    ps_r2_.x = _e244.x;
                    ps_r2_.y = _e244.y;
                    let _e259 = (vec2<f32>(1f, 0f) * ps_v4_.zx);
                    ps_r2_.z = _e259.x;
                    ps_r2_.w = _e259.y;
                    ps_r2_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r2_.xy, ps_r2_.w);
                    ps_r1_.x = (ps_r1_.x + ps_r2_.x);
                    let _e283 = (ps_r1_.yz + global.ps_uniforms_vec4_[11].xy);
                    ps_r2_.x = _e283.x;
                    ps_r2_.y = _e283.y;
                    let _e298 = (vec2<f32>(1f, 0f) * ps_v4_.zx);
                    ps_r2_.z = _e298.x;
                    ps_r2_.w = _e298.y;
                    ps_r2_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r2_.xy, ps_r2_.w);
                    ps_r1_.x = (ps_r1_.x + ps_r2_.x);
                    ps_r1_.x = ((ps_r1_.x * 0.2f) + -1f);
                    ps_r1_.x = ((ps_r0_.w * ps_r1_.x) + 1f);
                }
            } else {
                {
                    ps_r2_ = ((ps_v4_.xyzx * vec4<f32>(0.5f, 0.5f, 1f, 0f)) + vec4<f32>(0.5f, 0.5f, 0f, 0f));
                    ps_r2_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r2_.xy, ps_r2_.w);
                    let _e381 = ((ps_v4_.xy * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
                    ps_r1_.y = _e381.x;
                    ps_r1_.z = _e381.y;
                    let _e394 = (ps_r1_.yz + global.ps_uniforms_vec4_[5].xy);
                    ps_r3_.x = _e394.x;
                    ps_r3_.y = _e394.y;
                    let _e409 = (vec2<f32>(1f, 0f) * ps_v4_.zx);
                    ps_r3_.z = _e409.x;
                    ps_r3_.w = _e409.y;
                    ps_r3_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r3_.xy, ps_r3_.w);
                    ps_r1_.w = (ps_r2_.x + ps_r3_.x);
                    let _e433 = (ps_r1_.yz + global.ps_uniforms_vec4_[6].xy);
                    ps_r2_.x = _e433.x;
                    ps_r2_.y = _e433.y;
                    let _e448 = (vec2<f32>(1f, 0f) * ps_v4_.zx);
                    ps_r2_.z = _e448.x;
                    ps_r2_.w = _e448.y;
                    ps_r2_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r2_.xy, ps_r2_.w);
                    ps_r1_.w = (ps_r1_.w + ps_r2_.x);
                    let _e472 = (ps_r1_.yz + global.ps_uniforms_vec4_[7].xy);
                    ps_r2_.x = _e472.x;
                    ps_r2_.y = _e472.y;
                    let _e487 = (vec2<f32>(1f, 0f) * ps_v4_.zx);
                    ps_r2_.z = _e487.x;
                    ps_r2_.w = _e487.y;
                    ps_r2_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r2_.xy, ps_r2_.w);
                    ps_r1_.w = (ps_r1_.w + ps_r2_.x);
                    let _e511 = (ps_r1_.yz + global.ps_uniforms_vec4_[8].xy);
                    ps_r2_.x = _e511.x;
                    ps_r2_.y = _e511.y;
                    let _e526 = (vec2<f32>(1f, 0f) * ps_v4_.zx);
                    ps_r2_.z = _e526.x;
                    ps_r2_.w = _e526.y;
                    ps_r2_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r2_.xy, ps_r2_.w);
                    ps_r1_.w = (ps_r1_.w + ps_r2_.x);
                    let _e550 = (ps_r1_.yz + global.ps_uniforms_vec4_[9].xy);
                    ps_r2_.x = _e550.x;
                    ps_r2_.y = _e550.y;
                    let _e565 = (vec2<f32>(1f, 0f) * ps_v4_.zx);
                    ps_r2_.z = _e565.x;
                    ps_r2_.w = _e565.y;
                    ps_r2_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r2_.xy, ps_r2_.w);
                    ps_r1_.w = (ps_r1_.w + ps_r2_.x);
                    let _e589 = (ps_r1_.yz + global.ps_uniforms_vec4_[10].xy);
                    ps_r2_.x = _e589.x;
                    ps_r2_.y = _e589.y;
                    let _e604 = (vec2<f32>(1f, 0f) * ps_v4_.zx);
                    ps_r2_.z = _e604.x;
                    ps_r2_.w = _e604.y;
                    ps_r2_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r2_.xy, ps_r2_.w);
                    ps_r1_.w = (ps_r1_.w + ps_r2_.x);
                    let _e628 = (ps_r1_.yz + global.ps_uniforms_vec4_[11].xy);
                    ps_r2_.x = _e628.x;
                    ps_r2_.y = _e628.y;
                    let _e643 = (vec2<f32>(1f, 0f) * ps_v4_.zx);
                    ps_r2_.z = _e643.x;
                    ps_r2_.w = _e643.y;
                    ps_r2_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r2_.xy, ps_r2_.w);
                    ps_r1_.w = (ps_r1_.w + ps_r2_.x);
                    let _e667 = (ps_r1_.yz + global.ps_uniforms_vec4_[12].xy);
                    ps_r2_.x = _e667.x;
                    ps_r2_.y = _e667.y;
                    let _e682 = (vec2<f32>(1f, 0f) * ps_v4_.zx);
                    ps_r2_.z = _e682.x;
                    ps_r2_.w = _e682.y;
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
    ps_r0_.w = dot(ps_v2_.xyz, global.ps_uniforms_vec4_[3].xyz);
    ps_r0_.w = clamp((ps_r0_.w + global.ps_uniforms_vec4_[3].w), 0f, 1f);
    ps_r2_.x = mix(ps_r1_.x, 1f, ps_r0_.w);
    ps_r0_.w = max(abs(io_5_4_.x), abs(io_5_4_.y));
    if (ps_r0_.w < 1f) {
        {
            ps_r1_ = ((io_5_4_.xyzx * vec4<f32>(0.5f, 0.5f, 1f, 0f)) + vec4<f32>(0.5f, 0.5f, 0f, 0f));
            ps_r1_ = textureSampleLevel(ps_s5_tex, ps_s5_smp, ps_r1_.xy, ps_r1_.w);
            let _e815 = ((io_5_4_.xy * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
            ps_r1_.y = _e815.x;
            ps_r1_.z = _e815.y;
            let _e828 = (ps_r1_.yz + global.ps_uniforms_vec4_[5].xy);
            ps_r3_.x = _e828.x;
            ps_r3_.y = _e828.y;
            let _e843 = (vec2<f32>(1f, 0f) * io_5_4_.zx);
            ps_r3_.z = _e843.x;
            ps_r3_.w = _e843.y;
            ps_r3_ = textureSampleLevel(ps_s5_tex, ps_s5_smp, ps_r3_.xy, ps_r3_.w);
            ps_r0_.w = (ps_r1_.x + ps_r3_.x);
            let _e867 = (ps_r1_.yz + global.ps_uniforms_vec4_[7].xy);
            ps_r3_.x = _e867.x;
            ps_r3_.y = _e867.y;
            let _e882 = (vec2<f32>(1f, 0f) * io_5_4_.zx);
            ps_r3_.z = _e882.x;
            ps_r3_.w = _e882.y;
            ps_r3_ = textureSampleLevel(ps_s5_tex, ps_s5_smp, ps_r3_.xy, ps_r3_.w);
            ps_r0_.w = (ps_r0_.w + ps_r3_.x);
            let _e906 = (ps_r1_.yz + global.ps_uniforms_vec4_[9].xy);
            ps_r3_.x = _e906.x;
            ps_r3_.y = _e906.y;
            let _e921 = (vec2<f32>(1f, 0f) * io_5_4_.zx);
            ps_r3_.z = _e921.x;
            ps_r3_.w = _e921.y;
            ps_r3_ = textureSampleLevel(ps_s5_tex, ps_s5_smp, ps_r3_.xy, ps_r3_.w);
            ps_r0_.w = (ps_r0_.w + ps_r3_.x);
            let _e945 = (ps_r1_.yz + global.ps_uniforms_vec4_[11].xy);
            ps_r1_.x = _e945.x;
            ps_r1_.y = _e945.y;
            let _e960 = (vec2<f32>(1f, 0f) * io_5_4_.zx);
            ps_r1_.z = _e960.x;
            ps_r1_.w = _e960.y;
            ps_r1_ = textureSampleLevel(ps_s5_tex, ps_s5_smp, ps_r1_.xy, ps_r1_.w);
            ps_r0_.w = (ps_r0_.w + ps_r1_.x);
            ps_r0_.w = (ps_r0_.w * 0.2f);
        }
    } else {
        {
            ps_r1_.x = max(abs(io_5_5_.x), abs(io_5_5_.y));
            if (ps_r1_.x < 1f) {
                {
                    ps_r1_ = ((io_5_5_.xyzx * vec4<f32>(0.5f, 0.5f, 1f, 0f)) + vec4<f32>(0.5f, 0.5f, 0f, 0f));
                    ps_r1_ = textureSampleLevel(ps_s6_tex, ps_s6_smp, ps_r1_.xy, ps_r1_.w);
                    let _e1040 = ((io_5_5_.xy * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
                    ps_r1_.y = _e1040.x;
                    ps_r1_.z = _e1040.y;
                    let _e1053 = (ps_r1_.yz + global.ps_uniforms_vec4_[5].xy);
                    ps_r3_.x = _e1053.x;
                    ps_r3_.y = _e1053.y;
                    let _e1068 = (vec2<f32>(1f, 0f) * io_5_5_.zx);
                    ps_r3_.z = _e1068.x;
                    ps_r3_.w = _e1068.y;
                    ps_r3_ = textureSampleLevel(ps_s6_tex, ps_s6_smp, ps_r3_.xy, ps_r3_.w);
                    ps_r1_.x = (ps_r1_.x + ps_r3_.x);
                    let _e1092 = (ps_r1_.yz + global.ps_uniforms_vec4_[7].xy);
                    ps_r3_.x = _e1092.x;
                    ps_r3_.y = _e1092.y;
                    let _e1107 = (vec2<f32>(1f, 0f) * io_5_5_.zx);
                    ps_r3_.z = _e1107.x;
                    ps_r3_.w = _e1107.y;
                    ps_r3_ = textureSampleLevel(ps_s6_tex, ps_s6_smp, ps_r3_.xy, ps_r3_.w);
                    ps_r1_.x = (ps_r1_.x + ps_r3_.x);
                    let _e1131 = (ps_r1_.yz + global.ps_uniforms_vec4_[9].xy);
                    ps_r3_.x = _e1131.x;
                    ps_r3_.y = _e1131.y;
                    let _e1146 = (vec2<f32>(1f, 0f) * io_5_5_.zx);
                    ps_r3_.z = _e1146.x;
                    ps_r3_.w = _e1146.y;
                    ps_r3_ = textureSampleLevel(ps_s6_tex, ps_s6_smp, ps_r3_.xy, ps_r3_.w);
                    ps_r1_.x = (ps_r1_.x + ps_r3_.x);
                    let _e1170 = (ps_r1_.yz + global.ps_uniforms_vec4_[11].xy);
                    ps_r3_.x = _e1170.x;
                    ps_r3_.y = _e1170.y;
                    let _e1185 = (vec2<f32>(1f, 0f) * io_5_5_.zx);
                    ps_r3_.z = _e1185.x;
                    ps_r3_.w = _e1185.y;
                    ps_r3_ = textureSampleLevel(ps_s6_tex, ps_s6_smp, ps_r3_.xy, ps_r3_.w);
                    ps_r1_.x = (ps_r1_.x + ps_r3_.x);
                    ps_r0_.w = (ps_r1_.x * 0.2f);
                }
            } else {
                {
                    let _e1228 = ((ps_v4_.ww * vec2<f32>(0.5f, 0f)) + vec2<f32>(0.5f, 0f));
                    ps_r1_.x = _e1228.x;
                    ps_r1_.w = _e1228.y;
                    ps_r1_.y = ((io_5_4_.w * 0.5f) + 0.5f);
                    ps_r1_.z = io_5_5_.w;
                    ps_r3_ = textureSampleLevel(ps_s7_tex, ps_s7_smp, ps_r1_.xy, ps_r1_.w);
                    let _e1264 = (ps_r1_.xy + global.ps_uniforms_vec4_[5].xy);
                    ps_r4_.x = _e1264.x;
                    ps_r4_.y = _e1264.y;
                    let _e1272 = ps_r1_.zw;
                    ps_r4_.z = _e1272.x;
                    ps_r4_.w = _e1272.y;
                    ps_r5_ = textureSampleLevel(ps_s7_tex, ps_s7_smp, ps_r4_.xy, ps_r4_.w);
                    ps_r1_.z = (ps_r3_.x + ps_r5_.x);
                    let _e1296 = (ps_r1_.xy + global.ps_uniforms_vec4_[7].xy);
                    ps_r4_.x = _e1296.x;
                    ps_r4_.y = _e1296.y;
                    ps_r3_ = textureSampleLevel(ps_s7_tex, ps_s7_smp, ps_r4_.xy, ps_r4_.w);
                    ps_r1_.z = (ps_r1_.z + ps_r3_.x);
                    let _e1320 = (ps_r1_.xy + global.ps_uniforms_vec4_[9].xy);
                    ps_r4_.x = _e1320.x;
                    ps_r4_.y = _e1320.y;
                    ps_r3_ = textureSampleLevel(ps_s7_tex, ps_s7_smp, ps_r4_.xy, ps_r4_.w);
                    ps_r1_.z = (ps_r1_.z + ps_r3_.x);
                    let _e1344 = (ps_r1_.xy + global.ps_uniforms_vec4_[11].xy);
                    ps_r4_.x = _e1344.x;
                    ps_r4_.y = _e1344.y;
                    ps_r3_ = textureSampleLevel(ps_s7_tex, ps_s7_smp, ps_r4_.xy, ps_r4_.w);
                    ps_r1_.x = (ps_r1_.z + ps_r3_.x);
                    ps_r1_.y = ps_v4_.w;
                    ps_r1_.z = io_5_4_.w;
                    ps_r2_.y = max(abs(ps_r1_.y), abs(ps_r1_.z));
                    ps_r1_.y = clamp(((ps_r2_.y * -11.111111f) + 11f), 0f, 1f);
                    ps_r1_.x = ((ps_r1_.x * 0.2f) + -1f);
                    ps_r0_.w = ((ps_r1_.y * ps_r1_.x) + 1f);
                }
            }
        }
    }
    ps_r1_.x = min(ps_r0_.w, ps_r2_.x);
    ps_r0_.w = dot(global.ps_uniforms_vec4_[4].xyz, ps_v3_.xyz);
    ps_r0_.w = (-(abs(ps_r0_.w)) + 1.2f);
    ps_r0_.w = (ps_r0_.w * ps_r0_.w);
    ps_r0_.w = clamp((ps_r0_.w * ps_r0_.w), 0f, 1f);
    ps_r2_.x = mix(ps_r1_.x, 1f, ps_r0_.w);
    ps_r0_.w = ((ps_r2_.x * 0.3f) + 0.7f);
    let _e1493 = (ps_r0_.www * ps_v0_.xyz);
    ps_r1_.x = _e1493.x;
    ps_r1_.y = _e1493.y;
    ps_r1_.z = _e1493.z;
    let _e1512 = ((ps_r0_.xyz * ps_r1_.xyz) + -(global.ps_uniforms_vec4_[2].xyz));
    ps_r0_.x = _e1512.x;
    ps_r0_.y = _e1512.y;
    ps_r0_.z = _e1512.z;
    let _e1530 = ((io_11_0_.xxx * ps_r0_.xyz) + global.ps_uniforms_vec4_[2].xyz);
    ps_oC0_.x = _e1530.x;
    ps_oC0_.y = _e1530.y;
    ps_oC0_.z = _e1530.z;
    ps_oC0_.w = ps_v0_.w;
    return FragmentOutput(ps_oC0_);
}
