<template>
  <div>
    <div v-for="atmService in atmServices" class="form-check">
      <input v-model="atmService.isSelected" class="form-check-input" type="checkbox" value=""
             :id="atmService.serviceId">
      <label class="form-check-label" :for="atmService.serviceId">
        {{ atmService.serviceName }}
      </label>
    </div>
    <div class="mt-5">
      <button v-on:click="filterButtonPressed(isCashOut,isCashIn,isPayments)" type="button" class="btn btn-dark">Filtreeri</button>
    </div>
  </div>
</template>

<script>
export default {
  name: 'CitiesServicesCheckbox',
  data: function () {
    return {
      isCashOut: Boolean(false),
      isCashIn: Boolean(false),
      isPayments: Boolean(false),

      atmServices: [
        {
          serviceId: 0,
          serviceName: '',
          isSelected: Boolean(false)
        }
      ]
    }
  },
  methods: {

    filterButtonPressed: function (isCashOut, isCashIn, isPayment ) {
      let concatenateString= ''
      this.atmServices.forEach(value => {
        concatenateString += value.serviceName + ' is ' + value.isSelected + '\n'
      });
      alert(concatenateString)
    },

    getAtmServiceSelectBoxInfo: function () {
      console.log('Olen Siin')
      this.$http.get('/atm/service')
          .then(result => {
            this.atmServices = result.data
            console.log('Services = ' + JSON.stringify(this.atmServices))
          })
          .catch(error => {
            alert('Viga')
            console.log('Ou Nou! Mingi viga tuli vastuseks')
          });
    },
  },

  beforeMount() {
    this.getAtmServiceSelectBoxInfo()
  }
}
</script>