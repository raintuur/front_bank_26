<template>
  <div class="home">

    <div class="row">
<!--      todo: Font Awesome icon-->
      <h1> ? - (todo: siia tuleb awesome logo)</h1>
    </div>
    <div class="row ">

      <div class="col-6">
        <HomeViewGreeting/>
      </div>

      <div class="col-lg-6">
        <LogIn/>
      </div>
    </div>
  </div>

</template>

<script>

import HomeViewGreeting from "@/components/home/HomeViewGreeting";
import LogIn from "@/components/home/LogIn";

export default {
  name: 'HomeView',
  components: {LogIn, HomeViewGreeting},
}
</script>
