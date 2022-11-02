<template>
  <tbody>
  <tr v-for="customer in customers">
    <th scope="row">*</th>
    <td>{{customer.firstName}}</td>
    <td>{{customer.lastName}}</td>
    <td>{{customer.personalCode}}</td>
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
          firstName: 'Kaupo',
          lastName: 'Vaher',
          personalCode: '30000000000'
        },
        {
          firstName: 'Rain',
          lastName: 'Tüür',
          personalCode: '31000000000'
        }
      ]
    }
  }
}
</script>