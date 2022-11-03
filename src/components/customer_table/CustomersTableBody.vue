<template>
  <tbody>
  <tr v-for="customer in customers">
    <th scope="row">{{ customer.sequenceNumber }}</th>
    <td>{{ customer.firstName }}</td>
    <td>{{ customer.lastName }}</td>
    <td>{{ customer.personalCode }}</td>
    <td>
      <button v-on:click="alertPersonalCode(customer.personalCode)" type="button" class="btn btn-outline-light">Info
      </button>
    </td>
  </tr>
  </tbody>
</template>
<script>
export default {
  name: 'CustomersTableBody',
  data: function () {
    return {
      customers: [
        {
          firstName: 'Rain',
          lastName: 'Tüür',
          personalCode: '38405040000'
        },
        {
          firstName: 'Kaja',
          lastName: 'Vaher',
          personalCode: '468405040000'
        },
        {
          firstName: 'Kaupo',
          lastName: 'Vaher',
          personalCode: '38405040000'
        },
      ]
    }
  },
  methods: {
    alertPersonalCode: function (personalCode) {
      alert('Isikukood: ' + personalCode)
    }
  },
  // beforeMount() {
  //   for (let i = 0; i < this.customers.length; i++) {
  //     this.customers[i].sequenceNumber = i+1
  //   }
  // }
  beforeMount() {
    let counter = 1
    this.customers.forEach(customer => customer.sequenceNumber = counter++)
  }
}
</script>