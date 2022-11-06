<template>
  <div>

    <div class="container">
      <div class="row justify-content-start">
        <div class="col col-sm-5">

          <CitiesDropdown/>

          <ServicesCheckBox/>

<!--          tabel     -->



        </div>
      </div>
    </div>

  </div>
</template>

<script>
import CitiesDropdown from "@/components/CitiesDropdown";
import ServicesCheckBox from "@/components/ServicesCheckBox";

export default {
  name: 'AtmView',
  components: {ServicesCheckBox, CitiesDropdown},
  data: function () {
    return {}
  },
  methods: {},
}

</script>