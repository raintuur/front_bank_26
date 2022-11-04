<template>
  <div>
    <div class="form-check">
      <input class="form-check-input" type="checkbox" id="flexCheckDefault">
      <label class="form-check-label" for="flexCheckDefault">
        Default checkbox
      </label>
    </div>

  </div>
</template>
<script>
export default {
  name: 'ServicesCheckbox',
  data: function () {
    return {
      atmServices: [
        {
          serviceId: 0,
          serviceName: '',
          isSelected: false
        }
      ]
    }
  },
  methods: {

    getAtmServicesCheckboxInfo: function () {
      this.$http.get('/atm/service')
          .then(result => {
            this.atmServices = result.data
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