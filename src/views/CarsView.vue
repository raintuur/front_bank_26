<template>
  <div class="container-sm">
    <div v-for="carBrand in carBrands" class="row justify-content-center row-cols-1">
      <h3>{{ carBrand.brandName }}</h3>
      <div v-for="model in carBrand.models" class="col d-flex justify-content-center">
        <div class="row row-cols-2">
          <div class="col">
            {{ model.modelName }}
          </div>
          <div class="col">
            {{ model.modelYear }}
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: "CarsView",
  data: function () {
    return {
      carBrands: [
        {
          brandName: 'Audi',
          models: [
            {
              modelName: 'A3',
              modelYear: 2011,
            },
            {
              modelName: 'A4',
              modelYear: 2012,
            },
            {
              modelName: 'A6-RS',
              modelYear: 2013,
            }
          ]
        },
        {
          brandName: 'Opel',
          models: [
            {
              modelName: 'Astra',
              modelYear: 2011,
            },
            {
              modelName: 'Omega',
              modelYear: 2012,
            },
          ]
        },
        {
          brandName: 'Skoda',
          models: [
            {
              modelName: 'Fabia',
              modelYear: 2011,
            },
            {
              modelName: 'Superb',
              modelYear: 2012,
            },
          ]
        },
        {
          brandName: 'Honda',
          models: [
            {
              modelName: 'Accord',
              modelYear: 2011,
            },
            {
              modelName: 'Civic Type-R',
              modelYear: 2012,
            },
          ]
        },
      ]
    }
  }
}
</script>

<style scoped>

</style>