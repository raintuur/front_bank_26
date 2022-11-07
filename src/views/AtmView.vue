<template>
  <div>

    <div class="container">
      <div class="row justify-content-start">
        <div class="col col-lg-3">
          <CitiesDropdown @clickSelectCityEvent="getAtmLocationsById"/>
        </div>
        <div class="col col-lg-9">
          <AtmLocationsTable :atm-locations="atmLocations"@clickAlertButtonEvent="alertLocationName"/>
        </div>
      </div>
      <div class="row row-cols-lg-3">
        <ServicesCheckbox/>
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

    alertLocationName: function (locationName) {
      alert(locationName + ' alert from parent')

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

    getAtmLocationsById: function (selectedCityId) {
      this.$http.get("/atm/info/by-city", {
            params: {
              cityId: selectedCityId
            }
          }
      ).then(response => {
        this.atmLocations = response.data
        this.addSequenceNumbers();
        console.log(response.data)
      }).catch(error => {
        console.log(error)
      })
    },
    
    
    addSequenceNumbers: function(){
      let counter =1
      this.atmLocations.forEach(location => {
        location.sequenceNumber = counter
        counter++
      });

    }
  },
  beforeMount() {
    this.getAllAtmLocations()
    this.getAllLocationsById()
  }
}


</script>









