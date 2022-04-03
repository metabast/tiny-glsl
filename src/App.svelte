<script>
  import logo from './assets/svelte.png'
  import Engine3D from './lib/Engine3D.svelte'
</script>

<main>
  <Engine3D />
</main>

<style>
  :root {
    font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen,
      Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif;
    padding: 0;
    margin: 0;
  }
  :global(body) {
    margin: 0;
    padding: 0;
    overflow: hidden;
  }
</style>
