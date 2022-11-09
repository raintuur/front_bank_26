<template>
  <div>
    <h3>Sisselogimine</h3>

    <div class="row justify-content-center">

      <div class="col-lg-5">

        <AlertError :message="errorMessage"/>


        <div class="input-group mb-3">
          <span class="input-group-text">Kasutajanimi</span>
          <input v-model="username" type="text" class="form-control">
        </div>

        <div class="input-group mb-3">
          <span class="input-group-text">Parool</span>
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
      errorMessage: ''
    }
  },
  methods: {
    login: function () {

      this.errorMessage = ''
      if (this.username.length == 0 || this.password.length == 0) {
        this.errorMessage = 'Täida kõik väljad'
      } else {

        let preference = ''
        let value = this.username
        switch (this.username) {
          case 'admin' :
            preference = 'code=200, example=200 - admin'
            break;
          case 'multirole' :
            preference = 'code=200, example=200 - multirole'
            break;

          case 'customer' :
            preference = 'code=200, example=200 - customer'
            break;
        }

      }

      this.$http.get("bank/login", {
            params: {
              username: this.username,
              password: this.password
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
</script>