<template>
  <div>
    <div class="container">
      <div class=" row justify-content-start ">
        <div class="col col-lg-3 mb-5">
          <CitiesDropDown/>
        </div>
        <div class="col col-lg-9 mb-5">
          <atm-locations-table/>
        </div>
      </div>
      <div class="row row-cols-1 justify-content-start mt-5">
        <CitiesServicesCheckbox/>
      </div>
    </div>
  </div>
</template>

<script>
import CitiesDropDown from "@/components/atm_ components/CitiesDropDown";
import CitiesServicesCheckbox from "@/components/atm_ components/CitiesServicesCheckbox";
import AtmLocationsTable from "@/components/atm_ components/AtmLocationsTable";

export default {
  name: 'AtmView',
  components: {CitiesServicesCheckbox, CitiesDropDown, AtmLocationsTable},
  data: function () {
    return {
      atmTables: [
        {
          cityName: '',
          atmLocationInfo: '',
          atmServices: [
            {
              atmServiceName: ''
            }
          ]
        }
      ]
    }
  },
  methods: {
    getAtmTableInfo: function () {
      this.$http.get("/atm/info")
          .then(response => {
            this.atmTable = response.data
            console.log(response.data)
          })
          .catch(error => {
            console.log(error)
          })
    },
  },
  beforeMount() {
    this.getAtmTableInfo()
    let counter = 1
    this.atmTables.forEach(tablerow => {
      tablerow.sequenceNumber = counter++
    }
    )
  }

}
</script>
