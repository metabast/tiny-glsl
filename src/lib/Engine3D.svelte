<script>
// Force reload
if (import.meta.hot) {
    import.meta.hot.dispose( (data) => {
        import.meta.hot.invalidate();
    } )
}

import { Renderer, Camera, Transform, Program, Plane, Mesh, Triangle, Vec2 } from 'ogl';
import vertShader from "../glsl/vertShader.glsl"
import fragShader from "../glsl/fragShader.glsl"

const renderer = new Renderer();
const gl = renderer.gl;
document.body.appendChild(gl.canvas);

const camera = new Camera(gl);
camera.position.z = 0;

function resize() {
    renderer.setSize(window.innerWidth, window.innerHeight);
    camera.perspective({
        aspect: gl.canvas.width / gl.canvas.height,
    });
}
window.addEventListener('resize', resize, false);
resize();

const scene = new Transform();

const geometry = new Triangle(gl);

const program = new Program(gl, {
    vertex: vertShader,
    fragment: fragShader,
    uniforms: {
        uTime: { value: 0 },
        uResolution : { value: new Vec2(1., 1.)},
    }
});

const mesh = new Mesh(gl, { geometry, program });
mesh.setParent(scene);

requestAnimationFrame(update);
function update(t) {
    requestAnimationFrame(update);
    program.uniforms.uTime.value = t * .001;
    program.uniforms.uResolution.value.x = gl.canvas.width;
    program.uniforms.uResolution.value.y = gl.canvas.height;
    renderer.render({ scene, camera });
}

</script>

<style>

</style>