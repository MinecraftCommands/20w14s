#version 120

uniform sampler2D DiffuseSampler;
uniform sampler2D CoordinateSampler;

varying vec2 texCoord;
varying vec2 oneTexel;

uniform vec2 InSize;
uniform float Time;

const float maxDist = 300;

void main() {
	vec4 normalPixel = texture2D(DiffuseSampler, texCoord);

	vec4 coordPixel = texture2D(CoordinateSampler, vec2(0, 0));
	vec2 drawCoord = coordPixel.rg;
	
	vec2 diff = texCoord * InSize - drawCoord * InSize; 
	float dist = distance(drawCoord * InSize, texCoord * InSize);

	if (dist < maxDist) {
		float phase = sin(Time*3.141*2)/10;
		float theta = 0.5+atan(diff.x, diff.y)/(3.141*2);
		float radius = dist/maxDist;

		float r = sin(3.141*10*(theta + radius*phase));
		float g = sin(3.141*8*(theta - radius*phase));
		float b = sin(3.141*16*(theta + phase));
		float a = (max(r,0)+max(g,0)+max(b,0))-radius*3;

    	gl_FragColor = vec4(r, g, b, a);
	} else {
    	gl_FragColor = normalPixel;
	}

}