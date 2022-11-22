<template>
  <table class="table table-dark table-striped">
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

    <!--  todo: seda elementi hakkame for loopima objektist 'atmLocations'  -->
    <!--  todo: eesmärk on saada see info propsist ('atmLocations' objekt tuleb componenti kaasa anda) -->
    <!--  todo: tekitame ise järjekorra numbrid  -->
    <tr v-for="atmLocation in atmLocations" :key="atmLocation.locationId">
      <th scope="row">{{atmLocation.sequenceNumber}}</th>
      <td>{{ atmLocation.cityName }}</td>
      <td>{{ atmLocation.locationName }}</td>
      <td>
        <div v-for="option in atmLocation.options" class="row">
          {{option.optionName}}
        </div>
      </td>
      <td>
        <button v-on:click="clickNavigateToAdminEvent(atmLocation.locationId)" type="button" class="btn btn-light">
          Lisa ATM asukohta
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
    clickNavigateToAdminEvent: function (locationId) {
      this.$emit('clickNavigateToAdminEvent', locationId)
    }

  }
}
</script>
