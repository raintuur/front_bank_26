<template>
  <div>
    <h1>See on adminni koduvaade</h1>
    <h3>Admin id on {{adminId}}</h3>
  </div>
</template>

<script>
export default {
  name: 'AdminHomeView',
  data: function (){
    return {
      adminId: sessionStorage.getItem('userId')
    }
  }
}
</script>
