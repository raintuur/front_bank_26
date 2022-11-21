<template>
  <div>
    <div v-for="option in atmOptions" class="form-check">
      <input v-model="option.isSelected" class="form-check-input" type="checkbox" id="flexCheckDefault">
      <label class="form-check-label" for="flexCheckDefault">
        {{ option.optionName }}
      </label>
    </div>
  </div>
</template>
<script>
export default {
  props: {
    atmOptions: {}
  },
  name: 'ServicesCheckbox',
}
</script>