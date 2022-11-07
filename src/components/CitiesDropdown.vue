<template>
  <div>
    <select v-on:change="clickSelectCityEvent()" v-model="selectedCityId" class="form-select"
            aria-label="Default select example">
      <option selected disabled value="0">--Linn--</option>
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

    getCitiesSelectBoxInfo: function () {
      this.$http.get('/atm/city')
          .then(result => {
            this.cities = result.data
            console.log('CITIES: ' + JSON.stringify(this.cities))
          })
          .catch(error => {
            alert('viga')
            console.log('Oh no, mingi viga tuli vastuseks')
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