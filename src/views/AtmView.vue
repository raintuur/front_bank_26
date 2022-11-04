<template>
  <div>

    <div class="container">
      <div class="row justify-content-start">
        <div class="col col-lg-3">
          <select v-model="selectedCityID" v-on:change="refreshAtmsByCity('HELLO!')" class="form-select" aria-label="Default select example">
            <option selected disabled>--Linn--</option>
            <option v-for="city in cities" :value="city.cityNameId">{{city.cityName}}</option>
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
      selectedCityID: '0',

      firstName: '',

      cities: [
        {
          cityName: '',
          cityNameId: 0
        }
      ]
    }
  },
  methods: {

    refreshAtmsByCity: function (message) {
      alert(message)
    },

    getCitiesSelectBoxInfo: function () {

      this.$http.get('/atm/city')

          // kui tuleb 200, siis:
          .then(result => {
            this.cities = result.data
            console.log('CITIES: ' + JSON.stringify(this.cities))
          })
          // kui tuleb midagi muud kui 200, siis:
          .catch(error => {
            alert('VIGA!!!!')
            console.log('Oh no. Mingi viga tuli vastuseks')
          });
    }

  },
  beforeMount() {

    this.getCitiesSelectBoxInfo()
  }

}


</script>









