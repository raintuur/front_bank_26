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

        <div class="col col-lg-9">
          <AtmLocationsTable :atm-locations="atmLocations"/>
        </div>

      </div>
    </div>
  </div>
</template>

<script>
import CitiesDropdown from "@/components/CitiesDropdown";
import ServicesCheckbox from "@/components/ServicesCheckbox";
import AtmLocationsTable from "@/components/atm_locations_table/AtmLocationsTable";

export default {
  name: 'AtmView',
  components: {ServicesCheckbox, CitiesDropdown, AtmLocationsTable},
  data: function () {
    return {
      atmLocations: [
        {
          cityName: '',
          atmLocationInfo: '',
          atmServices: [
            {
              serviceName: ''
            }
          ]
        }
      ],

    }
  },
  methods: {

    getAllAtmLocations: function () {
      this.$http.get("/atm/info")
          .then(response => {
            this.atmLocations = response.data
            this.addSequenceNumbers()
          })
          .catch(error => {
            console.log(error)
          })
    },
    addSequenceNumbers: function () {
      let counter = 1
      this.atmLocations.forEach(location => {
        location.sequenceNumber = counter
        counter++
      });
    }
  },
  beforeMount() {
    this.getAllAtmLocations()
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