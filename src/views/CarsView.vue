<template>
  <div>
    <!--  Brand loop  -->
    <div v-for="carBrand in carBrands" class="row justify-content-center">
      <h6>{{ carBrand.brandName }}</h6>

    </div>

  </div>
</template>

<script>
export default {
  name: 'CarsView',
  data: function () {
    return {
      carBrands: [
        {
          brandName: 'Audi',
          models: [
            {
              modelName: 'A3',
              year: 2011
            },
            {
              modelName: 'A4',
              year: 2012
            },
            {
              modelName: 'A6 - RS',
              year: 2013
            },

          ]
        },
        {
          brandName: 'Opel',
          models: [
            {
              modelName: 'Astra',
              year: 2011
            },
            {
              modelName: 'Omega',
              year: 2012
            }

          ]
        },
        {
          brandName: 'Skoda',
          models: [
            {
              modelName: 'Astra',
              year: 2011
            },
            {
              modelName: 'Omega',
              year: 2012
            }

          ]
        }
      ]

    }


  }

}
</script>

<style scoped>

</style>