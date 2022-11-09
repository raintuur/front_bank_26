<template>
  <div>
    <h1>Kliendi koduvaade</h1>
    <h1>Kliendi ID: {{userId}}</h1>
  </div>
</template>

<script>
import router from "@/router";

export default {
  name: "CustomerHomeView",
  data: function () {
    return {
      userId: this.$route.query.userId
    }
  }
}
</script>
