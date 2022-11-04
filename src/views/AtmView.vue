<template>
  <div>
    <div class="container">
      <div class="row justify-content-start">
        <div class="col col-lg-3">
          <select v-model="selectedCityId"  class="form-select" aria-label="--Linn--">
            <option disabled selected>--Linn--</option>
            <option v-for="city in cities" :value="city.cityNameId" >{{city.cityName}}</option>
          </select>
          {{selectedCityId}}
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
      selectedCityId: 0,
      firstName: '',
      cities: [
        {
        cityName: '',
        cityNameId: 0
      },
      ]
    }
  },
  methods: {
    getCitiesSelectBoxInfo: function () {
      this.$http.get('/atm/city')
          .then(result => {
            this.cities = result.data
            console.log('Cities = ' + JSON.stringify(this.cities))
          })
          .catch(error => {
            alert('Viga')
            console.log('Ou Nou! Mingi viga tuli vastuseks')
          });
    },
  },
beforeMount() {
    this.getCitiesSelectBoxInfo()
}
}
</script>
