<template>
  <div>


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
              modelName: 'A6',
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
            },
          ]
        },
        {
          brandName: 'Škoda',
          models: [
            {
              modelName: 'Fabia',
              year: 2011
            },
            {
              modelName: 'Superb',
              year: 2012
            }
          ]
        },

      ]
    }
  }
}
</script>

<style scoped>

</style>