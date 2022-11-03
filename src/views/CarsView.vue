<template>
  <div>
<!--    Brand loop-->

    <div v-for="brand in carBrands" class=" row justify-content-center">
      <h6>{{brand.brandName}}</h6>
      <div v-for="model in brand.models" class="row">

        <div class="col">
          {{model.modelName}}
        </div>
        <div class="col">
          {{year.modelYear}}
        </div>
      </div>

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