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
    <tr v-for="atmLocation in atmLocations">
      <th scope="row">{{ atmLocation.sequenceNumber }}</th>
      <td>{{ atmLocation.cityName }}</td>
      <td>{{ atmLocation.atmLocationInfo }}</td>
      <td>
        <div class="row" v-for="service in atmLocation.atmServices">
          {{ service.serviceName }}
        </div>
      </td>
      <td>
        <button v-on:click="clickAlertButtonEvent(atmLocation.atmLocationInfo)" type="button"
                class="btn btn-light">Alert button
        </button>
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
  methods: {
    clickAlertButtonEvent: function (locationName) {
      this.$emit('clickAlertButtonEvent', locationName)
    },
  }
}
</script>
