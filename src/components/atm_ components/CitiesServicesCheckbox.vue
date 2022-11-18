<template>
  <div>
    <div v-for="option in atmOptions" class="form-check">
      <input v-model="option.isSelected" class="form-check-input" type="checkbox" value=""
             :id="option.optionId">
      <label class="form-check-label" :for="option.optionId">
        {{ option.optionName }}
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

      atmOptions: [
        {
          optionId: 0,
          optionName: '',
          isSelected: null
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
      this.$http.get('/atm/option')
          .then(result => {
            this.atmOptions = result.data
            console.log('Services = ' + JSON.stringify(this.atmOptions))
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