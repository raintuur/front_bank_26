<template>
  <div>

    <div class="container">
      <div class="row justify-content-start">
        <div class="col col-lg-3">

          <select v-model="selectedCityID" class="form-select" aria-label="Default select example">
            <option  selected disabled>--Linn--</option>
            <option   v-for="city in cities" :value="city.cityNameID">{{city.cityName}}</option>
          </select>
          {{selectedCityID}}
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
      selectedCityID:0,
      firstName: '',
      cities: [
        {
          cityName: '',
          cityNameID: 0,
        }
      ]
    }
  },
  methods: {
    refreshATMsByCity: function (message) {
      alert(message)
    },
    getCitiesSelectBoxInfo: function () {
      this.$http.get('/atm/city')
          .then(result => {
            this.cities = result.data
            alert("YESS")
            console.log('CITIES: ' + JSON.stringify(this.cities))

          })
          .catch(error => {
            alert("Viga!")
            console.log('Oh no! Mingi viga!')
          });


    }
  },
  beforeMount() {
    this.getCitiesSelectBoxInfo()

  }
}
</script>









