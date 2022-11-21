<template>
  <div>
    <div v-for="service in atmOptions" class="form-check">
      <input v-model="service.isSelected" class="form-check-input" type="checkbox" id="flexCheckDefault">
      <label class="form-check-label" for="flexCheckDefault">
        {{ service.optionName }}
      </label>
    </div>
  </div>
</template>
<script>
export default {
  props: {
    atmOptions: {}
  },

  name: 'ServicesCheckbox'
}
</script>