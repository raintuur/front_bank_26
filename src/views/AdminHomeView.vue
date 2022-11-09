<template>
  <div>
    <h1>Admin koduvaade</h1>
    <h3>Admini id: {{adminId}}</h3>

  </div>
</template>

<script>
export default {
  name: 'AdminHomeView',
  data: function () {
    return {
      adminId: sessionStorage.getItem('userId')
    }
  }
}
</script>