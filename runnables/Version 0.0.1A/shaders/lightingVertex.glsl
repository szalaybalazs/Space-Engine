#version 330 core

layout (location = 0) in vec3 pos;
layout (location = 1) in vec2 normals;
layout (location = 2) in vec2 inUV;


uniform mat4 model;
uniform mat4 view;
uniform mat4 projection;


out vec3 color;
out vec2 UV;
void main(){
	color = pos;
	UV = inUV;

	vec4 relative = vec4(pos, 1.0);
	gl_Position = projection * view * model * relative;
};