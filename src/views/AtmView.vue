<template>
  <div>

    <div class="container">
      <div class="row justify-content-start">
        <div class="col col-lg-3">

          <select v-model="selectedCityID" class="form-select" aria-label="Default select example">
            <option selected disabled value="0">--Linn--</option>
            <option v-for="city in cities" :value="city.cityNameId">{{city.cityName}}</option>
                                          //:koolon teeb stringist muutuja siin value puhul
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

      cities: [
        {
          cityName: '',
          cityNameId: 0
        }
      ]
    }
  },
  methods: {

    getCitiesSelectBoxInfo: function () {
      this.$http.get('/atm/city')
          .then(result => {     //kui tuleb 200
            this.cities = result.data
            console.log('CITIES: ' + JSON.stringify(this.cities))
          })
          .catch(error => {     //kui tuleb midagi muud
            alert('vigaaa')
            console.log('Oh no. Mingi viga tuli vastuseks')
          });

    }
  },
  beforeMount() {
    this.getCitiesSelectBoxInfo()
  }

}


</script>
