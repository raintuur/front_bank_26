<template>
  <div>
    <div class="container">
      <div class=" row justify-content-start">
        <div class="col col-lg-3">
          <CitiesDropDown/>
        </div>
      </div>
      <div class="row row-cols-1 justify-content-md-start">
        <CitiesServicesCheckbox/>
      </div>
    </div>
  </div>
</template>

<script>
import CitiesDropDown from "@/components/atm_ components/CitiesDropDown";
import CitiesServicesCheckbox from "@/components/atm_ components/CitiesServicesCheckbox";

export default {
  name: 'AtmView',
  components: {CitiesServicesCheckbox, CitiesDropDown},
  data: function () {
    return {}
  },
  methods: {}
}
</script>
