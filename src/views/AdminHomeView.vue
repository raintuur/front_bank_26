<template>
  <div>
    <h1>Admin koduvaade</h1>
    <h3>Adminni id: {{ adminId }}</h3>

    <div class="d-grid gap-2 col-3 mx-auto">

      <div class="input-group mb-3">
        <span class="input-group-text" id="basic-addon1">Seerianumber</span>
        <input v-model="atmRequest.serialNumber" type="text" class="form-control" placeholder="A1735">
      </div>

      <select v-model="atmRequest.status" class="form-select" aria-label="Default select example">
        <option selected disabled value="X">Staatus</option>
        <option value="A">Aktiivne</option>
        <option value="P">Ootel</option>
        <option value="S">Hoolduses</option>
        <option value="O">Offline</option>
      </select>

      <ServicesCheckbox :atm-options="atmRequest.options"/>

      <button v-on:click="addAtm" class="btn btn-primary" type="button">Lisa ATM</button>
    </div>

  </div>
</template>

<script>
import ServicesCheckbox from "@/components/ServicesCheckbox";

export default {
  name: 'AdminHomeView',
  components: {
    ServicesCheckbox
  },
  data: function () {
    return {
      adminId: sessionStorage.getItem('userId'),
      atmRequest: {
        locationId: sessionStorage.getItem('locationId'),
        serialNumber: "string",
        status: 'X',
        options: [
          {
            optionId: 0,
            optionName: '',
            isSelected: true
          }
        ]
      }
    }
  },
  methods: {
    addAtm: function () {
      this.$http.post("/atm/new", this.atmRequest
      ).then(response => {
        console.log(response.data)
      }).catch(error => {
        console.log(error)
      })
    },


    getAtmServicesCheckboxInfo: function () {
      this.$http.get('/atm/option')
          .then(result => {
            this.atmRequest.options = result.data
          })
          .catch(error => {
            // alert("NO!!!!")
            console.log('Services checkboxi viga')
          });
    }
  },
  beforeMount() {
    this.getAtmServicesCheckboxInfo()
  }
}
</script>