<template>
  <table class="table table-dark table-hover">
    <CustomersHead/>

    <CustomerTableBody/>

  </table>
</template>
<script>
import CustomersHead from "@/components/customer_table/CustomersHead";
import CustomerTableBody from "@/components/customer_table/CustomerTableBody";

export default {
  name: 'CustomersTable',
  components: {CustomerTableBody, CustomersHead},
}
</script>
