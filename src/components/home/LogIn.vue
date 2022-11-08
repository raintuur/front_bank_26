<template>
  <div>
    <h3>Sisselogimine</h3>

    <div class="row justify-content-centers">
      <div class="col-lg-6">
        <AlertError :message="message"/>
        <div class="input-group mb-3">
          <span class="input-group-text">Kasutajanimi</span>
          <input v-model="username" type="text" class="form-control">
        </div>
        <div class="input-group mb-3">
          <span class="input-group-text" >Parool</span>
          <input v-model="password" type="password" class="form-control">
        </div>

        <div class="d-grid gap-2 col-6 mx-auto">
          <button v-on:click="login" class="btn btn-primary" type="button">Logi sisse</button>

        </div>
      </div>

    </div>
  </div>
</template>
<script>
import AlertError from "@/components/alert/AlertError";

export default {
  name: 'LogIn',
  components: {AlertError},
  data: function () {
    return {
      username: '',
      password: '',
      message: 'MINGI TEKS'
    }

  },
  methods: {
    login: function () {
      this.message = ''
      if (this.username.length == 0 || this.password.length == 0) {
        this.message = 'Tida kõik väljad'
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
        })
      }
    },
  }
}
</script>

<!--<div class="w-100"></div>
-->