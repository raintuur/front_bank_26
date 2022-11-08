<template>
  <div class="home">

    <div class="row">
      <h1>(siia tuleb logo) Meie pank on kige lahedam</h1>
    </div>
    <div class="row justify-content-center">
      <div class="col-lg-4">
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
