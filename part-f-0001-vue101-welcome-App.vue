<script setup>

import { reactive } from 'vue';

const data = reactive({
  myName: "Mustafa Buyukdereli",
  year: 2025
})

</script>

<template>

  <h3>
    Vue 101 tutorial by {{ data.myName }} and year is {{ data.year }}...
  </h3>
  
</template>

<style>
body {
  margin: 0;
  padding: 0;
}
</style>
