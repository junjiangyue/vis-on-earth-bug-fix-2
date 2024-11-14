#version 130

#define SkipAlpha (.95f)
#define MaxIsoValNum (16)
#define PI (3.14159f)

uniform sampler3D volTex;
uniform vec3 eyePos;
uniform vec3 lightPos;
uniform vec3 dSamplePos;
uniform mat3 rotMat;
uniform float dt;
uniform float minLatitute;
uniform float maxLatitute;
uniform float minLongtitute;
uniform float maxLongtitute;
uniform float minHeight;
uniform float maxHeight;
uniform float ka;
uniform float kd;
uniform float ks;
uniform float shininess;
uniform float sortedIsoVals[MaxIsoValNum];
uniform vec4 isosurfCols[MaxIsoValNum];
uniform int isosurfNum;
uniform int maxStepCnt;
uniform int volStartFromZeroLon;
uniform int selectedIsosurfIdx;
uniform int useShading;

varying vec3 vertex;

struct Hit {
	int isHit;
	float tEntry;
	float tExit;
};
/*
* ����: intersectSphere
* ����: �������������ཻ��λ��
* ����:
* -- d: �ӵ�����ķ���
* -- r: ��뾶
*/
Hit intersectSphere(vec3 d, float r) {
	Hit hit = Hit(0, 0.f, 0.f);

	float tVert = -dot(eyePos, d);
	vec3 pVert = eyePos + tVert * d;

	float r2 = r * r;
	float pVert2 = pVert.x * pVert.x + pVert.y * pVert.y + pVert.z * pVert.z;
	if (pVert2 >= r2) return hit;
	float l = sqrt(r2 - pVert2);

	hit.isHit = 1;
	hit.tEntry = tVert - l;
	hit.tExit = tVert + l;
	return hit;
}

void main() {
	vec3 d = normalize(vertex - eyePos);
	Hit hit = intersectSphere(d, maxHeight);
	if (hit.isHit == 0)
		discard;
	float tEntry = hit.tEntry;
	vec3 outerX = eyePos + tEntry * d;

	vec3 pos = outerX;
	float r = sqrt(pos.x * pos.x + pos.y * pos.y);
	float lat = atan(pos.z / r);
	r = length(pos);
	float lon = atan(pos.y, pos.x);
	// �ж������������һ�����㣨���������λ�ã���������
	int entryOutOfRng = 0;
	if (lat < minLatitute)
		entryOutOfRng |= 1;
	if (lat > maxLatitute)
		entryOutOfRng |= 2;
	if (lon < minLongtitute)
		entryOutOfRng |= 4;
	if (lon > maxLongtitute)
		entryOutOfRng |= 8;
	float tExit = hit.tExit;
	hit = intersectSphere(d, minHeight);
	if (hit.isHit != 0)
		tExit = hit.tEntry;
	// �ж������뿪���λ����������
	pos = eyePos + tExit * d;
	r = sqrt(pos.x * pos.x + pos.y * pos.y);
	lat = atan(pos.z / r);
	lon = atan(pos.y, pos.x);
	// ������λ�þ����ڷ�Χ�ڣ�������������ͬ������Ҫ���������
	if ((entryOutOfRng & 1) != 0 && lat < minLatitute)
		discard;
	if ((entryOutOfRng & 2) != 0 && lat > maxLatitute)
		discard;
	if ((entryOutOfRng & 4) != 0 && lon < minLongtitute)
		discard;
	if ((entryOutOfRng & 8) != 0 && lon > maxLongtitute)
		discard;

	// ִ�й��ߴ����㷨
	float hDlt = maxHeight - minHeight;
	float latDlt = maxLatitute - minLatitute;
	float lonDlt = maxLongtitute - minLongtitute;
	vec4 color = vec4(0, 0, 0, 0);
	float tAcc = 0.f;
	int stepCnt = 0;
	int realMaxStepCnt = maxStepCnt;
	vec3 prevSamplePos;
	float prevScalar = -1.f;
	pos = outerX;
	tExit -= tEntry;
	do {
		r = sqrt(pos.x * pos.x + pos.y * pos.y);
		lat = atan(pos.z / r);
		r = length(pos);
		lon = atan(pos.y, pos.x);

		if (lat < minLatitute || lat > maxLatitute || lon < minLongtitute || lon > maxLongtitute) {}
		else {
			r = (r - minHeight) / hDlt;
			lat = (lat - minLatitute) / latDlt;
			lon = (lon - minLongtitute) / lonDlt;
			if (volStartFromZeroLon != 0)
				if (lon < .5f) lon += .5f;
				else lon -= .5f;

			//vec4 isosurfCol = vec4(lon, lat, r, .01f);
			//color.rgb = color.rgb + (1.f - color.a) * isosurfCol.a * isosurfCol.rgb;
			//color.a = color.a + (1.f - color.a) * isosurfCol.a;
			//if (color.a > SkipAlpha)
			//	break;

			vec3 samplePos = vec3(lon, lat, r);
			float scalar = texture(volTex, samplePos).r;
			if (prevScalar < 0.f) {
				prevScalar = scalar;
				prevSamplePos = samplePos;
			}
			int incDir = scalar > prevScalar ? 1 : scalar < prevScalar ? -1 : 0;
			for (int i = 0; i < isosurfNum; ++i) {
				if (incDir == 0) break;
				int realIdx = incDir == 1 ? i : isosurfNum - i;

				if ((prevScalar <= sortedIsoVals[realIdx] && scalar >= sortedIsoVals[realIdx]) ||
					(prevScalar >= sortedIsoVals[realIdx] && scalar <= sortedIsoVals[realIdx])) {
					if (useShading != 0) {
						float scalarDlt = scalar - prevScalar;
						vec3 cmptSamplePos =
							(sortedIsoVals[realIdx] - prevScalar) / scalarDlt * samplePos +
							(scalar - sortedIsoVals[realIdx]) / scalarDlt * prevSamplePos;

						vec3 N;
						N.x = texture(volTex, cmptSamplePos + vec3(dSamplePos.x, 0, 0)).r - texture(volTex, cmptSamplePos - vec3(dSamplePos.x, 0, 0)).r;
						N.y = texture(volTex, cmptSamplePos + vec3(0, dSamplePos.y, 0)).r - texture(volTex, cmptSamplePos - vec3(0, dSamplePos.y, 0)).r;
						N.z = texture(volTex, cmptSamplePos + vec3(0, 0, dSamplePos.z)).r - texture(volTex, cmptSamplePos - vec3(0, 0, dSamplePos.z)).r;
						N = rotMat * normalize(N);
						if (dot(N, d) > 0) N = -N;

						vec3 p2l = normalize(lightPos - pos);
						vec3 hfDir = normalize(-d + p2l);

						float ambient = ka;
						float diffuse = kd * max(0, dot(N, p2l));
						float specular = ks * pow(max(0, dot(N, hfDir)), shininess);

						vec4 isosurfCol = realIdx == selectedIsosurfIdx ?
							vec4(isosurfCols[realIdx].rgb, 1.f) : isosurfCols[realIdx];
						isosurfCol.rgb = (ambient + diffuse + specular) * isosurfCol.rgb;

						color.rgb = color.rgb + (1.f - color.a) * isosurfCol.a * isosurfCol.rgb;
						color.a = color.a + (1.f - color.a) * isosurfCol.a;
					}
					else {
						vec4 isosurfCol = realIdx == selectedIsosurfIdx ?
							vec4(isosurfCols[realIdx].rgb, 1.f) : isosurfCols[realIdx];

						color.rgb = color.rgb + (1.f - color.a) * isosurfCol.a * isosurfCol.rgb;
						color.a = color.a + (1.f - color.a) * isosurfCol.a;
					}
				}
			}

			if (color.a > SkipAlpha)
				break;

			prevScalar = scalar;
			prevSamplePos = samplePos;
		}

		pos += dt * d;
		tAcc += dt;
		++stepCnt;
	} while (tAcc < tExit && stepCnt <= realMaxStepCnt);

	gl_FragColor = color;
}
