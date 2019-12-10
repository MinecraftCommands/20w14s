#version 120

uniform sampler2D DiffuseSampler;
uniform sampler2D StoreSampler;

varying vec2 texCoord;
varying vec2 oneTexel;

uniform vec2 InSize;

void main() {
	vec4 currentPixel = texture2D(DiffuseSampler, texCoord);
	gl_FragColor = vec4(currentPixel.rgb, 1.0);
}