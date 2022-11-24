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
          <span class="input-group-text">parool</span>
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

      loginResponse: {
        userId: '',
        roleId: 0,
        roleType: 0,
      },
      errorMessage: '',
      errorCode: ''
    }
  },
  methods: {
    login: function () {

      this.errorMessage = ''
      this.$http.get("/login", {
            params: {
              username: this.username,
              password: this.password
            }
          }
      ).then(response => {
        this.loginResponse = response.data

        if (this.loginResponse.roleType === 'admin') {
          sessionStorage.setItem('userId', this.loginResponse.userId)
          this.$router.push({
            name:'adminHomeRoute'
          })
        } else {

          this.$router.push({
            name: 'customerHomeRoute', query {
              userId: this.loginResponse.userId,
              roleName: this.loginResponse.roleType
            }
          })
        }

      }).catch(error => {
        this.errorMessage = error.response.data.message
        this.errorCode = error.response.data.errorCode
        console.log(error)
      })
    },

  }
}
</script>