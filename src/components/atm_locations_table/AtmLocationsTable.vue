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
      <th scope="row">1</th>
      <td>{{ atmLocation.cityName}}</td>
      <td>Otto</td>
      <td>
        <div class="row">
          ???
        </div>
      </td>
      <td>
        <button type="button" class="btn btn-light">Alert</button>
      </td>
    </tr>
    </tbody>
    <!-- todo: seda elementi hakkame for loopima objektist atmLocations'   -->
    <!-- todo: eesmärk on saada see info propsist
    ('atmLocations' objekt tuleb componenti kaasa anda)-->
    <!-- todo: tekitame ise järjekorra numbrid   -->
  </table>
</template>

<script>
export default {
  name: 'AtmLocationsTable',
  props: {
    atmLocations: []
  },
  beforeMount() {
    alert(JSON.stringify(this.atmLocations))
  }
}
</script>
