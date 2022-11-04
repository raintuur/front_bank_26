<template>
  <div>
    <div class="form-check">
      <input v-model="" class="form-check-input" type="checkbox" value=""  id="flexCheckDefault">
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

    getATMSevicesCheckboxInfo: function () {
      this.$http.get('/atm/service')
          .then(value => {
            this.atmServices
          })
          .catch(error => {
            alert("nooo")
      });
    }
  },
  beforeMount() {
    this.getATMSevicesCheckboxInfo()
  }
}
</script>