<template>
  <div>

    <div class="container">
      <div class="row justify-content-start">
        <div class="col col-lg-3">
          <select v-model="selectedCityId" class="form-select" aria-label="Default select example">
            <option selected disabled>--Linn--</option>
            <option v-for="city in cities" :value="cities.cityNameId">{{city.cityName}}</option>
          </select>
          {{selectedCityId}},



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
        }
      ]
    }
  },
  methods: {

         this.$http.get('https://stoplight.io/mocks/toots/myproject/15715054/atm/city')
          .then(result => {
            this.cities = result.data
            console.log('CITIES: ' + JSON.stringify(this.cities))
          })
          .catch(error => {
            alert('VIGA!!!! ')
            console.log('Oh no. Mingi viga tuli vastuseks')
          }),
    }

  },
  beforeMount() {
    this.getCitiesSelectBoxInfo()
  }

}

</script>









