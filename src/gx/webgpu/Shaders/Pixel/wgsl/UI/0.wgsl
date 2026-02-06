struct FragmentOutput {
    @location(0) ps_oC0_: vec4<f32>,
}

@group(1) @binding(0) var ps_s0_smp: sampler;
@group(1) @binding(1) var ps_s0_tex: texture_2d<f32>;

@fragment fn main(@location(0) ps_v0_: vec4<f32>, @location(1) ps_v1_: vec4<f32>) -> FragmentOutput {
    var ps_r0_: vec4<f32>;
    var ps_oC0_: vec4<f32>;

    ps_r0_ = textureSample(ps_s0_tex, ps_s0_smp, ps_v1_.xy);
    ps_oC0_ = (ps_r0_ * ps_v0_);
    return FragmentOutput(ps_oC0_);
}
