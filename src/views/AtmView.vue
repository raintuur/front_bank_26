<template>
  <div>

    <div class="container">
      <div class="row justify-content-start">
        <div class="col col-lg-4">
          <select v-model="selectedCityId" class="form-select" aria-label="Default select example">
            <option selected disabled>--Linn--</option>
            <option v-for="city in cities" :value="city.cityNameId">{{city.cityName}}</option>
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
      firstName: '',
      cities: [
        {
          cityName: ' ',
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
        alert('Viga')
        console.log('noooo')
      });

    }
  },

  beforeMount() {
    this.getCitiesSelectBoxInfo()
  },


}


</script>









