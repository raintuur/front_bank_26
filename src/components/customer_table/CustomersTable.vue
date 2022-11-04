<template>
  <table class="table table-dark table-hover">
    <CustomerTableHead/>
    <CustomerTableBody/>
  </table>
</template>
<script>
import CustomerTableBody from "@/components/customer_table/CustomerTableBody";
import CustomerTableHead from "@/components/customer_table/CustomerTableHead";

export default {
  name: 'CustomersTable',
  components: {CustomerTableHead, CustomerTableBody}
}
</script>
