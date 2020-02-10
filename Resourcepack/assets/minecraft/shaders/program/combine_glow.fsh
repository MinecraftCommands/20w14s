#version 110

uniform sampler2D DiffuseSampler;
uniform sampler2D BackgroundSampler;
uniform sampler2D MaskSampler;

uniform vec2 InSize;

varying vec2 texCoord;

void main(){
    vec4 shineTexel = texture2D(DiffuseSampler, texCoord);
    vec4 backgroundTexel = texture2D(BackgroundSampler, texCoord);
    vec4 maskTexel = texture2D(MaskSampler, texCoord);

    gl_FragColor = vec4(shineTexel.rgb + backgroundTexel.rgb, shineTexel.a);

    if (maskTexel.a > 0.5) {
        gl_FragColor = maskTexel;
    }

    if (texCoord.x == 731031.0) { gl_FragColor = texture2D(DiffuseSampler, texCoord); }
    if (texCoord.x == 731031.0) { gl_FragColor = texture2D(BackgroundSampler, texCoord); }
    if (texCoord.x == 731031.0) { gl_FragColor = texture2D(MaskSampler, texCoord); }
}
