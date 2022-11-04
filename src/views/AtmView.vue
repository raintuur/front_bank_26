<template>
  <div>

    <div class="container">
      <div class="row justify-content-start">
        <div class="col col-lg-3">
          <select v-model="selectedCityID" class="form-select" aria-label="Default select example">
            <option selected disabled value="0">--Linn--</option>
            <option v-for="city in cities" :value="city.cityNameId">{{ city.cityName }}</option>
          </select>

          <div class="row">

            <div class="form-check">
              <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
              <label class="form-check-label" for="flexCheckDefault">
                Default checkbox
              </label>
            </div>
            <div class="form-check">
              <input class="form-check-input" type="checkbox" value="" id="flexCheckChecked" checked>
              <label class="form-check-label" for="flexCheckChecked">
                Checked checkbox
              </label>
            </div>




          </div>

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
      selectedCityID: 0,
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
            alert('VIGA!!!! ')
            console.log('Oh no. Mingi viga tuli vastuseks')
          });
    }

  },
  beforeMount() {

    this.getCitiesSelectBoxInfo()
  }

}


</script>









