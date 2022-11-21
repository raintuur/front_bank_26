<template>
  <div>
    <h1>See on adminni koduvaade</h1>
    <h3>Admin id on {{ adminId }}</h3>
    <div>
      <div class="d-grid gap-2 col-3 mx-auto">
        <div class="input-group mb-3">
          <span class="input-group-text" id="inputGroup-sizing-default">ATM seeria number</span>
          <input v-model="atmRequest.serialNumber" type="text" class="form-control" aria-label="Sizing example input"
                 aria-describedby="inputGroup-sizing-default">
        </div>
        <div>
          <CitiesServicesCheckbox :atm-options="atmRequest.options"/>
        </div>
        <select v-model="atmRequest.status" class="form-select" aria-label="Default select example">
          <option selected disabled value="X">Vali staatus</option>
          <option value="A">Aktiivne</option>
          <option value="P">Aktiveerimata</option>
        </select>


        <button v-on:click="postNewAtm" class="btn btn-primary" type="button">Lisa ATM</button>
      </div>
    </div>
  </div>
</template>

<script>
import CitiesServicesCheckbox from "@/components/atm_ components/CitiesServicesCheckbox";

export default {
  name: 'AdminHomeView',
  components: {CitiesServicesCheckbox},
  data: function () {
    return {
      adminId: sessionStorage.getItem('userId'),
      atmRequest: {
        locationId: sessionStorage.getItem('locationId'),
        serialNumber: '',
        status: 'X',
        options: [
          {
            optionId: 0,
            optionName: '',
            selected: null
          }
        ]
      }

    }
  },

  methods: {
    getAtmServiceSelectBoxInfo: function () {
      console.log('Olen Siin')
      this.$http.get('/atm/option')
          .then(result => {
            this.atmRequest.options = result.data
          })
          .catch(error => {
            alert('Viga')
            console.log('Ou Nou! Mingi viga tuli vastuseks')
          });
    },

    postNewAtm: function () {
      this.$http.post("/atm/new", this.atmRequest
      ).then(response => {
        console.log(response.data)
      }).catch(error => {
        console.log(error)
      })
    }


  },

  beforeMount() {
    this.getAtmServiceSelectBoxInfo()
  }
}
</script>
