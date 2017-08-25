precision highp float;

varying vec3 vpos;

void main() {
	
	// Para a primeira luz
	vec2 luzA = vec2(0.0,-1.0);
	float distA = distance(luzA,vpos.xy);
	float ndistA = distA / sqrt(8.0);
	float tomA = 1.0 - ndistA;
	float tA = pow(tomA,2.0);
	float tA2 = pow(tomA,6.0);
	float tA3 = pow(tomA,10.0);
	float tA4 = pow(tomA,15.0);
	float tA5 = pow(tomA,32.0);
	
	
	// Para a segunda luz
	vec2 luzB = vec2(0.0,0.0);
	float distB = distance(luzB,vpos.xy);
	float ndistB = distB / sqrt(8.0);
	float tomB = 1.0 - ndistB;
	float tB = pow(tomB,2.0);
	float tB2 = pow(tomB,6.0);
	float tB3 = pow(tomB,10.0);
	float tB4 = pow(tomB,15.0);
	float tB5 = pow(tomB,32.0);
	
	// Para a terceira luz
	vec2 luzC = vec2(0.0,1.0);
	float distC = distance(luzC,vpos.xy);
	float ndistC = distC / sqrt(8.0);
	float tomC = 1.0 - ndistC;
	float tC = pow(tomA,2.0);
	float tC2 = pow(tomC,6.0);
	float tC3 = pow(tomC,10.0);
	float tC4 = pow(tomC,15.0);
	float tC5 = pow(tomC,32.0);
	
	float t1 = tA3 + tB +tC4;
	float t2 = tA2 + tB + tC;
	float t3 = tA3 + tB2 + tC5;
	
	gl_FragColor = vec4(t1,t2,t3,1.0);
}
