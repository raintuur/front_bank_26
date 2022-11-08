<template>
  <div class="home">
    <div class="row justify-content-start">
      <h1>? - (todo: Siia tuleb logo) Meie pank on kõige lahedam! :)</h1>
    </div>
    <div class="row mt-5">
      <div class="col-7">
        <HomeGreeting/>
      </div>
      <div class="col-5">
        <Login/>
      </div>
    </div>
  </div>
</template>

<script>

import Login from "@/components/home/Login";
import HomeGreeting from "@/components/home/HomeGreeting";

export default {
  name: 'HomeView',
  components: {HomeGreeting, Login},
}
</script>
