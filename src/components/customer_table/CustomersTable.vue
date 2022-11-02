<template>
  <table class="table table-dark table-hover">
    <CustomersTableHead/>
    <CustomersTableBody/>
  </table>
</template>
<script>
import CustomersTableHead from "@/components/customer_table/CustomersTableHead";
import CustomersTableBody from "@/components/customer_table/CsutomersTableBody";

export default {
  name: 'CustomersTable',
  components: {CustomersTableBody, CustomersTableHead}
}
</script>
