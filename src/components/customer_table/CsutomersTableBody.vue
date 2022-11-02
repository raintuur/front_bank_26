<template>
  <tbody>
  <tr v-for="customer in customers">
    <td>{{customer.number}}</td>
    <td>{{customer.firstName}}</td>
    <td>{{customer.lastName}}</td>
    <td>{{customer.personalCode}}</td>
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
          firstName: 'Kristjan',
          lastName: 'Pärna',
          personalCode: '39308102222',
          number: 1
        },
        {
          firstName: 'Kaupo',
          lastName: 'Vaher',
          personalCode: '49308101111',
          number: 2
        },
        {
          firstName: 'Kaja',
          lastName: 'Vaher',
          personalCode: '39308103333',
          number: 3
        },
      ]
    }
  }
}
</script>