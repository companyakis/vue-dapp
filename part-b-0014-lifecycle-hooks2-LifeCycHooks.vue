<script setup>

import { onBeforeMount, onMounted, onBeforeUpdate, onUpdated, ref } from 'vue';

onBeforeMount(() => {console.log("First step!")})

onMounted(() => {console.log("Second step!")})

onBeforeUpdate(() => console.log("onBeforeUpdate worked!") )

onUpdated(() => {console.log("onUpdated worked!")})

const salary = ref(70000)

function salaryIncrease() {
    salary.value = 95000
}

</script>

<template>

<div>İnitial salary: {{ salary }}</div>

<div>
    <button @click="salaryIncrease">Update Salary</button>
</div>

</template>
