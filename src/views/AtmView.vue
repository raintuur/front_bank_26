<template>
  <div>

    <div class="container">
      <div class="row justify-content-start">
        <div class="col col-sm-5">
          <CitiesDropdown/>
          <ServicesCheckBox/>
        </div>
        <div class="col col-sm-7">
          <AtmLocationsTable :atm-locations="atmLocations"/>
        </div>
      </div>
    </div>

  </div>
</template>

<script>
import CitiesDropdown from "@/components/CitiesDropdown";
import ServicesCheckBox from "@/components/ServicesCheckBox";
import AtmLocationsTable from "@/components/atm_locations_table/AtmLocationsTable";

export default {
  name: 'AtmView',
  components: {ServicesCheckBox, CitiesDropdown, AtmLocationsTable},
  data: function () {
    return {

      atmLocations: [
        {
          cityName: '',
          atmLocationInfo: '',
          atmServices: [
            {
              serviceName: ''
            }
          ]
        }
      ],

    }
  },
  methods: {

    getAllAtmLocations: function () {
      this.$http.get("/atm/info")
          .then(response => {

            // this.atmLocations = response.data

            console.log(response.data)
          })
          .catch(error => {
            console.log(error)
          })
    },
  },
  beforeMount() {
    this.getAllAtmLocations()
  }
}
</script>