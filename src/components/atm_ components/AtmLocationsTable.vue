<template>
  <table class="table table-light table-striped table-hover">
    <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">Linn</th>
      <th scope="col">Asukoht</th>
      <th scope="col">Teenused</th>
      <th scope="col">???Nupp</th>
    </tr>
    </thead>
    <tbody>
    <!--todo: Seda elementi hakkame for loopima atmLocations-->
    <!--todo: Eesmärk saada see info propsist-->
    <!--todo: tekitame ise järjekorra numbrid-->
    <tr v-for="atmTable in atmTables">
      <th scope="row">{{ atmTable.SequenceNumber }}</th>
      <td>{{ atmTable.cityName }} </td>
      <td>{{ atmTable.locationName }}</td>
      <td>
        <div class="row row-cols-1">
          <div v-for="option in atmTable.atmOptions" class="col">

            {{ option.optionName }}
          </div>
        </div>
      </td>
      <td>
        <button v-on:click="clickNavigateToAdminEvent(atmTable.locationId)"
                type="button" class="btn btn-outline-dark"> Lisa ATM asukohta </button>
      </td>
    </tr>
    </tbody>
  </table>
</template>

<script>
export default {
  name: "AtmLocationsTable",

  props: {
    atmTables: {}
  },

  methods: {
    clickNavigateToAdminEvent: function (locationId) {
      this.$emit('clickNavigateToAdminEvent',locationId)
    }
  }
}

</script>
