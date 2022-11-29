<template>
  <div>
    <ImageInput @pictureInputSuccess="setPicture"/>

    <button v-on:click="addPicture" type="button" class="btn btn-primary">Salvesta pilt</button>

    <div class="row">
      <div>
        <img src="../assets/avatar.png" class="myPicSize">
      </div>
    </div>

  </div>
</template>

<script>
import ImageInput from "@/components/image/ImageInput";

export default {
  name: "AddPhotosView",
  components: {ImageInput},
  data: function () {
    return {
      userId: sessionStorage.getItem('userId'),
      pictureRequest: {
        userId: 0,
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

    getUserPhoto: function () {
      this.$http.get("/photo", {
        params: {
          userId: this.userId
        }
      })
          .then(response => {
            console.log(response.data)
          })
          .catch(error => {
            console.log(error)
          })
    },

  },
  beforeMount() {
    this.getUserPhoto()
  }
}
</script>

<style scoped>

</style>