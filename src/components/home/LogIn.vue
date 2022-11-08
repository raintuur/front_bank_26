<template>
  <div>

    <div class="row justify-content-center">
      <div class="col-lg-6">

        <h4>Sisselogimine</h4>

        <div class="input-group mb-3">
          <span class="input-group-text">Kasutajanimi</span>
          <input v-model="username" type="text" class="form-control">
        </div>

        <div class="input-group mb-3">
          <span class="input-group-text">Parool</span>
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
      password: ''
    }
  }
}
</script>