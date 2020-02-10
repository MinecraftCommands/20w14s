#version 120

uniform sampler2D DiffuseSampler;

uniform vec2 OutSize;

varying vec2 texCoord;
varying vec2 oneTexel;

void main(){
    vec4 mainPixel = texture2D(DiffuseSampler, texCoord);

    gl_FragColor = vec4(0.0, 0.0, 0.0, 0.0);
    if (mainPixel*255.0 == vec4(255.0, 255.0, 85.0, 255.0) || mainPixel*255.0 == vec4(170.0, 0.0, 170.0, 255.0)) {
        // Puffersun
        gl_FragColor = mainPixel;
    }

}
