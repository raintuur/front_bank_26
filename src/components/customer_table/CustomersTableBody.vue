<template>
  <tbody>
  <tr v-for="customer in customers">
    <th scope="row">*</th>
    <td>{{ customer.firstName }}</td>
    <td>{{ customer.lastName }}</td>
    <td>{{ customer.personalCode }}</td>
    <td>
      <button v-on:click="alertPersonalCode (customer)" type="button" class="btn btn-light">Light</button>
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
          firstName: `Rain`,
          lastName: `Tüür`,
          personalCode: `5456666`
        },
        {
          firstName: `Kaupo`,
          lastName: `Saar`,
          personalCode: `335456666`
        },
        {
          firstName: `Kaja`,
          lastName: `Saar`,
          personalCode: `335456688`
        }
      ]
    }

  },
  methods: {
    alertPersonalCode: function () {
      alert('Isikukood: ' + customer.personalCode)
    }
  }
}
</script>


