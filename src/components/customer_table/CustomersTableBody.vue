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
  data: function () {
    return {
      customers: [
        {
          firstName: 'Rain',
          lastName: 'Tüür',
          personalCode: '49905190000'
        },
        {
          firstName: 'Kaupo',
          lastName: 'Vaher',
          personalCode: '48803290000'
        },
        {
          firstName: 'Kaja',
          lastName: 'Leib',
          personalCode: '39505190000'
        }
      ]
    }
  }
}
</script>