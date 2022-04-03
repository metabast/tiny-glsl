import { defineConfig } from 'vite'
import { svelte } from '@sveltejs/vite-plugin-svelte'
import glsl from 'vite-plugin-glsl'
// import vitePluginString from 'vite-plugin-string'

// https://vitejs.dev/config/
export default defineConfig({
  plugins: [svelte(), glsl()]
})
