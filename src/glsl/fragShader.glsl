precision highp float;

#define PI 3.14

uniform vec2 uResolution;
uniform float uTime;

varying vec2 vUv;

void main() {
    vec2 st = gl_FragCoord.xy/uResolution.xy;
    st.x *= uResolution.x/uResolution.y;

    vec3 color = vec3(0.8, 0.7, 1.0) + 0.3 * cos(vUv.xyx + uTime);
    gl_FragColor = vec4(color, 1.);
}