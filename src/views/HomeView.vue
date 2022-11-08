<template>
  <div class="home">

    <div class="row">
      <h1>☺ - Meie pank on kõige lahedam!!!</h1>
    </div>

    <div class="row justify-content-center">

      <div class="col-lg-4">
        <HomeviewGreeting/>
      </div>

      <div class="col-lg-6">
        <LogIn/>
      </div>

    </div>
  </div>
</template>

<script>

import HomeviewGreeting from "@/components/home/HomeviewGreeting";
import LogIn from "@/components/home/LogIn";

export default {
  name: 'HomeView',
  components: {LogIn, HomeviewGreeting},
}
</script>
