<template>

  <div>
    <div class="d-flex justify-content-center">
      <div class="row">
        <div class="col">
          <input v-model="firstName" type="text" class="form-control" placeholder="First name" aria-label="First name">
        </div>
        <div class="col">
          <input v-model="lastName" type="text" class="form-control" placeholder="Last name" aria-label="Last name">
        </div>
      </div>

    </div>
    <button v-on:click="helloWorld(firstName, lastName)" type="button" class="btn btn-outline-success m-5">Success</button>


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
  },
}

</script>
