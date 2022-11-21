<template>
  <div>
    <h1>Admin koduvaade</h1>
    <h3>Adminni id: {{adminId}}</h3>


    <div class="d-grid gap-2 col-3 mx-auto">

      <div class="input-group mb-3">
        <span class="input-group-text" id="inputGroup-sizing-default">ATM seerianumber</span>
        <input type="text" placeholder="AAA" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default">
      </div>

      <select class="form-select" aria-label="Default select example">
        <option selected disabled>Vali staatus</option>
        <option value="A">aktiivne</option>
        <option value="P">aktiveerimata</option>
      </select>

      <ServicesCheckbox :atm-options="atmOptions"/>

      <button class="btn btn-primary" type="button">Lisa ATM</button>
    </div>

  </div>
</template>

<script>
import ServicesCheckbox from "@/components/ServicesCheckbox";

export default {
  name: 'AdminHomeView',
  components: {ServicesCheckbox},
  data: function () {
    return {
      adminId: sessionStorage.getItem('userId'),
      atmOptions: [
        {
          optionId: 0,
          optionName: '',
          isSelected: false
        }
      ],
      atmRequest: {
        locationId: sessionStorage.getItem('locationId'),
        serialNumber: '',
        status: '',
        options: [
          {
            optionId: 0,
            isSelected: true
          }
        ]
      }
    }
  },
  methods: {
    getAtmServicesCheckboxInfo: function () {
      this.$http.get('/atm/option')
          .then(result => {
            this.atmOptions.options = result.data
          })
          .catch(error => {
            alert("NO!!!!")
          });
    },
  },
  beforeMount() {
    this.getAtmServicesCheckboxInfo()
  }
}
</script>