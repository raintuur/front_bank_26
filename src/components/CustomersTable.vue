<template>
  <table class="table table-dark table-hover">
    <CustomersTableHead/>
    <CustomersTableBody/>
  </table>
</template>
<script>
import CustomersTableBody from "@/components/CustomersTableBody";
import CustomersTableHead from "@/components/CustomersTableHead";

export default {
  name: 'CustomersTable',
  components: {CustomersTableHead, CustomersTableBody}
}
</script>
