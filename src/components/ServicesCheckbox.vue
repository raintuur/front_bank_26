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
  name: 'ServicesCheckbox',
  data: function () {
    return {
      atmOptions: [
        {
          optionId: 0,
          optionName: '',
          isSelected: false
        }
      ]
    }
  },
  methods: {
    getAtmServicesCheckboxInfo: function () {
      this.$http.get('/atm/option')
          .then(result => {
            this.atmOptions = result.data
          })
          .catch(error => {
            alert("NO!!!!")
          });
    }
  },
  beforeMount() {
    this.getAtmServicesCheckboxInfo()
  }
}
</script>