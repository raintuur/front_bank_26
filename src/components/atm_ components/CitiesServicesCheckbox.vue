<template>
  <div>
    <div class="col col-2 form-check">
      <input v-model="isCashOut" class="form-check-input" type="checkbox" value="" id="cashOut">
      <label class="form-check-label" for="cashOut">
        Raha väljamakse
      </label>
    </div>
    <div class="col col-2 form-check">
      <input v-model="isCashIn" class="form-check-input" type="checkbox" value="" id="CashIn" checked>
      <label class="form-check-label" for="CashIn">
        Raha sissemakse
      </label>
    </div>
    <div class="col col-2 form-check">
      <input v-model="isPayments" class="form-check-input" type="checkbox" value="" id="payments" checked>
      <label class="form-check-label" for="CashIn">
        Maksed
      </label>
    </div>
    <button v-on:click="someMethod" type="button" class="btn btn-dark">Dark</button>
  </div>
</template>
<script>
export default {
  name: 'CitiesServicesCheckbox',
  data: function () {
    return {
      isCashOut: Boolean(false),
      isCashIn: Boolean(false),
      isPayments: Boolean(false)
    }
  },
  methods: {
    someMethod: function () {
      alert('Cashout is ' + this.isCashOut.toString() +
          '\nCashin is ' + this.isCashIn.toString() +
          '\nPayments is ' + this.isPayments.toString())
    }
  }
}
</script>