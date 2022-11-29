<template>
  <div>


    <div v-if="pictureResponse.pictureData === null" class="row col-lg-2">
      <img src="@/assets/BASICAVATAR.jpeg" class="myPicSize">
      <imapge-input @pictureInputSuccess="setPicture"/>
    </div>
    <div v-else>
      <img :src="pictureResponse.pictureData" class="">
    </div>
    <div class="col-lg-1">
      <button v-on:click="addPicture" type="button" class="btn btn-success">Salvesta pilt</button>

    </div>
  </div>

</template>

<script>

import imapgeInput from "@/components/image/ImapgeInput";

export default {
  name: "addPhotosView",
  components: {imapgeInput},
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
      this.pictureRequest.pictureData = picture
    },

    addPicture: function () {
      this.pictureRequest.userId = this.userId

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

<style scoped>

</style>