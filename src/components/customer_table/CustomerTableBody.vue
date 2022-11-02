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
          lastName: 'Vaher',
          personalCode: '487615'
        },
        {
          firstName: 'Kaupo',
          lastName: 'Vaher',
          personalCode: '3670327'
        }
      ]
    }
  }
}
</script>