<template>
  <div>
    <div class="container">
      <div class="row justify-content-start">
        <div class="col col-lg-3">
          <select v-model="selectedCityId" v-on:change="refreshAtmsByCity('Hello')" class="form-select"
                  aria-label="Default select example">
            <option value="0" selected disabled>--Linn--</option>
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
      selectedCityId: 0,
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
          .then(result => {
            this.cities = result.data
            console.log('Cities= ' + JSON.stringify(this.cities))
          })
          .catch(error => {
            alert('Viga')
            console.log('You screwed up :(')
          });
    }
  },
  beforeMount() {
    this.getCitiesSelectBoxInfo()
  }
}

</script>
