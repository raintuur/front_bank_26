<template>
  <div>
    <h1>See on kliendi koduvaade</h1>
    <h3>Sinu userId on {{userId}}</h3>
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
