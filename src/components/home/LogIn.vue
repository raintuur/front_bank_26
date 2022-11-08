<template>
  <div>
    <h3>Sisselogimine</h3>

    <div class="row justify-content-center">

      <div class="col-lg-5">

        <div class="input-group mb-3">
          <span class="input-group-text" id="inputGroup-sizing-default">Kasutajanimi</span>
          <input type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default">
        </div>

        <div class="input-group mb-3">
          <span class="input-group-text" id="inputGroup-sizing-default">parool</span>
          <input type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default">
        </div>

        <div class="d-grid gap-2 col-6 mx-auto">
          <button class="btn btn-primary" type="button">Logi sisse</button>
        </div>

      </div>


    </div>


  </div>
</template>
<script>
export default {
  name: 'LogIn'
}
</script>