<template>
  <tbody>
  <tr v-for="customer in customers">
    <th scope="row">1</th>
    <td>{{customer.firstName}}</td>
    <td>{{customer.lastName}}</td>
    <td>{{customer.personalCode}}</td>
    <td><button v-on:click="alertPersonalCode(customer.personalCode)" type="button" class="btn btn-outline-info">Info</button></td>
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
          firstName: 'Rain',
          lastName: 'Tyyr',
          personalCode: '12345678900',
        },
        {
          firstName: 'Kaupo',
          lastName: 'Vaher',
          personalCode: '12345678901',
        },
        {
          firstName: 'Mikk',
          lastName: 'Hyydma',
          personalCode: '12345678902',
        },

      ]
    }

  },
  methods: {
    alertPersonalCode: function (personalCode){
      alert('Isikukood: '+ personalCode )
    }
  }
}

</script>