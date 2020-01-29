#version 120

uniform sampler2D DiffuseSampler;
uniform sampler2D CoordinateSampler;

varying vec2 texCoord;
varying vec2 oneTexel;

uniform vec2 InSize;
uniform float Darken;

void main() {
	vec3 luminanceCoefs = vec3(0.299, 0.587, 0.114);
    vec4 pixel = texture2D(DiffuseSampler, texCoord);
    float luminance = dot(luminanceCoefs, pixel.rgb);
    luminance = max(0.0, luminance - Darken);
    gl_FragColor = pixel * luminance;
}