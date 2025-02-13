<script setup>

import { useCounterStore } from './stores/counter';

const store = useCounterStore()

</script>

<template>

  <p>{{ store.counter }}</p>

  <p>{{ store.counterData.version }}</p>

  <p>{{ store.counterData.createdBy }}</p>
  
</template>

