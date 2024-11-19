#version 130

uniform sampler1D tfTex0;
uniform sampler1D tfTex1;
uniform int colorMappingMode;
uniform mat3 rotMat;
uniform float latitudeMin;
uniform float latitudeMax;
uniform float longtitudeMin;
uniform float longtitudeMax;
uniform float heightMin;
uniform float heightMax;

uniform float relativeAlpha0;
uniform float relativeAlpha1;


out vec3 vertex;
out vec3 normal;
out vec4 color;

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
    normal = rotMat * gl_Normal;
	float a1 = 1.f;
	float a2 = 1.f;
    if (colorMappingMode == 0) {
    	if (gl_MultiTexCoord0.x == 0.f) {
        	color = texture(tfTex0, gl_MultiTexCoord0.y);
        	color.a = relativeAlpha0;
        	// a1 = relativeAlpha;
    	}
    	else {
        	color = texture(tfTex1, gl_MultiTexCoord0.y);
        	color.a = relativeAlpha1;
        	// a2 = relativeAlpha;
    	}
	} else {
    	if (gl_MultiTexCoord0.x == 0.f) {
        	color = vec4(vec3(172.f, 232.f, 111.f) / 255.f, relativeAlpha0);
        	//alpha = relativeAlpha;

    	}
    	else {
        	color = vec4(vec3(50.f, 214.f, 234.f) / 255.f,relativeAlpha1);
        	//alpha = relativeAlpha;

    	}
	}

    gl_Position = gl_ModelViewProjectionMatrix * vec4(vertex, 1.f);
}
