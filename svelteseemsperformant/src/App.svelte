<script>
  let a = 0;
  let b = 0;
  $: result = a + b;
</script>

<style>
  main {
    text-align: center;
    padding: 1em;
    max-width: 240px;
    margin: 0 auto;
  }

  h1 {
    color: #ff3e00;
    text-transform: uppercase;
    font-size: 4em;
    font-weight: 100;
  }

  @media (min-width: 640px) {
    main {
      max-width: none;
    }
  }
</style>

<main>
  <h1>My extremly simple calculator</h1>
  <p>
    Result is:
    <b>{result}</b>
  </p>
  <input type="number" bind:value={a} />
  <input type="number" bind:value={b} />

</main>
