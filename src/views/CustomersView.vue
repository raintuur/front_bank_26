<template>
  <div class="row m-5">

    <CustomersTable/>

  </div>
</template>

<script>
import CustomersTable from "@/components/CustomersTable";

export default {
  name: "CustomersView",
  components: {CustomersTable}
}
</script>

