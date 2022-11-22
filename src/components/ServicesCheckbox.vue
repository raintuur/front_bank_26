<template>
  <div>
    <div class="form-check" v-for="option in atmOptions">
      <input v-model="option.isSelected" class="form-check-input" type="checkbox" id="flexCheckDefault">
      <label class="form-check-label" for="flexCheckDefault">
        {{ option.optionName }}
      </label>
    </div>

<!--    <button v-on:click="check()">Kontrolli</button>-->

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