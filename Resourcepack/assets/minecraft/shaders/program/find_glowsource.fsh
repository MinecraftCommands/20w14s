#version 120

uniform sampler2D DiffuseSampler;

varying vec2 texCoord;
varying vec2 oneTexel;

uniform vec2 InSize;

const vec4 glowColour = vec4(255.0, 255.0, 85.0, 255.0)/255;

void main() {
	vec2 outputCoords = vec2(0.2, 0.1);
	for(float i = 0; i < 1; i += 0.01) {
		for(float j = 0; j < 1; j += 0.02) {
			vec4 currentPixel = texture2D(DiffuseSampler, vec2(i, j));
			if (distance(currentPixel, glowColour) < 0.03){
				outputCoords = vec2(i, j);
				i = 1; j = 1;
			}
		}
	}

	gl_FragColor = vec4(outputCoords.xy, 1.0, 1.0);
	// gl_FragColor = vec4(1, 1, 1.0, 1.0);
}
