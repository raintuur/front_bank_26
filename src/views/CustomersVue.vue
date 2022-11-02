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
import CustomersTable from "@/components/CustomersTable";

export default {
  name: "CustomersVue",
  components: {CustomersTable}
}
</script>

