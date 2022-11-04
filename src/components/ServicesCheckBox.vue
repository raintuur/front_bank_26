<template>
  <div>

    <div v-for="service in atmServices" class="form-check">
      <input v-model="service.isSelected" class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
      <label class="form-check-label" for="flexCheckDefault">
        {{ service.serviceName }}
      </label>
    </div>

<!--    <button v-on:click="check()">kontrolli</button>-->

  </div>
</template>
<script>
export default {
  name: 'ServicesCheckBox',
  data: function () {
    return {
      atmServices: [
        {
          serviceId: 0,
          serviceName: '',
          isSelected: false,
        }
      ]
    }
  },
  methods: {
    // check: function () {
    //   alert('raha sisse: ' + this.atmServices[0].isSelected + ' raha välja' + this.atmServices[1].isSelected)
    // },

    getAtmServicesCheckboxInfo: function () {
      this.$http.get("/atm/service")
          .then(result => {
            this.atmServices = result.data
          })
          .catch(error => {
            alert("error")
          })
    },
  },
  beforeMount() {
    this.getAtmServicesCheckboxInfo()
  }
}
</script>

