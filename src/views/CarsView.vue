<template>
  <div>
    <!--    Brand loop-->
    <div v-for="carBrand in carBrands" class="row justify-content-center">
      <h1>{{ carBrand.brandName }}</h1>

      <!--      Model loop-->
          <div v-for="model in carBrand.models" class="row justify-content-end">
            <div class="col">
              <h5>{{ model.modelName }}</h5>
            </div>
            <div class="col">
              <h5>{{ model.year }}</h5>
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
              modelName: 'A6',
              year: 2013
            }
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
              modelName: 'Fabia',
              year: 2011
            },
            {
              modelName: 'Octavia',
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