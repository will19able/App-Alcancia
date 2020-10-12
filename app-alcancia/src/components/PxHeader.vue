<template>
  <div>
    <b-navbar
      toggleable="lg"
      type="dark"
      variant="money"
      class="navbar bd-navbar flex-column flex-md-row navbar-dark navbar-expand"
    >
      <b-navbar variant="faded" type="light">
        <b-navbar-brand href="#">
          <px-icon></px-icon>
          App Alcancia
        </b-navbar-brand>
      </b-navbar>

      <b-navbar-toggle target="nav-collapse"></b-navbar-toggle>

      <b-collapse id="nav-collapse" is-nav>
        <!-- Right aligned nav items -->
        <b-navbar-nav class="ml-auto">
          <b-navbar-nav>
            <router-link class="nav-link" to="/">Inicio</router-link>
            <router-link class="nav-link" to="/checkbalance"
              >Consultar Saldo</router-link
            >
          </b-navbar-nav>
        </b-navbar-nav>
      </b-collapse>
    </b-navbar>
  </div>
</template>
<script>
import PxIcon from "@/components/PxIcon";

export default {
  name: "PxHeader",

  components: { PxIcon }
};
</script>

<style scoped>
.navbar.navbar-dark.bg-money {
  background-color: #69d294 !important;
}
</style>
