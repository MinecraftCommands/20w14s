#version 120

uniform sampler2D DiffuseSampler;
uniform sampler2D LuminanceSampler;

varying vec2 texCoord;
varying vec2 oneTexel;

uniform vec2 InSize;

uniform float blurRadius = 4.0;

void main() {
    vec4 sum = texture2D(DiffuseSampler, texCoord);
	float total_strength = 1.0;

	// For all pixels in radius
	for (float x = -blurRadius; x <= blurRadius; x += 1.0) {
		for (float y = -blurRadius; y <= blurRadius; y += 1.0) {
			// Grab pixel
			vec2 offset = 0.001 * vec2(x, y);
			vec4 newPixel = texture2D(DiffuseSampler, texCoord + offset);
			float luminance = texture2D(LuminanceSampler, texCoord + offset).r;

			// Add to blur sum - pixels further from center count less
			float strength = (1.0 - length(vec2(x, y))/blurRadius) * luminance;
			sum += strength * newPixel;
			total_strength += strength;
		}
	}
	sum /= total_strength;
	
	gl_FragColor = vec4(sum.rgb, 1.0);
    
}



