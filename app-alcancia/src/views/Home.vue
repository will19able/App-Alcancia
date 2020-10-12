<template>
  <b-container>
    <b-row>
      <px-add-money v-bind:denominacion="50"></px-add-money>
      <px-add-money v-bind:denominacion="100"></px-add-money>
      <px-add-money v-bind:denominacion="200"></px-add-money>
      <px-add-money v-bind:denominacion="500"></px-add-money>
      <px-add-money v-bind:denominacion="1000"></px-add-money>
    </b-row>
  </b-container>
</template>

<script>
import PxAddMoney from "@/components/PxAddMoney.vue";
export default {
  name: "Home",
  components: { PxAddMoney }
};
</script>
