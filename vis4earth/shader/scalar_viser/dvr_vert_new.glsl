#version 130

uniform float latitudeMin;
uniform float latitudeMax;
uniform float longtitudeMin;
uniform float longtitudeMax;
uniform float heightMin;
uniform float heightMax;

varying vec3 vertex;

void main() {
    {
        float lon = longtitudeMin + gl_Vertex.x * (longtitudeMax - longtitudeMin);
        float lat = latitudeMin + gl_Vertex.y * (latitudeMax - latitudeMin);
        float h = heightMin + gl_Vertex.z * (heightMax - heightMin);
        vertex.z = h * sin(lat);
        h *= cos(lat);
        vertex.y = h * sin(lon);
        vertex.x = h * cos(lon);
    }

    gl_Position = gl_ModelViewProjectionMatrix * vec4(vertex, 1.f);
}
