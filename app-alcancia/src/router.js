import Vue from "vue";
import Router from "vue-router";
import Home from "@/views/Home";
import CheckBalance from "@/views/CheckBalance";
import Error from "@/views/Error";

Vue.use(Router);

export default new Router({
  mode: "history",
  routes: [
    {
      path: "/",
      name: "home",
      component: Home
    },
    {
      path: "/checkBalance",
      name: "checkBalance",
      component: CheckBalance
    },
    {
      path: "*",
      name: "error",
      component: Error
    }
  ]
});
