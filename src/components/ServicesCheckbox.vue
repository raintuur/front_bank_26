<template>
  <div>
    <div class="form-check" v-for="service in atmServices">
      <input v-model="service.isSelected" class="form-check-input" type="checkbox" id="flexCheckDefault">
      <label class="form-check-label" for="flexCheckDefault">
        {{service.serviceName}}
      </label>
    </div>

    <button v-on:click="check()">Kontrolli</button>

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
    //   alert('raha sisse: ' + this.atmServices[0].isSelected + '; ' + 'raha välja: ' + this.atmServices[1].isSelected)
    // },

    getAtmServicesCheckboxInfo: function () {

      console.log('OLEN SIIN')
      this.$http.get('/atm/service')
          .then(result => {
            this.atmServices = result.data
          })
          .catch(error => {
            alert('ERRORRRR')
      });
    }
  },
  beforeMount() {
    this.getAtmServicesCheckboxInfo()
  }
}
</script>