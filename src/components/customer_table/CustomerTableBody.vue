<template>
  <tbody>
  <tr v-for="customer in customers">
    <th scope="row">{{ customer.sequenceNumber }}</th>
    <td>{{ customer.firstName }}</td>
    <td>{{ customer.lastName }}</td>
    <td>{{ customer.personalCode }}</td>
    <td>
      <button v-on:click="alertPersonalCode(customer)" type="button" class="btn btn-outline-light">Light</button>
    </td>
  </tr>
  </tbody>
</template>
<script>
export default {
  name: 'CustomerTableBody',
  data: function () {
    return {
      customers: [
        {
          firstName: 'Mario',
          lastName: 'Mumm',
          personalCode: '3940620'
        },
        {
          firstName: 'Kaja',
          lastName: 'Muru',
          personalCode: '487615'
        },
        {
          firstName: 'Kaupo',
          lastName: 'Vaher',
          personalCode: '3670327'
        }
      ]
    }
  },
  methods: {
    alertPersonalCode: function (customer) {
      alert('Isikukood: ' + customer.personalCode + ' ' + customer.lastName)
    }
  },
  beforeMount() {
    // this this.customers.forEach(value => )

    // for (let i = 0; i < this.customers.length; i++) {
    //   this.customers [i].sequenceNumber = i + 1;
    // }
    let counter = 1
    this.customers.forEach(customer => customer.sequenceNumber = counter++)
  }
}
</script>