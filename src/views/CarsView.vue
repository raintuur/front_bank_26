<template>
  <div>
    <div>
      <div v-for="brand in carBrands" class="row justify-content-center">
        <h3>{{ brand.brandName }}</h3>

        <div v-for="model in brand.models" class="row">


          <div class="col">
            {{ model.modelName }}
          </div>
          <div class="col">
            {{ model.year }}
          </div>


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
              modelName: 'A6-RS',
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
            },
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