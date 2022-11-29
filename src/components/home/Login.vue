<template>
  <div>
    <h3>Sisselogimine</h3>

    <div class="row justify-content-center">

      <div class="col-lg-5">

        <AlertError :message="errorResponse"/>


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
      errorResponse: {
        message: '',
        errorCode: 0
      },
      loginResponse: {
        userId: 0,
        roleId: 0,
        roleType: '',
      }
    }
  },
  methods: {
    pushToAdminPage: function () {
      sessionStorage.setItem('userId', this.loginInfo.userId)
      this.$router.push({name: 'adminHomeRoute'})
    },

    pushToCustomerPage: function () {
      sessionStorage.setItem('userId', this.loginInfo.userId)
      this.$router.push({name: 'customerHomeRoute'})
    },

    checkRoleType: function () {
      if (this.loginInfo.roleType === 'admin') {
        this.pushToAdminPage();
      } else {
        this.pushToCustomerPage();
      }
    },

    displayRequiredFieldsNotFilledAlert: function () {
      this.errorResponse.message = 'Täida kõik väljad'
    },

    sendLoginRequest: function () {
      this.$http.get("/login", {
            params: {
              username: this.username,
              password: this.password
            }
          }
      ).then(response => {
        console.log(response.data)
        this.loginInfo = response.data
        this.checkRoleType();
      }).catch(error => {
        this.errorResponse = error.response.data
        console.log(error)
      });
    },

    login: function () {
      this.errorResponse.message = ''
      if (this.username.length === 0 || this.password.length === 0) {
        this.displayRequiredFieldsNotFilledAlert();
      } else {
        this.sendLoginRequest();
      }
    },
  }
}
</script>