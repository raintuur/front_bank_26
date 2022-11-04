<template>

  <div>
    <div class="container">
      <div class="row justify-content-start">
        <div class="col col-sm-4">
          <select class="form-select" aria-label="Default select example">
            <option selected disabled>--Linn--</option>
            <option value="2">Tartu</option>
            <option value="1">Tallinn</option>
            <option value="3">Viljandi</option>
          </select>
        </div>
      </div>
    </div>
  </div>

</template>

<script>
export default {
  name: 'AtmView',

  data: function () {
    return {
      cities: [
        {
          cityName: '',
          cityNameId: 0,
        }
      ]
    }
  },

  methods: {
    getCitiesSelectBoxInfo: function () {
      this.$http.get('https://stoplight.io/mocks/lambikas/citylist/83536708/atm/city')
          .then(result => {
            console.log("Yes, saime kätte")
          })
          .catch(error => {
            console.log("Mingi viga")
          })
    }
  },
  beforeMount() {
    this.getCitiesSelectBoxInfo();
  }

}
</script>









