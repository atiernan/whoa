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
    ps_r0_.w = (ps_r0_.w * ps_v0_.w);
    ps_r1_.x = (ps_r1_.w * ps_r0_.w);
    ps_r2_ = ((ps_r0_.wwww * ps_r1_.wwww) + -(global.ps_uniforms_vec4_[2].wwww));
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
                    let _e178 = ((io_5_4_.xy * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
                    ps_r1_.y = _e178.x;
                    ps_r1_.z = _e178.y;
                    let _e191 = (ps_r1_.yz + global.ps_uniforms_vec4_[5].xy);
                    ps_r3_.x = _e191.x;
                    ps_r3_.y = _e191.y;
                    let _e206 = (vec2<f32>(1f, 0f) * io_5_4_.zx);
                    ps_r3_.z = _e206.x;
                    ps_r3_.w = _e206.y;
                    ps_r3_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r3_.xy, ps_r3_.w);
                    ps_r1_.w = (ps_r2_.x + ps_r3_.x);
                    let _e230 = (ps_r1_.yz + global.ps_uniforms_vec4_[7].xy);
                    ps_r2_.x = _e230.x;
                    ps_r2_.y = _e230.y;
                    let _e245 = (vec2<f32>(1f, 0f) * io_5_4_.zx);
                    ps_r2_.z = _e245.x;
                    ps_r2_.w = _e245.y;
                    ps_r2_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r2_.xy, ps_r2_.w);
                    ps_r1_.w = (ps_r1_.w + ps_r2_.x);
                    let _e269 = (ps_r1_.yz + global.ps_uniforms_vec4_[9].xy);
                    ps_r2_.x = _e269.x;
                    ps_r2_.y = _e269.y;
                    let _e284 = (vec2<f32>(1f, 0f) * io_5_4_.zx);
                    ps_r2_.z = _e284.x;
                    ps_r2_.w = _e284.y;
                    ps_r2_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r2_.xy, ps_r2_.w);
                    ps_r1_.w = (ps_r1_.w + ps_r2_.x);
                    let _e308 = (ps_r1_.yz + global.ps_uniforms_vec4_[11].xy);
                    ps_r2_.x = _e308.x;
                    ps_r2_.y = _e308.y;
                    let _e323 = (vec2<f32>(1f, 0f) * io_5_4_.zx);
                    ps_r2_.z = _e323.x;
                    ps_r2_.w = _e323.y;
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
                    let _e415 = ((io_5_4_.xy * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
                    ps_r1_.y = _e415.x;
                    ps_r1_.z = _e415.y;
                    let _e428 = (ps_r1_.yz + global.ps_uniforms_vec4_[5].xy);
                    ps_r4_.x = _e428.x;
                    ps_r4_.y = _e428.y;
                    let _e443 = (vec2<f32>(1f, 0f) * io_5_4_.zx);
                    ps_r4_.z = _e443.x;
                    ps_r4_.w = _e443.y;
                    ps_r4_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r4_.xy, ps_r4_.w);
                    ps_r1_.w = (ps_r3_.x + ps_r4_.x);
                    let _e467 = (ps_r1_.yz + global.ps_uniforms_vec4_[6].xy);
                    ps_r3_.x = _e467.x;
                    ps_r3_.y = _e467.y;
                    let _e482 = (vec2<f32>(1f, 0f) * io_5_4_.zx);
                    ps_r3_.z = _e482.x;
                    ps_r3_.w = _e482.y;
                    ps_r3_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r3_.xy, ps_r3_.w);
                    ps_r1_.w = (ps_r1_.w + ps_r3_.x);
                    let _e506 = (ps_r1_.yz + global.ps_uniforms_vec4_[7].xy);
                    ps_r3_.x = _e506.x;
                    ps_r3_.y = _e506.y;
                    let _e521 = (vec2<f32>(1f, 0f) * io_5_4_.zx);
                    ps_r3_.z = _e521.x;
                    ps_r3_.w = _e521.y;
                    ps_r3_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r3_.xy, ps_r3_.w);
                    ps_r1_.w = (ps_r1_.w + ps_r3_.x);
                    let _e545 = (ps_r1_.yz + global.ps_uniforms_vec4_[8].xy);
                    ps_r3_.x = _e545.x;
                    ps_r3_.y = _e545.y;
                    let _e560 = (vec2<f32>(1f, 0f) * io_5_4_.zx);
                    ps_r3_.z = _e560.x;
                    ps_r3_.w = _e560.y;
                    ps_r3_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r3_.xy, ps_r3_.w);
                    ps_r1_.w = (ps_r1_.w + ps_r3_.x);
                    let _e584 = (ps_r1_.yz + global.ps_uniforms_vec4_[9].xy);
                    ps_r3_.x = _e584.x;
                    ps_r3_.y = _e584.y;
                    let _e599 = (vec2<f32>(1f, 0f) * io_5_4_.zx);
                    ps_r3_.z = _e599.x;
                    ps_r3_.w = _e599.y;
                    ps_r3_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r3_.xy, ps_r3_.w);
                    ps_r1_.w = (ps_r1_.w + ps_r3_.x);
                    let _e623 = (ps_r1_.yz + global.ps_uniforms_vec4_[10].xy);
                    ps_r3_.x = _e623.x;
                    ps_r3_.y = _e623.y;
                    let _e638 = (vec2<f32>(1f, 0f) * io_5_4_.zx);
                    ps_r3_.z = _e638.x;
                    ps_r3_.w = _e638.y;
                    ps_r3_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r3_.xy, ps_r3_.w);
                    ps_r1_.w = (ps_r1_.w + ps_r3_.x);
                    let _e662 = (ps_r1_.yz + global.ps_uniforms_vec4_[11].xy);
                    ps_r3_.x = _e662.x;
                    ps_r3_.y = _e662.y;
                    let _e677 = (vec2<f32>(1f, 0f) * io_5_4_.zx);
                    ps_r3_.z = _e677.x;
                    ps_r3_.w = _e677.y;
                    ps_r3_ = textureSampleLevel(ps_s4_tex, ps_s4_smp, ps_r3_.xy, ps_r3_.w);
                    ps_r1_.w = (ps_r1_.w + ps_r3_.x);
                    let _e701 = (ps_r1_.yz + global.ps_uniforms_vec4_[12].xy);
                    ps_r3_.x = _e701.x;
                    ps_r3_.y = _e701.y;
                    let _e716 = (vec2<f32>(1f, 0f) * io_5_4_.zx);
                    ps_r3_.z = _e716.x;
                    ps_r3_.w = _e716.y;
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
    let _e870 = (ps_r0_.www * ps_v0_.xyz);
    ps_r1_.y = _e870.x;
    ps_r1_.z = _e870.y;
    ps_r1_.w = _e870.z;
    let _e889 = ((ps_r0_.xyz * ps_r1_.yzw) + -(global.ps_uniforms_vec4_[2].xyz));
    ps_r0_.x = _e889.x;
    ps_r0_.y = _e889.y;
    ps_r0_.z = _e889.z;
    let _e907 = ((io_11_0_.xxx * ps_r0_.xyz) + global.ps_uniforms_vec4_[2].xyz);
    ps_oC0_.x = _e907.x;
    ps_oC0_.y = _e907.y;
    ps_oC0_.z = _e907.z;
    ps_oC0_.w = ps_r1_.x;
    return FragmentOutput(ps_oC0_);
}
