<template>
  <table class="table table-dark table-hover">
    <CustomerTableHead/>
    <CustomersTableBody/>
  </table>
</template>
<script>
import CustomerTableHead from "@/components/customer_table/CustomerTableHead"
import CustomersTableBody from "@/components/customer_table/CustomersTableBody"

export default {
  name: 'CustomerTable',
  components: {CustomerTableHead, CustomersTableBody}
}
</script>