<template>
  <div id="app">
    <router-link to="/about">文字がなかった</router-link>
    <router-view></router-view>
  </div>
</template>

<script lang="ts">
import Vue from 'vue'

export default Vue.extend({
  data () {
    return {
      message: "Hello Vue!"
    }
  }
})
</script>

<style scoped>
p {
  font-size: 2em;
  text-align: center;
}
</style>