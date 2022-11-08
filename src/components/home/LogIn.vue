<template>
  <div>
    <h3>Sisselogimine</h3>

    <div class="row justify-content-center">

      <div class="col-lg-5">

        <div class="input-group mb-3">
          <span class="input-group-text">Kasutajanimi</span>
          <input v type="text" class="form-control" >
        </div>

        <div class="input-group mb-3">
          <span class="input-group-text">parool</span>
          <input v-model="password" type="password" class="form-control">
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
  name: 'LogIn',
  data: function () {
    return {
      username: '',
      password: '',
    }
  }
}
</script>