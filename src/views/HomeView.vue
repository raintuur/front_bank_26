<template>
  <div class="home">
    <div class="row">
      <!--  todo: Font Awesome icon    -->
      <h1>? Meie pank on kõige lahedam!!!</h1>
    </div>
    <div class="row justify-content-center">
      <div class="col-lg-4">
        <HomeViewGreeting/>
      </div>
      <div class="col-lg-6">

        <!--    SELLINE v-on="$listeners" viskab childist tuleva emiti ülesse edasi   -->
        <!--    ehk siis see emit jõuab App.vue'sse edasi   -->
        <LogIn v-on="$listeners"/>
      </div>
    </div>
  </div>
</template>

<script>

import HomeViewGreeting from "@/components/home/HomeViewGreeting";
import LogIn from "@/components/home/LogIn";

export default {
  name: 'HomeView',
  components: {LogIn, HomeViewGreeting}
}
</script>
