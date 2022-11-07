<template>
  <div>
    <select v-on:change="clickSelectCityEvent()" v-model="selectedCityId" class="form-select"
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
    getCitiesSelectBoxInfo: function () {
      this.$http.get('/atm/city')
          .then(result => {
            this.cities = result.data
          })
          .catch(error => {
            console.log('You screwed up :(')
          });
    },
    clickSelectCityEvent: function () {
      this.$emit('clickSelectCityEvent', this.selectedCityId)
    }
  },
  beforeMount() {
    this.getCitiesSelectBoxInfo()
  }
}
</script>