<template>
  <div>
    <ImageInput @pictureInputSuccess="addPicture"/>
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
    addPicture: function (pictureDatabase64) {
      this.pictureRequest.pictureData = pictureDatabase64
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
