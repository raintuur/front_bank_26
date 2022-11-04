<template>

  <div>
    <div class="container">
      <div class="row justify-content-start">
        <div class="col col-sm-4">

          <select v-model="selectedCityID" class="form-select" aria-label="Default select example">
            <option selected disabled>--Linn--</option>
            <option v-for="city in cities" :value="city.cityNameId">{{ city.cityName }}</option>
          </select>

        </div>
      </div>
    </div>
  </div>

</template>

<script>
export default {
  name: 'AtmView',

  data: function () {
    return {
      selectedCityID: 0,

      firstName: '',

      cities: [
        {
          cityName: '',
          cityNameId: 0,
        }
      ]
    }
  },

  methods: {


    getCitiesSelectBoxInfo: function () {
      this.$http.get('/atm/city')  //urli esimene osa vue.config.js failis
          .then(result => {  //siia tullakse siis, kui serverist tuleb vastus 200
            //alert("Korras")
            this.cities = result.data
            //console.log(JSON.stringify(this.cities))
          })
          .catch(error => {  //siia tullakse siis, kui serverist tuleb muu vastus kui 200
            //alert("Error")
            console.log("Mingi viga")
          })
    }
  },
  beforeMount() {
    this.getCitiesSelectBoxInfo();
  }

}
</script>