#version 110

uniform sampler2D DiffuseSampler;
uniform sampler2D AddSampler;

uniform vec2 InSize;

varying vec2 texCoord;

uniform float MosaicSize;

void main(){
    vec4 baseTexel = vec4(texture2D(DiffuseSampler, texCoord).rgb, 1.0);
    vec4 overlayTexel = vec4(texture2D(AddSampler, texCoord).rgb, 1.0);

    gl_FragColor = overlayTexel + baseTexel;
}
