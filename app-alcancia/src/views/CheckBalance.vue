<template>
  <div>
    <b-container>
      <b-row>
        <b-col
          cols="12"
          md="6"
          sm="6"
          lg="6"
          class="text-center"
          align-v="center"
        >
          <div>
            <b-table :items="items" :fields="fields"></b-table>
          </div>
        </b-col>
        <b-col
          cols="12"
          md="4"
          sm="4"
          lg="4"
          class="text-center"
          align-v="rigth"
        >
          <div>
            <b-card
              title="Saldo Total"
              body-class="text-center"
              header-tag="nav"
            >
              
              <b-card-text>
                Este es tu monto total hasta la fecha
              </b-card-text>
              <b-card-text>
               {{SaldoTotal}}
               <b-icon-patch-check-fll></b-icon-patch-check-fll>
              </b-card-text>
             
            </b-card>
          </div>
        </b-col>
      </b-row>
    </b-container>
  </div>
</template>

<script>
import api from "../api";

export default {
  name: "CheckBalance",
  data() {
    return {
      fields: ["Denominacion", "Cantidad", "Total"],
      items: [],
      ad: [],
    };
  },
  created() {
    api.getAssets().then(
      (items) =>
        (this.items = items.map((i) => {
          return {
            Denominacion: i.denominacion,
            Cantidad: i.cantidadDeMonedas,
            Total: i.denominacion * i.cantidadDeMonedas,
          };
        }))
    );
  },
  computed :{
        SaldoTotal (){
          let total = 0
          this.items.forEach(element => {
            total += element.Total
          });
            return total
        }
    },
};
</script>
