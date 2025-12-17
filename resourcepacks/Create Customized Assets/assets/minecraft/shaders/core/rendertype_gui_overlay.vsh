#version 150

in vec3 Position;
in vec4 Color;

uniform mat4 ModelViewMat;
uniform mat4 ProjMat;
uniform vec2 ScreenSize;

out vec4 vertexColor;

void main() {
    gl_Position = ProjMat * ModelViewMat * vec4(Position, 1.0);

    vec4 out_col = Color;

    if(Color.r == 239.0 / 255.0) {
        out_col.g = Position.x / 634.5;
        out_col.b = Position.y / 377.5;
        out_col.a = 1.0;
    }

    vertexColor = out_col;
}
