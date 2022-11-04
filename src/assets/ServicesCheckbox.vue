<template>
  <div>
    <div class="form-check">
      <input v-model="" class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
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
          serviceNames: '',
          isSelected: false
        }
      ]
    }
  },
  methods: {
    getAtmServicesCheckboxInfo: function () {
      this.$http.get('/atm/service')
          .then(result => {
            alert('YESSSS')
          })
          .catch(error => {
            alert('NOOOO')

          });
    }
  },
  beforeMount() {
    this.getAtmServicesCheckboxInfo()
  }
}

</script>