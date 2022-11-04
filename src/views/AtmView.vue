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

  },
  methods: {}
}

</script>
