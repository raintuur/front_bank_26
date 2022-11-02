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
      <div class="row">
        <button type="button" class="btn btn-outline-success">Success</button>
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
      alert('Hello World')
    }
  }


}


</script>
