<template>
  <div class="row row-cols-1 justify-content-center m-5">
    <div class="col">
      <h3>Sisselogimine</h3>
    </div>
    <div class="col col-sm-5">
      <div class="input-group mb-3 ">
        <span class="input-group-text" id="inputGroup-sizing-default">Kasutajanimi</span>
        <input type="text" class="form-control" aria-label="Sizing example input"
               aria-describedby="inputGroup-sizing-default">
      </div>
    </div>
    <div class="w-100"></div>
    <div class="col col-sm-5">
      <div class="input-group mb-3 ">
        <span class="input-group-text" id="inputGroup-sizing-default2">Parool</span>
        <input type="text" class="form-control" aria-label="Sizing example input"
               aria-describedby="inputGroup-sizing-default2">
      </div>
    </div>
  </div>
</template>
<script>
export default {
  name: 'Login'
}
</script>