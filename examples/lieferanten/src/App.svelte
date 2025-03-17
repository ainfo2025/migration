<script>
  import { onMount } from "svelte";
  import Loader from "./loader.svelte";

  let apiroot = "../../../api/?";
  let suppliers = [];
  let filteredList = [];
  let search = "";
  let loading = 0;
  let timeout;
  let applyFilterCount = 0;

  onMount(() => {
    init();
  });

  async function init() {
    loading = 1;
    const res = await fetch(apiroot + "f=getAinfoSuppliers");
    const u = await res.json();
    suppliers = u.data;
    applyFilter();
    //loading = 0
  }

  function applyFilter() {
    applyFilterCount++;
    filteredList = suppliers.filter(function (e, index) {
      let s = (e.a1 + e.a4 + e.a6 + e.mcode).toLowerCase();
      if (s.indexOf(search.toLowerCase()) != -1) return true;
    });
    loading = 0;
  }

  async function debounce() {
    if (timeout) clearTimeout(timeout);
    timeout = setTimeout(applyFilter, 300);
  }

  function clear() {
    search = "";
    applyFilter();
  }
</script>

  <div class="container">
    <div class="row sticky-top bg-light">
      <div class="col">
        <h1>Lieferanten</h1>
        <!-- Filter was called {applyFilterCount} time(s) -->
        <div class="input-group">
          <Loader {loading} />
          <div class="form-outline">
            <input
              bind:value={search}
              on:input={debounce}
              id="search-input"
              type="search"
              class="form-control"
            />
          </div>
          <button type="button" class="btn btn-warning">
            <i class="fa fa-search"></i>
          </button>
          <button type="button" class="btn btn-warning" on:click={clear}>
            <i class="fa fa-times"></i>
          </button>
          <button type="button" class="btn btn-success">
            {#if filteredList.length}
              {filteredList.length}
            {/if}
          </button>
        </div>
      </div>
    </div>

    <div class="row mt-4">
      <div class="col">
        <table class="table">
          {#if filteredList.length > 0}
            {#each filteredList as l}
              <tr>
                <td>{l.nr}</td>
                <td>{l.mcode}</td>
                <td>{l.a1}</td>
                <td>{l.a2}</td>
                <td>{l.a4}</td>
                <td>{l.a6}</td>
              </tr>
            {/each}
          {:else if loading == 0}
            <h3>
              <i class="fa fa-frown" /> Keine Fundstellen für "{search}"
            </h3>
          {/if}
        </table>
      </div>
    </div>
  </div>

<style>
  td {
    padding: 5px;
    border: 1px solid silver;
  }
  tr:hover {
    background-color: #efefef;
    cursor: pointer;
  }
</style>
