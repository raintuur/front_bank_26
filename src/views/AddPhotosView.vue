<template>
  <div>
  <ImageInput @pictureInputSuccess="setPicture" />

    <button v-on:click="addPicture" type="button" class="btn btn-primary">Salvesta pilt</button>

  </div>
</template>

<script>
import ImageInput from "@/components/image/ImageInput";

export default {
  name: "AddPhotosView",
  components: {ImageInput},
  data: function () {
    return {
      pictureRequest: {
        userId: sessionStorage.getItem('userId'),
        pictureData: ''
      }
    }
  },

  methods: {
    setPicture: function (picture) {
      this.pictureRequest.pictureData = picture;
    },

    addPicture: function () {
      this.$http.post("/photo", this.pictureRequest
      ).then(response => {
        console.log(response.data)
      }).catch(error => {
        console.log(error)
      })
    },

  }
}
</script>

<style scoped>

</style>