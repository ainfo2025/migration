<script>
  export let loading = 0;
</script>

<button type="button" class="btn btn-success">
  {#if loading}
    <i class="fa fa-yin-yang fa-spin"></i>
  {:else}
    <i class="fa fa-smile"></i>
  {/if}
</button>

<style>
  .fa {
    font-size: 1.2rem;
  }
</style>
