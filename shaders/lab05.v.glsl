#version 410 core

// uniform inputs
uniform mat4 mvpMatrix;                 // the precomputed Model-View-Projection Matrix
// TODO #D add our normal matrix
// the normal matrix
uniform mat3 normalMatrix;
// TODO #A add our light properties (direction & color)
uniform vec3 lightVector;
uniform vec3 lightColor;
// the direction the incident ray of light is traveling
// the color of the light
uniform vec3 materialColor;             // the material color for our vertex (& whole object)

// attribute inputs
layout(location = 0) in vec3 vPos;      // the position of this specific vertex in object space
// TODO #C add our vertex normal
// the normal of this specific vertex in object space
in vec3 vertexNormal;
// varying outputs
layout(location = 0) out vec3 color;    // color to apply to this vertex

void main() {
    // transform & output the vertex in clip space
    gl_Position = mvpMatrix * vec4(vPos, 1.0);

    // TODO #B convert the light direction to our normalized light vector
    vec3 newLightVector = -normalize(lightVector);
    // TODO #E transform the vertex normal in to world space
    vec3 newVertexNormal = vertexNormal * normalMatrix;

    // TODO #F compute the diffuse component of the Phong Illumination Model


    // TODO #G output the illumination color of this vertex
    color = materialColor;              // assign the color for this vertex
}