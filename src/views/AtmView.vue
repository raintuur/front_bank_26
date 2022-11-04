<template>
  <div>

    <div class="container">
      <div class="row justify-content-start">
        <div class="col col-lg-2">
          <select class="form-select" aria-label="Default select example">
            <option  v-for="city in cities" :value="city.cityNameID">{{city.cityName}}</option>
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
      cities: [
        {
          cityName: '-- Vali linn --',
          cityNameID: 0,
        },
        {
          cityName: 'Haapsalu',
          cityNameID: 1,
        },
        {
          cityName: 'Kuressaare',
          cityNameID: 2,
        },
      ]
    }
  },
  methods: {
    getCitiesSelectBoxInfo: function () {
      this.$http.get('https://stoplight.io/mocks/liisr/esimeneprojekt/105190846/atm/city')
          .then(result => {
            alert("YESS")
            // console.log('YESS, saime vastuse!')

          })
          .catch(error => {
            console.log('Oh no! Mingi viga!')
          });


    }
  },
  beforeMount() {
    this.getCitiesSelectBoxInfo()

  }
}


</script>









