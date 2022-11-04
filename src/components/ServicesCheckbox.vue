<template>
  <div>
    <div v-for="service in atmServices" class="form-check">
      <input v-model="service.isSelected" class="form-check-input" type="checkbox" value="false" id="flexCheckDefault">
      <label class="form-check-label" for="flexCheckDefault">
        {{ service.serviceName }}
      </label>
    </div>

    <button v-on:click="check()">kontrolli</button>

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
    // check: function () {
    //   alert('raha sisse ' + this.atmServices[0].isSelected +
    //       ' \nraha välja ' + this.atmServices[1].isSelected +
    //       ' \nmaksed ' + this.atmServices[2].isSelected)
    // },

    getAtmServicesCheckboxInfo: function () {
      console.log('olen siin')
      this.$http.get('/atm/service')
          .then(result => {
            this.atmServices = result.data
            console.log('OLEN siin')
          })
          .catch(error => {
            alert('Nooo')
          });
    }
  },
  beforeMount() {
    this.getAtmServicesCheckboxInfo()
  }
}
</script>
