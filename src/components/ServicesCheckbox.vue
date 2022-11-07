<template>
  <div>

    <div v-for="service in atmServices" class="form-check">
      <input v-model="service.isSelected" class="form-check-input" type="checkbox" id="flexCheckDefault">
      <label class="form-check-label" for="flexCheckDefault">{{ service.serviceName }}</label>
    </div>

  </div>
</template>

<script>
export default {
  name: 'ServicesCheckbox',
  data: function () {
    return {
      selectedServiceId: false,
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
              }
          )
          .catch(error => {
            alert('Services Checkboxi viga')
            console.log(error)
          })
    }
  },
  beforeMount() {
    this.getAtmServicesCheckboxInfo()
  }

}
</script>