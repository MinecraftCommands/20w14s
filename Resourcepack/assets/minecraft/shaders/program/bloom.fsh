#version 120

uniform sampler2D DiffuseSampler;

varying vec2 texCoord;
varying vec2 oneTexel;

uniform vec2 InSize;

uniform float blurRadius = 10.0;

float lum(vec4 pixel) {
	vec3 luminanceCoefs = vec3(0.299, 0.587, 0.114);
    float luminance = dot(luminanceCoefs, pixel.rgb);
    return max(0.0, luminance - 0.7);
}

void main() {
    vec4 sum = texture2D(DiffuseSampler, texCoord);
	float total_strength = 1.0;

	// For all pixels in radius
	for (float x = -blurRadius; x <= blurRadius; x += 1.0) {
		for (float y = -blurRadius; y <= blurRadius; y += 1.0) {
			// Grab pixel
			vec2 offset = oneTexel * vec2(x, y);
			vec4 newPixel = texture2D(DiffuseSampler, texCoord + offset);

			// Add to blur sum - pixels further from center count less
			float strength = (1.0 - length(vec2(x, y))/blurRadius);
			sum += newPixel * strength;
			total_strength += strength;
		}
	}
	sum /= total_strength;
	
	gl_FragColor = vec4(sum.rgb, 1.0);
    
}



