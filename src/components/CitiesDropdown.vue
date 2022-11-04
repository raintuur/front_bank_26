<template>
  <div>
    <select v-model="selectedCityId" v-on:change="refreshAtmsByCity('Hello')" class="form-select"
            aria-label="Default select example">
      <option value="0" selected disabled>--Linn--</option>
      <option v-for="city in cities" :key="city.cityNameId" :value="city.cityNameId">{{ city.cityName }}</option>
    </select>
  </div>
</template>

<script>
export default {
  name: 'CitiesDropdown',
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
      console.log(message)
    },
    getCitiesSelectBoxInfo: function () {
      this.$http.get('/atm/city')
          .then(result => {
            this.cities = result.data
          })
          .catch(error => {
            console.log('You screwed up :(')
          });
    }
  },
  beforeMount() {
    this.getCitiesSelectBoxInfo()
  }
}
</script>