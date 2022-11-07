<template>
  <div>

    <div class="container">
      <div class="row justify-content-start">
        <div class="col col-lg-3">
          <CitiesDropdown/>
          <div class="row">
            <ServicesCheckbox/>
          </div>
        </div>
        <div class="col col-lg-9">
          <AtmLocationsTable :atm-locations="atmLocations"/>
        </div>
      </div>
    </div>


  </div>
</template>

<script>
import CitiesDropdown from "@/components/CitiesDropdown";
import ServicesCheckbox from "@/components/ServicesCheckbox";
import AtmLocationsTable from "@/components/atm_locations_table/AtmLocationsTable";

export default {
  name: 'AtmView',
  components: {ServicesCheckbox, CitiesDropdown, AtmLocationsTable},
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
            this.atmLocations = response.data
            this.addSequenceNumbers()
            // console.log(response.data)
          })
          .catch(error => {
            console.log(error)
          })
    },
    addSequenceNumbers: function (){
      let counter = 1
      this.atmLocations.forEach(location => {
        location.sequenceNumber = counter
        counter++
      } )
    }
  },
  beforeMount() {
    this.getAllAtmLocations()
  }
}


</script>









