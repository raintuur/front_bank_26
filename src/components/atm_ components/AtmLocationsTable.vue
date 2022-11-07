<template>
  <table class="table table-dark table-hover">
    <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">First</th>
      <th scope="col">Last</th>
      <th scope="col">Handle</th>
    </tr>
    </thead>
    <tbody>
    <!--todo: Seda elementi hakkame for loopima atmLocations-->
    <!--todo: Eesmärk saada see info propsist-->
    <!--todo: tekitame ise järjekorra numbrid-->
    <tr v-for="atmtable in atmTables">
      <th scope="row">1</th>
      <td>Mark</td>
      <td>Otto</td>
      <td>@mdo</td>
    </tr>
    <tr>
      <th scope="row">2</th>
      <td>Jacob</td>
      <td>Thornton</td>
      <td>@fat</td>
    </tr>
    <tr>
      <th scope="row">3</th>
      <td colspan="2">Larry the Bird</td>
      <td>@twitter</td>
    </tr>
    </tbody>
  </table>
</template>

<script>
export default {
  name: "AtmLocationsTable",

  props: {

  }

}
</script>


<style scoped>

</style>