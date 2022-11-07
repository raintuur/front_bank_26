<template>
  <div>

    <div class="container">
      <div class="row justify-content-start">
        <div class="col col-lg-3">


          <CitiesDropdown @clickSelectCityEvent="getAllAtmLocationsById"/>


          <div class="row">

            <ServicesCheckbox/>

          </div>

        </div>

        <div class="col col-lg-9">
          <AtmLocationsTable :atm-locations="atmLocations" @clickAlertButtonEvent="clickAlertButtonEvent"/>
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

    clickAlertButtonEvent: function (locationName) {
      alert(locationName + 'alert from parent')

    },
    getAllAtmLocations: function () {
      this.$http.get("/atm/info")
          .then(response => {
            this.atmLocations = response.data
            this.addSequenceNumbers();

          })
          .catch(error => {
            console.log(error)
          })
    },

    getAllAtmLocationsById: function (selectedCityId) {
      alert('cityId ' + selectedCityId)
      this.$http.get("/atm/info/by-city", {
            params: {
              cityId: 15
            }
          }
      ).then(response => {
        this.atmLocations = response.data
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









