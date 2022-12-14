#version 120

attribute vec4 Position;

uniform mat4 ProjMat;
uniform vec2 OutSize;
uniform vec2 InSize;

varying vec2 texCoord;
varying vec2 oneTexel;

// Fixed blit vsh to copy to entirety non-full-screen buffers

void main(){

    float x = -1.0; 
    float y = -1.0;

    if (Position.x > 0.001){
        x = 1.0;
    }
    if (Position.y > 0.001){
        y = 1.0;
    }

    gl_Position = vec4(x, y, 0.2, 1.0);
    texCoord = Position.xy / OutSize;
    oneTexel = 1.0 / InSize;
}
