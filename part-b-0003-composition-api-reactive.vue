<script setup lang="ts">

  import { reactive } from "vue"

  let person = reactive({
    name: "Aygün Bilge",
    department: "Sales",
    salaryTL:  55000
  })

  function updatePersonInfo() {
    person.name = "Aygün Büyükdereli",
    person.department = "Operations",
    person.salaryTL = 62000
  }

</script>


<template>

  <div>
    <div>Person name: {{person.name}}</div>
    <div>Person department: {{person.department}}</div>
    <div>Person salary ₺: {{person.salaryTL}}</div>
  </div>

  <div>
    <button @click="updatePersonInfo">Update Person Data</button>
  </div>

</template>
