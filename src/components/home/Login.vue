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
      <button v-on:click="login(11)" type="button" class="btn btn-primary">Logi sisse</button>
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
      message: '',
      loginInfo:
          {
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

      let preference = ''
      let value = this.username
      switch (value) {
        case 'multirole':
          preference = 'code=200, example=200-' + value
          break
        case 'admin':
          preference = 'code=200, example=200-' + value
          break
        case 'customer':
          preference = 'code=200, example=200-' + value
          break
      }

      if (this.username.length <= 0 || this.password.length <= 0) {
        this.message = 'Täida kõik väljad!'
      } else {
        this.message = ''
        this.$http.get("/login", {
              headers: {
                'Content-Type': 'application/json',
                Prefer: preference
              },
              params: {
                username: this.username,
                password: this.password
              }
            }
        ).then(response => {
          console.log(response.data)
          this.loginInfo = response.data

          if (this.loginInfo.roles.length > 1) {
            //multirole

          } else {
            switch (this.loginInfo.roles[0].roleName) {
              case 'admin':
                sessionStorage.setItem('userId',this.loginInfo.userId)
                this.$router.push({name:'adminHomeRoute'})
                break
              case 'customer':
                this.$router.push({name:'customerHomeRoute', query: {userId:this.loginInfo.userId}})
                break
            }
          }

        }).catch(error => {
          console.log(error)
        })
      }
    },


  },

}
</script>