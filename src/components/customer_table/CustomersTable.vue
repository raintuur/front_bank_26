<template>
  <table class="table table-dark table-hover">
    <CustomersTabelHead/>
    <CustomersTableBody/>
  </table>
</template>
<script>
import CustomersTabelHead from "@/components/customer_table/CustomersTableHead";
import CustomersTableBody from "@/components/customer_table/CustomersTableBody";

export default {
  name: 'CustomersTable',
  components: {CustomersTableBody, CustomersTabelHead}
}
</script>
