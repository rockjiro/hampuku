<template>
  <div id="app">
    <p>{{ message }}</p>
    <input type="text" name="test" v-model="message" />
  </div>
</template>

<script>
export default {
  data: function () {
    return {
      message: "Hello vue.js"
    }
  }
}
</script>

<style scoped>
p {
  font-size: 2em;
  text-align: center;
}
</style>
