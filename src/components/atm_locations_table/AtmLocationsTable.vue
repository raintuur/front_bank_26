<template>

  <table class="table table-dark table-hover">
    <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">Linn</th>
      <th scope="col">Asukoht</th>
      <th scope="col">Teenused</th>
      <th scope="col">Nupp</th>
    </tr>
    </thead>
    <tbody>
    <tr v-for="atmLocation in atmLocations" :key="atmLocation">
      <th scope="row">{{ atmLocations.sequenceNumber }}</th>
      <td>{{ atmLocation.cityName }}</td>
      <td>{{ atmLocation.atmLocationInfo }}</td>
      <td>

        <div v-for="service in atmLocation.atmServices" class="row">
          {{ service.serviceName }}
        </div>

      </td>

      <td>

        <div class="row">
          <button type="button" class="btn btn-light">Light</button>
        </div>

      </td>


    </tr>
    </tbody>

  </table>

</template>

<script>
export default {
  name: "AtmLocationsTable",
  props: {
    atmLocations: Array()
  },
  beforeMount() {

    let counter = 1

    this.atmLocations.forEach(location => {

      location.sequenceNumber = counter
      counter++

    })
  }
}
</script>

<style scoped>

</style>