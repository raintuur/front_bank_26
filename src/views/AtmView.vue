<template>
  <div>

    <div class="d-flex justify-content-center">
      <div class="row">
        <div class="col">
          <input v-model="firstName" type="text" class="form-control" placeholder="Eesnimi" aria-label="First name">
        </div>
        <div class="col">
          <input v-model="lastName" type="text" class="form-control" placeholder="Perekonnanimi" aria-label="Last name">
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
  }
}

</script>
