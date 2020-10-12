<template>
  <div id="app">
    <px-header></px-header>
    <br />
    <router-view />
  </div>
</template>

<script>
import PxHeader from "./components/PxHeader.vue";

export default {
  name: "App",
  components: {
    PxHeader
  },
};
</script>
