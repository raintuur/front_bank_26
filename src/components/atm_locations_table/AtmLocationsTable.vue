<template>
  <table class="table table-dark table-hover">
    <thead>
    <tr>
      <th scope="col">Nr.</th>
      <th scope="col">Linn</th>
      <th scope="col">Asukoht</th>
      <th scope="col">Teenused</th>
      <th scope="col">nupp</th>
    </tr>
    </thead>
    <tbody>
    <!--            todo: seda elementi hakkame for loopima objektist 'atmLocations'-->
    <!--            todo: eesmärk on saada see info propsist -->
    <!--            ('atmLocations' objekt tuleb komponenti kaasa anda)-->
    <!--            todo: tekitame ise järjekorra numbrid-->
    <tr v-for="atmLocation in atmLocations" :key="atmLocations.atmLocationInfo">
      <th scope="row">{{atmLocation.sequenceNumber}}</th>
      <td>{{ atmLocation.cityName }}</td>
      <td>{{ atmLocation.atmLocationInfo }}</td>
      <td>
        <div v-for="service in atmLocation.atmServices" class="row">
          {{ service.serviceName }}
        </div>
      </td>
      <td>
        <button v-on:click="clickAlertButtonEvent(atmLocation.atmLocationInfo)" type="button" class="btn btn-light">Alert</button>
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
  mounted() {



    let counter = 1
    this.atmLocations.forEach(location => {
      location.sequenceNumber = counter
      counter++
    })
  },
  methods: {
    clickAlertButtonEvent: function (locationName) {
      alert(locationName)
      this.$emit('clickAlertButtonEvent',locationName)
    }
  }
}
</script>

