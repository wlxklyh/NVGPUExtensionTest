#version 330 core
#extension GL_NV_shader_thread_group : enable
out vec4 FragColor;
in vec3 FragPos;



void main()
{
    FragColor = vec4(vec3(float(gl_SMIDNV)/float(gl_SMCountNV)),1.0);
}