<template>

  <div>
    <div class="container">
      <div class="row justify-content-start">
        <div class="col col-lg-5">
          <CitiesDropdown @clickSelectCityEvent="getAtmLocationsById()" />
          <div class="row mt-5">
            <ServicesCheckbox/>
          </div>
        </div>
        <div class="col col-lg-7" >
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
            console.log(response.data)
            this.addSequenceNumbers();
          })
          .catch(error => {
            console.log(error)
          })
    },

    getAtmLocationsById: function (selectedCityId) {
      this.$http.get("/atm/info/by-city", {
            params: {
              cityId: 0
            }
          }
      ).then(response => {
        this.atmLocations = response.data
        this.addSequenceNumbers()
        console.log(response.data)
      }).catch(error => {
        console.log(error)
      })
    },


    addSequenceNumbers: function () {
      let counter = 1
      this.atmLocations.forEach(location => {
        location.sequenceNumber = counter
        counter++
      });
    }
  },
  beforeMount() {
    this.getAllAtmLocations()
  }
}
</script>









