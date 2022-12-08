<template>
  <div id="app">
  <!--  SIIN komponendis App.vue rida 44 on @updateStatusEvent listener, mis käivitab siin komponendis oleva meetodi 'updateStatus'  -->
  <!--  updateStatusEvent EVENT visatakse õhku LogIn.vue komponendist (rida 97 või 105)  -->
  <!--  HomeView.vue komponendis (rida 15) on selline süntaks (v-on="$listeners"), mis viskab lihtsalt omakorda 'emiti' edasi ülesse poole  -->
  <!--  mis siis püütaksegi kinni siin kompinendis App.vue real 44  -->

    <!--  ILMA SISSE LOGIMATA  -->
    <div v-if="displayWithLogin">
      <nav>
        <router-link to="/">Home</router-link>
        |
        <router-link to="/atm">ATM</router-link>
        |
        <router-link to="/customer">Kliendid</router-link>
        |
        <router-link to="/photo">Lisa pilt</router-link>
        |
        <router-link to="/car">Auto</router-link>
        |
        <router-link to="/about">Meist</router-link>

        <button>LOGIN</button>
      </nav>

    </div>
    <!--  SISSE LOGITUD  -->
    <div v-else>
      <nav>
        <router-link to="/">Home</router-link>
        |
        <router-link to="/atm">ATM</router-link>
        |
        <router-link to="/customer">Kliendid</router-link>
        |
        <router-link to="/photo">Lisa pilt</router-link>
        |
        <router-link to="/car">Auto</router-link>
        |
        <router-link to="/about">Meist</router-link>
      </nav>
    </div>

    <router-view @updateStatusEvent="updateStatus"/>
  </div>
</template>
<script>
export default {
  name: "App",
  data: function () {
    return {
      displayWithLogin: true,
      userId: sessionStorage.getItem('userId')
    }
  },
  methods: {
    updateStatus: function () {
      this.userId = sessionStorage.getItem('userId')
      // kui userId on tühi, siis displayWithLogin = true
      // kui userId on täidetud, siis displayWithLogin = false
      this.displayWithLogin = this.userId == null

    }
  },
  mounted() {
    this.updateStatus()
  }
}
</script>

<style>
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
}

nav {
  padding: 30px;
}

nav a {
  font-weight: bold;
  color: #2c3e50;
}

nav a.router-link-exact-active {
  color: #42b983;
}
</style>
