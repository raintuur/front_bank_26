<template>
  <div>
    <div v-for="option in atmOptions" class="form-check">
      <input v-model="option.selected" class="form-check-input" type="checkbox" value=""
             :id="option.optionId">
      <label class="form-check-label" :for="option.optionId">
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
  name: 'CitiesServicesCheckbox'

}
</script>