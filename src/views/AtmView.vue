<template>
  <div>
    <div class="container">
      <div class=" row ">
        <div class="col col-3 mb-5">
          <CitiesDropDown  @clickSelectCityEvent="getAtmTableInfoByCityId"/>
        </div>
        <div class="col col-lg-9 mb-5">
          <atmLocationsTable :atm-tables="atmLocations" @clickNavigateToAdminEvent="navigateToAdminPage"/>
        </div>
      </div>
      <div class="row justify-content-start mt-5">
        <div class="col col-3">
          <CitiesServicesCheckbox :atm-options="atmOptions" />
        </div>
        <div class="mt-5">
          <button v-on:click="filterButtonPressed()" type="button" class="btn btn-dark">Filtreeri</button>
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
          locationId: 0,
          cityName: '',
          locationName: '',
          options: [
            {
              optionName: ''
            }
          ]
        }
      ],
      atmOptions: [
        {
          optionId: 0,
          optionName: '',
          selected: null
        }
      ]
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

    navigateToAdminPage: function (locationId) {
      sessionStorage.setItem("locationId", locationId)
      this.$router.push({name: 'adminHomeRoute'})

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
      this.$http.get("/atm/info/by-city", {
            params: {
              cityId: selectedCityNameId,
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

    getAtmServiceSelectBoxInfo: function () {
      console.log('Olen Siin')
      this.$http.get('/atm/option')
          .then(result => {
            this.atmOptions = result.data
            console.log('Services = ' + JSON.stringify(this.atmOptions))
          })
          .catch(error => {
            alert('Viga')
            console.log('Ou Nou! Mingi viga tuli vastuseks')
          });
    },

    filterButtonPressed: function () {
      let concatenateString = ''
      this.atmOptions.forEach(value => {
        concatenateString += value.optionName + ' is ' + value.selected + '\n'
      });
      alert(concatenateString)
    },

    // See on vana meetod Stoplighti mockimiseks. Panime kaasa paramsid ja headerid.
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

  },
  beforeMount() {
    this.getAtmTableInfo()
    this.getAtmServiceSelectBoxInfo()
  },


}
</script>
