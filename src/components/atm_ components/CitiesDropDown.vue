<template>
  <div>
    <select v-model="selectedCityId" class="form-select" aria-label="--Linn--">
      <option disabled selected value="0">--Linn--</option>
      <option v-for="city in cities" :key="city.cityNameId" :value="city.cityNameId">{{ city.cityName }}</option>
    </select>
  </div>
</template>
<script>
export default {
  name: 'CitiesDropDown',
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