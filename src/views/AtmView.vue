<template>
  <div>

    <div class="container">
      <div class="row justify-content-start">
        <div class="col col-lg-3">
          <CitiesDropdown @clickSelectCityEvent="getAtmLocationsById"/>
          <div class="row">
            <ServicesCheckbox/>
          </div>
        </div>

        <div class="col col-lg-9">
          <AtmLocationsTable :atm-locations="atmLocations" @clickAlertButtonEvent="clickAlertButtonEvent"

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

    clickAlertButtonEvent: function (locationName) {
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

    // getAtmTableInfoByCityId: function (selectedCityNameId) {
    //
    //   let preference = ''
    //   switch (selectedCityNameId) {
    //     case 1:
    //       preference = 'code=200, example=200-Tallinn'
    //       break
    //     case 2:
    //       preference = 'code=200, example=200-Tartu'
    //       break
    //     case 3:
    //       preference = 'code=200, example=200-Viljandi'
    //       break
    //   }
    //
    //   this.$http.get("/atm/info/by-city", {
    //         params: {CityId: selectedCityNameId},
    //         headers: {
    //           'Content-Type': 'application/json',
    //           Prefer: preference
    //         }
    //       }
    //   ).then(response => {
    //     this.atmLocations = response.data
    //     this.generateRowNumbers()
    //     console.log(response.data)
    //   }).catch(error => {
    //     console.log(error)
    //   })
    // },

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









