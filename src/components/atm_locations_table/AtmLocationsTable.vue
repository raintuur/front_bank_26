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
    <tr v-for="atmLocation in atmLocations">
      <th scope="row">?</th>
      <td>{{atmLocation.atmL}}</td>
      <td>Otto</td>
      <td>
        <div class=" row">
          ?????
        </div>
      </td>
      <td>
        <button type="button" class="btn btn-light">Alert</button>
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
  beforeMount() {

    alert(JSON.stringify(this.atmLocations))
  }
}
</script>

