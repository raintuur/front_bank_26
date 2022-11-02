<template>
  <tbody>
  <tr v-for="customer in customers">
    <th scope="row">*</th>
    <td>{{ customer.firstName }}</td>
    <td>{{ customer.lastName }}</td>
    <td>{{ customer.personalCode }}</td>
  </tr>
  </tbody>
</template>
<script>
export default {
  name: 'CustomersTableBody',
  data: function (){
    return{
      customers: [
        {
          firstName: 'Rain',
          lastName: 'Tüür',
          personalCode: '384'
        },
        {
          firstName: 'Kaja',
          lastName: 'Vaher',
          personalCode: '4384'
        },
        {
          firstName: 'Kaupo',
          lastName: 'Vaher',
          personalCode: '384'
        }

      ]
    }
  }
}
</script>