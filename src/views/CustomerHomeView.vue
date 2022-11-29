<template>
  <div>
    <h1>Kliendi koduvaade</h1>
    <h3>Kliendi ID on {{userId}}</h3>
  </div>
</template>

<script>

export default {
  name: 'CustomerHomeView',
  data: function () {
    return {
      userId: this.$route.query.userId
    }
  }
}
</script>