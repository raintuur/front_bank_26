<template>
  <div>

    <div class="container">
      <div class="row justify-content-start">
        <div class="col col-lg-2">
          <select class="form-select" aria-label="Default select example">
            <option selected disabled>--Linn--</option>
            <option value="1">Tallinn</option>
            <option value="2">Tartu</option>
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
          cityNameId: 0
        }
      ]
    }
  },
  methods: {
    getCitiesSelectBoxInfo: function () {
      this.$http.get('https://stoplight.io/mocks/anette/mybankproject/105190954/atm/city')
          .then(result => {
            alert('JESSS!')
            console.log('JESSSS! Saime vastuse kätte!')
          })
          .catch(error => {
            alert('OH EI, VIGA!')
            console.log('OH EI! Tekkinud on mingi viga!')
          });
    }
  },

  beforeMount() {
    this.getCitiesSelectBoxInfo()
  }

}


</script>
