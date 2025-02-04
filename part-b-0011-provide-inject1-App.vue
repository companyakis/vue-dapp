<script setup>

import Employees from "@/components/EmployeeData/Employees.vue";

import { reactive, provide } from "vue";

const employees = reactive([
  {name: "Ayhan", id: 1, salary: 55000},
  {name: "Hakan", id: 3, salary: 45000},
  {name: "Kağan", id: 12, salary: 65000},
  {name: "Bengü", id: 4, salary: 42000}
])

const updateSalary = () => {employees[3].salary = 46000}

provide("employees", {employees, updateSalary})

</script>

<template>
  <app-header />

  <div class="content">
    <p>Provide & Inject</p>
  </div>

  <Employees />

</template>

<style>
body {
  margin: 0;
  padding: 0;
}
</style>
