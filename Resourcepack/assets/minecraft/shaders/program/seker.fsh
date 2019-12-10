#version 120

uniform sampler2D DiffuseSampler;
uniform sampler2D GlowSampler;
uniform sampler2D SekerSampler;

uniform vec2 OutSize;

varying vec2 texCoord;
varying vec2 oneTexel;

void main(){
    vec4 mainPixel = texture2D(DiffuseSampler, texCoord);
    vec4 glowPixel = texture2D(GlowSampler, texCoord);

    gl_FragColor = vec4(0.0, 0.0, 0.0, 0.0);
    if (glowPixel*255.0 == vec4(170.0, 0.0, 170.0, 255.0)) {
        vec2 unsquishedCoord = (texCoord * OutSize)/OutSize.x;
        vec2 offset = mainPixel.rg;
        vec4 skinPixel = texture2D(SekerSampler, (4*unsquishedCoord + offset));
        gl_FragColor = vec4(skinPixel.rgb, 0.6);
    }
    
    if (texCoord.x == 731031) { gl_FragColor = texture2D(GlowSampler, texCoord); }
    if (texCoord.x == 731031) { gl_FragColor = texture2D(SekerSampler, texCoord); }

}
