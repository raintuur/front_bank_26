<template>
  <div>

    <div class="d-flex justify-content-center">
      <div class="row-cols-1">
        <div class="col-lg-10">
          <input v-model="firstName" type="text" class="form-control" placeholder="First name" aria-label="First name">
        </div>
        <div class="col-lg-10">
          <input v-model="lastName" type="text" class="form-control" placeholder="Last name" aria-label="Last name">
        </div>
      </div>

      <div class="row">
      <button v-on:click="helloWorld('Nipi','Tiri')" type="button" class="btn btn-outline-success">Success</button>
      </div>
    </div>


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
  methods: {
    helloWorld: function (firstName, lastName) {
      alert('Hello '+ this.firstName +' '+ this.lastName)

    }
  }


}


</script>

