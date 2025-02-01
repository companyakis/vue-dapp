<script setup lang="ts">

  import { ref } from "vue"

  let taxRate = ref(0.18)

  let initilaSalary = 45000

  let salaryTL = ref(initilaSalary)


  function salaryUp(increase: number) {

    salaryTL.value += increase
  }

  function netSalary() {

    salaryTL.value -= salaryTL.value * taxRate.value
  }

</script>


<template>

  <section>

    <h1>Step 1:</h1>

    <h3>Initial net salaryTL: {{initilaSalary}}</h3>
    
  </section>

  <section>

    <h1>Step 2:</h1>

    <button @click="salaryUp(15000)">Calculate Gross Salary Increase</button>

  </section>

  <section>

    <h1>Step 3:</h1>

    <button @click="netSalary">Calculate New net Salary</button>

    <div>
      New net salary {{salaryTL}}
    </div>

  </section>

</template>
