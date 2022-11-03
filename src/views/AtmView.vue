<template>
  <div>

    <div class="container">
      <div class="row justify-content-center">
        <div class="col col-lg-3">
          <input v-model="firstName" type="text" class="form-control" placeholder="First name" aria-label="First name">
        </div>
        <div class="col col-lg-3">
          <input v-model="lastName" type="text" class="form-control" placeholder="Last name" aria-label="Last name">
        </div>
      </div>
      <div class="row justify-content-md-center">
        <div class="col col-lg-3 m-3">
          <button v-on:click="helloWorld()" type="button" class="btn btn-lg  btn-outline-info">Info
          </button>
        </div>
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
    helloWorld: function () {
      alert('Hello ' + this.firstName + ' ' + this.lastName)
    }
  }

}


</script>
