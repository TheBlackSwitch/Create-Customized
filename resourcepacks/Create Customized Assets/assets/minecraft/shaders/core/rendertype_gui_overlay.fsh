#version 150

in vec4 vertexColor;

uniform vec4 ColorModulator;
uniform mat4 ProjMat;

out vec4 fragColor;
in vec2 texCoord;

vec3 custom_lerp(float v, vec3 a, vec3 b) {
    return a * v + b * (1.0 - v);
}

void main() {
    vec4 color = vertexColor;
    if (color.a == 0.0) discard;

    fragColor = color * ColorModulator;
    
    if (color.r == 239.0 / 255.0) {

        float lerp_value = color.b;

        if(lerp_value > 0.5) {
            lerp_value = 1.0 - lerp_value;
        } else {
            lerp_value * 2;
        }


        float darkness = 1.0 - max(max(0, (abs(0.5 - color.b) - 0.45) * 8), max(0, (abs(0.5 - color.g) - 0.45) * 4));

        fragColor = vec4(custom_lerp(lerp_value, vec3(255, 228, 163) / 255, vec3(242, 195, 82) / 255) * darkness, color.a);

       
    }

}