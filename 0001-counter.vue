<script setup>

  import {ref} from "vue"

  const counter = ref(0)

  function counterUp() {
    counter.value++
  }

  function counterDown() {
    counter.value--
  }

</script>

<template>

  <div>
    <button @click="counterUp">Counter ++</button>
  </div>

  <h1>Counter value: {{counter}}</h1>
  
  <div>
    <button @click="counterDown">Counter --</button>
  </div>

</template>
