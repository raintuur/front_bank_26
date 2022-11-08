<template>
  <div class="row row-cols-1 justify-content-center">
    <div class="col">
      <h3>Sisselogimine</h3>
    </div>
    <div class="col col-sm-5">
      <LoginError :message="message"/>
    </div>

    <div class="w-100"></div>

    <div class="col col-sm-5">
      <div class="input-group mb-3">
        <span class="input-group-text" id="basic-addon1">Kasutajanimi</span>
        <input v-model="username" type="text" class="form-control" placeholder="kasutajanimi" aria-label="Username"
               aria-describedby="basic-addon1">
      </div>
    </div>

    <div class="w-100"></div>

    <div class="col col-sm-5">
      <div class="input-group mb-3">
        <span class="input-group-text" id="basic-addon2">Parool</span>
        <input v-model="password" type="password" class="form-control" placeholder="parool" aria-label="Username"
               aria-describedby="basic-addon2">
      </div>
    </div>

    <div class="w-100"></div>

    <div class="col col-sm-5">
      <button v-on:click="login" type="button" class="btn btn-primary">Logi sisse</button>
    </div>

  </div>
</template>
<script>
import LoginError from "@/components/home/LoginError";

export default {
  name: 'Login',
  components: {LoginError},
  data: function () {
    return {
      username: '',
      password: '',
      message: ''
    }
  },

  methods: {
    login: function () {
      if(this.username.length <= 0 || this.password.length <= 0) {
        this.message = 'Täida kõik väljad!'
      } else {
        this.message = ''
        this.$http.get("/some/path", {
              params: {
                username: this.username,
                password: this.password
              }
            }
        ).then(response => {
          console.log(response.data)
        }).catch(error => {
          console.log(error)
        })
      }
    },



  },

}
</script>