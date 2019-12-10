#version 120

uniform sampler2D DiffuseSampler;
uniform sampler2D CoordinateSampler;

varying vec2 texCoord;
varying vec2 oneTexel;

uniform vec2 InSize;

void main() {
	vec4 normalPixel = texture2D(DiffuseSampler, texCoord);

	vec4 coordPixel = texture2D(CoordinateSampler, vec2(0, 0));
	vec2 drawCoord = coordPixel.rg;
	
	float dist = distance(drawCoord * InSize, texCoord * InSize);

	if (dist < 8) {
    	gl_FragColor = coordPixel;
	} else if (dist < 10) {
		gl_FragColor = vec4(0.0, 0.0, 0.0, 1.0);
	} else {
    	gl_FragColor = normalPixel;
	}

}