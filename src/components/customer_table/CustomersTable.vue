<template>
  <table class="table table-dark table-hover">
    <CustomersTableHead/>
    <CustomersTableBody/>
  </table>
</template>
<script>
import CustomersTableBody from "@/components/customer_table/CustomersTableBody";
import CustomersTableHead from "@/components/customer_table/CustomersTableHead";

export default {
  name: 'CustomersTable',
  components: {CustomersTableHead, CustomersTableBody}
}
</script>
