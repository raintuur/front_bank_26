<template>
  <div>

    <div class="container">
      <div class="row justify-content-start">
        <div class="col col-lg-3">


          <CitiesDropdown/>


          <div class="row">
            <ServiceCities/>


          </div>

        </div>
      </div>
    </div>


  </div>
</template>

<script>
import CitiesDropdown from "@/components/CitiesDropdown";
import ServiceCities from "@/components/ServiceCities";

export default {
  name: 'AtmView',
  components: {ServiceCities, CitiesDropdown},
  data: function () {
    return {}
  },
  methods: {}
}


</script>









