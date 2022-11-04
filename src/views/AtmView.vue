<template>
  <div>
    <div class="container">
      <div class="row justify-content-start">
        <div class="col col-lg-3">
          <select v-model="selectedCityId" class="form-select" aria-label="Default select example">
            <option selected disabled value="0">--Linn--</option>
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

            alert('YEEEE')
            console.log('CITIES: ' + JSON.stringify(this.cities))
          })
          .catch(error => {
            alert('viga')
            console.log('Oh no, mingi viga tuli vastuseks')
          });
    }
  },
  beforeMount() {

    this.getCitiesSelectBoxInfo()
  }
}

</script>


<!--      <div class="container">-->
<!--      <div class="row justify-content-center">-->
<!--        <div class="col col-lg-2">-->
<!--          <input v-model="firstName" type="text" class="form-control" placeholder="First name" aria-label="First name">-->
<!--        </div>-->
<!--        <div class="col col-lg-2">-->
<!--          <input v-model="lastName" type="text" class="form-control" placeholder="Last name" aria-label="Last name">-->
<!--        </div>-->
<!--      </div>-->
<!--      <div class="row justify-content-md-center">-->
<!--        <div class="col col-lg-2 m-2">-->
<!--          <button v-on:click="helloWorld('nipi','tiri')" type="button" class="btn btn-lg  btn-outline-info">Info</button>-->
<!--        </div>-->
<!--      </div>-->
<!--    </div>-->


<!-- methods: {-->
<!--   helloWorld: function (firstName, lastName) {-->
<!--     alert('Hello World! ' + this.firstName + ' ' + this.lastName)-->
<!--   }-->
<!-- }-->

<!--     firstName: '',-->
<!--     lastName: ''-->
<!--   }-->
<!-- },-->