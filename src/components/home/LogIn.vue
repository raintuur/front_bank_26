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

        <div v-if="message.length > 0" class="alert alert-danger" role="alert">
          {{ message }}
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
      message: 'Mingi tekst'
    }
  },
  methods: {


    login: function () {
      if (this.username.length <= 0 || this.password.length <= 0) {

      } else {

        this.$http.get("/some/path", {
              params: {
                someRequestParam1: this.someDataBlockVariable1,
                someRequestParam2: this.someDataBlockVariable2
              }
            }
        ).then(response => {
          console.log(response.data)
        }).catch(error => {
          console.log(error)
        });
      }
    },
  }
}
</script>