<template>
  <select v-model="selectedCityID" class="form-select" aria-label="Default select example">
    <option selected disabled value="0">--Linn--</option>
    <option v-for="city in cities" :key="city.cityNameId" :value="city.cityNameId">{{ city.cityName }}</option>
  </select>
</template>
<script>
export default {
  name: 'CitiesDropdown',
  props: {
    cities: {},
    selectedCityID: {}
  }
}

data: function () {
  return {
    selectedCityID: 0,
    firstName: '',
    cities: [
      {
        cityName: '',
        cityNameId: 0
      }
    ],

    beforeMount() {

      this.getCitiesSelectBoxInfo()
    }

  }
}
</script>