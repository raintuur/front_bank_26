<template>
  <div>
    <ImageInput @pictureInputSuccess="setPicture"/>

    <button v-on:click="addPicture" type="button" class="btn btn-primary mt-3">Salvesta pilt</button>

    <div class="row">

<!--  todo: Kui  pictureData == null   -->
      <div v-if="pictureResponse.pictureData === null">
        <img src="../assets/defaultAvatarImg.jpg" >
      </div>
      <div v-else>
        <img :src="pictureResponse.pictureData" class="myPicSize">
      </div>
      <div>
        <font-awesome-icon icon="fa-solid fa-ufo" />
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
      },
      pictureResponse: {
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
      this.pictureRequest.userId = this.userId
      this.$http.post("/photo", this.pictureRequest
      ).then(response => {
        this.getUserPhoto()
      }).catch(error => {
        console.log(error)
      })
    },

    getUserPhoto: function () {
      this.$http.get("/photo", {
        params: {
          userId: this.userId
        }
      }).then(response => {
        this.pictureResponse = response.data
      }).catch(error => {
        console.log(error)
      })
    },

  },
  beforeMount() {
    this.getUserPhoto()
  }
}
</script>

