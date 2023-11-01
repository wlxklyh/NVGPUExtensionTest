#version 330 core
#extension GL_NV_shader_thread_group: enable
out vec4 FragColor;
in vec3 FragPos;



void main()
{
    // 将纹理坐标缩放到0-9区间内
    vec2 texCoord = gl_FragCoord.xy;

    // 计算网格位置
    int xGrid = int(texCoord.x);
    int yGrid = int(texCoord.y);

    // 根据网格位置确定颜色
    vec3 color = (xGrid % 16 == 0 || (yGrid + 10) % 16 == 0) ? vec3(1.0, 0.0, 0.0) : vec3(0.0);

    // 输出最终颜色
    float sm_v = float(gl_SMIDNV) / float(gl_SMCountNV);
    FragColor = vec4(color.x, sm_v, sm_v, 1.0);
}