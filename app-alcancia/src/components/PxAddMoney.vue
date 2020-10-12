<template>
  <b-col cols="12" md="6" sm="6" lg="4">
    <div>
      <b-card
        no-body
        class="overflow-hidden"
        style="max-width: 540px; margin: 2rem;"
      >
        <b-row no-gutters>
          <b-col md="4">
            <b-card-img
              src="moneda.png"
              alt="Image"
              class="rounded-0"
              style="margin-top: 50%;"
            ></b-card-img>
          </b-col>
          <b-col md="8">
            <b-card-body :title="'Agregar monedas de ' + denominacion">
              <b-card-text>
                <b-col sm="12">
                  <b-form-input
                    :id="denominacion + 'inputAddMoney'"
                    type="number"
                    min="1"
                    v-model="cantidadAgregar"
                  ></b-form-input>
                </b-col>
                <br />
                <b-container>
                  <b-row class="text-center" align-v="center">
                    <b-col
                      ><b-button
                        class="main-navigation-button"
                        variant="success"
                        v-on:click="addBalance"
                        >Agregar</b-button
                      ></b-col
                    >
                  </b-row>
                </b-container>
              </b-card-text>
            </b-card-body>
          </b-col>
        </b-row>
      </b-card>
    </div>
  </b-col>
</template>

<script>
import api from "../api";
export default {
  name: "PxAddMoney",
  props: ["denominacion"],
  data() {
    return {
      cantidadAgregar: "",
    };
  },
  methods: {
    addBalance() {
      api
        .addBalance({
          cantidad: this.cantidadAgregar,
          denominacion: this.denominacion,
        })
        .then(this.clearField());
    },
    clearField() {
      alert("Monto agregado con exito.")
      this.cantidadAgregar = "";
      
    },
  },
};
</script>

<style scoped>
.card-body h4 {
  font-size: 14px;
  text-align: center;
}
</style>
