<template>
  <table class="table table-dark table-hover">
    <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">Linn</th>
      <th scope="col">Asukoht</th>
      <th scope="col">Teenused</th>
      <th scope="col">nupp</th>
    </tr>
    </thead>
    <tbody>

    <!-- todo: tekitame ise järjekorra numbrid -->
    <tr v-for="atmLocation in atmLocations" :key="atmLocation.locationId">
      <th scope="row">{{ atmLocation.sequenceNumber }}</th>
      <td>{{ atmLocation.cityName }}</td>
      <td>{{ atmLocation.locationName }}</td>
      <td>
        <div v-for="option in atmLocation.options" class="row">
          {{ option.optionName }}
        </div>
      </td>
      <td>
        <button v-on:click="clickAlertButtonEvent(atmLocation.locationName)" type="button" class="btn btn-light">
          Alert
        </button>
      </td>

    </tr>
    </tbody>
  </table>
</template>

<script>
export default {
  name: 'AtmLocationsTable',
  props: {
    atmLocations: Array()
  },
  methods: {
    clickAlertButtonEvent: function (locationName) {
      this.$emit('clickAlertButtonEvent', locationName)
    }
  }
}
</script>

