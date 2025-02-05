<script setup>

import LifeCycHooks from "@/components/HooksExample/LifeCycHooks.vue"

import { ref } from 'vue';

const isActiveOrNot = ref(true)

setTimeout(() => {
  isActiveOrNot.value = false
}, 5000)

</script>

<template>

  <LifeCycHooks v-if="isActiveOrNot" />
  
</template>

<style>
body {
  margin: 0;
  padding: 0;
}
</style>
