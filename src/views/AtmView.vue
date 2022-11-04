<template>
  <div>
    <div class="container">
      <div class="row justify-content-start">
        <div class="col col-lg-3">

          <CitiesDropdown/>

          <div class="row">

            <ServicesCheckbox/>

          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import CitiesDropdown from "@/components/CitiesDropdown";
import ServicesCheckbox from "@/components/ServicesCheckbox";

export default {
  name: 'AtmView',
  components: {ServicesCheckbox, CitiesDropdown},
  data: function () {
    return {}
    methods: {
    }
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