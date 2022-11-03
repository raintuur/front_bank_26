<template>
  <div>

    <div class="container">
      <div class="row justify-content-start">
        <div class="col col-lg-3">
          <select class="form-select" aria-label="Default select example">
            <option selected disabled>--Linn--</option>
            <option value="1">One</option>
            <option value="2">Two</option>
            <option value="3">Three</option>
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

      this.$http.get('https://stoplight.io/mocks/astridoras/myproject/12976975/atm/city')
          .then(result => {
            alert("Yesss)")
            console.log('YESSSSSS, saime vastuse kätte')
          })
          .catch(error => {
            alert('VIGA!!!! ')
            console.log('Oh no. Mingi viga tuli vastuseks')
          });
    }

  },
  beforeMount() {
    this.getCitiesSelectBoxInfo()
  }

}


</script>









