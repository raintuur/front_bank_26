<template>
  <tbody>
  <tr v-for="customer in customers">
    <th scope="row">{{customer.sequenceNumber}}</th>
    <td>{{ customer.firstName }}</td>
    <td>{{ customer.lastName }}</td>
    <td>{{ customer.personalCode }}</td>
    <td>
      <button v-on:click="alertPersonalCode(customer)" type="button" class="btn btn-light">Light</button>
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
          personalCode: '48405040000'
        },
        {
          firstName: 'Kaupo',
          lastName: 'Vaher',
          personalCode: '38405040000'
        }
      ]
    }
  },
  methods: {
    alertPersonalCode: function (customer) {
      alert('Isikukood: ' + customer.personalCode)
    }
  },
  beforeMount() {
    // this.customers.forEach(value => )
    // for (let i = 0; i < this.customers.length; i++) {
    //   this.customers[i].sequenceNumber = i + 1;
    // }
    let counter = 1

    //console.log('olen SIIN')
    this.customers.forEach(customer => {
      //console.log('customer: ' + JSON.stringify(customer))
      customer.sequenceNumber = counter++
    })

  }
}
</script>