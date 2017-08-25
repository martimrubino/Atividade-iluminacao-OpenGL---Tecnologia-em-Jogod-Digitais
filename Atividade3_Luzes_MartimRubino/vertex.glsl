precision highp float;

attribute vec2 position;

varying vec3 vpos;

void main() {
	gl_PointSize = 15.0;
	float x = position.x * 600.0 / 800.0;
	vpos = vec3(x, position.y, 1.0);
	gl_Position = vec4(vpos, 1.0);	
}
