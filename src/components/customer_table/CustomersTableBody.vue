<template>
  <tbody>
  <tr v-for="customer in customers">
    <th scope="row">*</th>
    <td>{{customer.firstName}}</td>
    <td>{{customer.lastName}}</td>
    <td>{{customer.personalcode}}</td>

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
          personalcode: '38901220277'
        },
        {
          firstName: 'Kaupo',
          lastName: 'Tüür',
          personalcode: '38701220277'
        },
        {
          firstName: 'Astrid',
          lastName: 'Oras',
          personalcode: '48901220277'
        },
    }
      ]
    }
  }
}
</script>