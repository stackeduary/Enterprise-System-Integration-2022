<template>
  <my-header></my-header>
</template>

<script>
import Header from "./components/Header";

export default {
  name: "App",
  components: {
    "my-header": Header,
  },
  created() {
    if (sessionStorage.getItem("Token") !== null) {
      this.$store.commit("stateLogin");
    }
  },
};
</script>

<style>
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}
</style>
