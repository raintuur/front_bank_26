<template>
  <div>

    <div class="container">
      <div class="row justify-content-start">
        <div class="col col-lg-3">
          <CitiesDropdown @clickSelectCityEvent="getAtmLocationsById"/>
          <div class="row">
            <ServicesCheckbox :atm-options="atmOptions"/>
          </div>
        </div>

        <div class="col col-lg-9">
          <AtmLocationsTable :atm-locations="atmLocations" @clickNavigateToAdminEvent="navigateToAdminPage"

          />
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

      atmOptions: [
        {
          optionId: 0,
          optionName: '',
          isSelected: false
        }
      ],

      atmLocations: [
        {
          locationId: 0,
          locationName: '',
          cityName: '',
          options: [
            {
              optionName: ''
            }
          ]
        }
      ],


    }
  },
  methods: {

    navigateToAdminPage: function (locationId) {
      sessionStorage.setItem('locationId', 'locationId')
      this.$router.push({name: 'adminHomeRoute'})
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
      alert('Klick event juhtus, saime parentis sõnumi ja käivitasime selle meetodi, City id: ' + selectedCityId)


      this.$http.get("/atm/info/by-city", {
            params: {
              cityId: selectedCityId
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
    },
    getAtmServicesCheckboxInfo: function () {
      this.$http.get('/atm/option')
          .then(result => {
            this.atmOptions = result.data
          })
          .catch(error => {
            alert("NO!!!!")
          });
    },

  },
  beforeMount() {
    this.getAllAtmLocations()
    this.getAtmServicesCheckboxInfo()
  }
}


</script>









