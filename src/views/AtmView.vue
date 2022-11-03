<template>
  <div>
    <div class="container">
      <div class="row justify-content-start">
        <div class="col col-lg-3">
          <select class="form-select" aria-label="Default select example">
            <option selected disabled>--Linn--</option>
            <option value="1">One</option>
            <option value="2">Two</option>
            <option value="3">Three</option>
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
          cityName: '',
          cityNameId: 0
        }
      ]
    }
  },
  methods: {
    getCitiesSelectBoxInfo: function () {
      this.$http.get('https://stoplight.io/mocks/mario25/myproject/83536708/atm/city')
          .then(result => {
            alert ('YEEEE')
            console.log('Yessss, saime vastuse katte')
          })
          .catch(error => {
            alert ('viga')
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