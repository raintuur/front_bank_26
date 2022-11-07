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
    <tr v-for="atmLocation in atmLocations" :key="atmLocation.atmLocationInfo">
      <th scope="row">{{ atmLocation.sequenceNumber}}</th>
      <td>{{atmLocation.cityName}}</td>
      <td>{{ atmLocation.atmLocationInfo }}</td>
      <td>
        <div v-for="service in atmLocation.atmServices" class="row">
          {{service.serviceName}}
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

}
</script>

