<template>
  <div>
    <div v-for="service in atmServices" class="form-check">
      <input v-model="service.isSelected" class="form-check-input" type="checkbox" id="flexCheckDefault">
      <label class="form-check-label" for="flexCheckDefault">
        {{ service.serviceName }}
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
          serviceName: ' ',
          isSelected: false
        }
      ]
    }

  },

  methods: {
    getAtmServiceCheckboxInfo: function () {
      this.$http.get('/atm/service')
          .then(result => {
            this.atmServices = result.data
          })
          .catch(error => {
            alert('EIII!')
          });
    }

  },
  beforeMount() {
    this.getAtmServiceCheckboxInfo()
  }

}


</script>