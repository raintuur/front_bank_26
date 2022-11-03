<template>
  <tbody>
  <tr v-for="customer in customers">
    <th scope="row">{{customer.secuenceNumber}}</th>
    <td>{{customer.firstName}}</td>
    <td>{{customer.lastName}}</td>
    <td>{{customer.personalCode}}</td>
    <td><button v-on:click="alertPersonalCode (customer.personalCode)" type="button" class="btn btn-light">Light</button></td>
  </tr>
  </tbody>
</template>
<script>
export default {
  name: 'CustomersTableBody',
  data: function (){
    return {
      customers: [
        {
          firstName: 'Sandra',
          lastName: 'Sulp',
          personalCode: '40000000000'
        },
        {
          firstName: 'Liina',
          lastName: 'Lill',
          personalCode: '30000000000'
        },
        {
          firstName: 'Tiina',
          lastName: 'Laud',
          personalCode: '41000000000'
        }
      ]
    }
  },
  methods: {
    alertPersonalCode: function (personalCode) {
      alert('Isikukood: ' + personalCode)
    }
  },
  beforeMount () {
    // this.customers.forEach(value=> )
    // for(let i = 0; i< this.customers.length; i++){
    //   this.customers[i].sequenceNumber = i + 1;
    //
    // }
    let counter = 1

    console.log('Olen SIIN')
    this.customers.forEach(customer => {
      console.log('customer: ' + JSON.stringify(customer))
      customer.secuenceNumber = counter++
    })
  }
}
</script>