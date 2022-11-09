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
      errorMessage: '',
      loginInfo: {
        userId: '',
        roles: [
          {
            roleName: ''
          }
        ]
      }
    }
  },
  methods: {

    login: function () {

      this.errorMessage = ''

      console.log('OLEN SIIIN')
      if (this.username.length === 0 || this.password.length === 0) {
        this.errorMessage = 'Täida kõik väljad!'
      } else {

        let preference = ''
        switch (this.username) {
          case 'admin':
            preference = 'code=200, example=200 - admin';
            break;
          case 'multirole':
            preference = 'code=200, example=200 - multirole';
            break;
          case 'customer':
            preference = 'code=200, example=200 - customer';
            break;
        }

        this.$http.get("/bank/login", {

              headers: {
                'Content-Type': 'application/json', Prefer: preference
              },
              params: {
                username: this.username,
                password: this.password
              }
            }
        ).then(response => {
          this.loginInfo = response.data
          // todo: kui kasutajal on vaid üks roll ja see on admin, siis mine admin lehele
          // siis mine admin lehele
          if (this.loginInfo.roles.length > 1) {
            // kasutajal on mitu rolli

          } else {
            // kasutajal on vaid üks roll
            if (this.loginInfo.roles[0].roleName === 'admin') {
              // siis mine admin lehele
              sessionStorage.setItem('userId', this.loginInfo.userId)
              this.$router.push({name: 'adminHomeRoute'});
            } else {
              this.$router.push({name: 'customerHomeRoute', query: {
                userId: this.loginInfo.userId,
                roleName: this.loginInfo.roles[0].roleName
                }})
            }
          }

          console.log(response.data);
        }).catch(error => {
          console.log(error)
        });
      }
    },

  }
}
</script>