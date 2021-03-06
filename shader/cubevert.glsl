#version 450
layout(binding = 0)uniform UniformBufferObject{
  mat4 model;
  mat4 view;
  mat4 proj;
}ubo;


layout(location = 0) in vec3 vertPos;
layout(location = 0) out vec3 pos;

void main(){
  gl_Position = ubo.proj * ubo.view * ubo.model * vec4(vertPos,1.0);
  pos = vertPos;
}
