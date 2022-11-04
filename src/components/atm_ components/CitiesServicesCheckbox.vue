<template>
  <div>
    <div v-for="atmService in atmServices" class="col col-2 form-check">
      <input v-model="atmService.isSelected" class="form-check-input" type="checkbox" value=""
             :id="atmService.serviceId">
      <label class="form-check-label" :for="atmService.serviceId">
        {{ atmService.serviceName }}
      </label>
    </div>
<!--    <button v-on:click="someMethod" type="button" class="btn btn-dark">Kontroll</button>-->
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

    // someMethod: function () {
    //   let concatenateString= ''
    //   this.atmServices.forEach(value => {
    //     concatenateString += value.serviceName + ' is ' + value.isSelected + '\n'
    //   });
    //   alert(concatenateString)
    // },

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