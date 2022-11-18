<template>
  <div>
    <div class="container">
      <div class=" row ">
        <div class="col col-3 mb-5">
          <CitiesDropDown @clickSelectCityEvent="getAtmTableInfoByCityId"/>
        </div>
        <div class="col col-lg-9 mb-5">
          <atmLocationsTable :atm-tables="atmLocations" @clickAlertButtonEvent="sendAlertMessage"/>
        </div>
      </div>
      <div class="row justify-content-start mt-5">
        <div class="col col-3">
          <CitiesServicesCheckbox/>
        </div>
      </div>
      <div class="row justify-content-start mt-5">
        <div class="col col-3">
        </div>
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
      atmLocations: [
        {
          cityName: '',
          locationName: '',
          atmOptions: [
            {
              optionName: ''
            }
          ]
        }
      ],
    }
  },
  methods: {
    generateRowNumbers: function () {
      let counter = 1
      this.atmLocations.forEach(tableElement => {
            tableElement.SequenceNumber = counter++
            console.log("Olen siin 2")
          }
      )
    },

    sendAlertMessage: function (locationName) {
      alert("Sinu valitud atm asub asukohas>" + locationName)
    },

    getAtmTableInfo: function () {
      this.$http.get("/atm/info")
          .then(response => {
            this.atmLocations = response.data
            this.generateRowNumbers()
            console.log(response.data)
          })
          .catch(error => {
            console.log(error)
          })
    },

    getAtmTableInfoByCityId: function (selectedCityNameId) {

      let preference = ''
      switch (selectedCityNameId) {
        case 1:
          preference = 'code=200, example=200-Tallinn'
          break
        case 2:
          preference = 'code=200, example=200-Tartu'
          break
        case 3:
          preference = 'code=200, example=200-Viljandi'
          break
      }

      this.$http.get("/atm/info/by-city", {
            params: {CityId: selectedCityNameId},
            headers: {
              'Content-Type': 'application/json',
              Prefer: preference
            }
          }
      ).then(response => {
        this.atmLocations = response.data
        this.generateRowNumbers()
        console.log(response.data)
      }).catch(error => {
        console.log(error)
      })
    },

  },
  beforeMount() {
    this.getAtmTableInfo()
    console.log("Olen siin loopis")

  },


}
</script>
