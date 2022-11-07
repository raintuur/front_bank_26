<template>
  <div>
    <div class="row justify-content-md-center m-5">
      <div class="col-lg-2">
        <CustomersTable/>
      </div>
    </div>
  </div>
</template>

<script>
import CustomersTable from "@/components/customer_table/CustomersTable";

export default {
  name: "CustomersView",
  components: {CustomersTable}

}
</script>

