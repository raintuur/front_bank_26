<template>
  <div>
Tere maailm
    <div class="d-flex justify-content-center">
      <div class="row">
        <div class="col">
          <input v-model="firstName" type="text" class="form-control" placeholder="First name" aria-label="First name">
        </div>
        <div class="col">
          <input v-model="lastName" class="form-control" placeholder="Last name" aria-label="Last name">
        </div>
      </div>

    </div>
    <input :value="firstName">
    <br>
    <br>
    Eesnimi: {{firstName}}
    <br>
    Perekonnanimi:{{lastName}}







  </div>
</template>

<script>
export default {
  name: 'AtmView',
  data: function () {
    return {
      firstName: '',
      lastName: ''
    }

  },



}


</script>

