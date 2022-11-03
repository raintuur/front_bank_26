<template>
  <div>
    <div class="row justify-content-md-center m-5">
      <div class="col-lg-10">
        <CustomerTable/>
      </div>
    </div>
  </div>
</template>

<script>
import CustomerTable from "@/components/customer_table/CustomerTable";

export default {
  components: {CustomerTable}
}
</script>

