<template>
  <div>
    <div v-for="carBrand in carBrands" class="row justify-content-center">
      <div class="col-2">

        <p>{{carBrand.brandName}}</p>
      </div>
<!--      <div v-for="carBrand in carBrands" class="col-2">-->
<!--        jeje-->
<!--        -->

<!--      </div>-->
<!--      <div v-for="model in carBrand.models" class="col-2">-->
<!--        jejeje-->
<!--        {{ model.brandName }}-->
<!--        {{ model.modelYear }}-->

<!--      </div>-->

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
          brandName: Opel,
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