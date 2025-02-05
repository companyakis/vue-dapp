<script setup>

import "@/components/EmployeeData/EmpSalary.vue"

import { reactive } from "vue";

const employees = reactive([
  {name: "Ayhan", id: 1, salary: 55000},
  {name: "Hakan", id: 3, salary: 45000},
  {name: "Kağan", id: 12, salary: 65000},
  {name: "Bengü", id: 4, salary: 42000}
])

</script>

<template>
  <app-header />

  <h3>Employee Name and Salary</h3>

  <EmpSalary>

    <ul>
      <li v-for="emp in employees" :key="emp.id">
        {{ emp.name }} : {{ emp.salary }}
      </li>
    </ul>

  </EmpSalary>
 
</template>

<style>
body {
  margin: 0;
  padding: 0;
}
</style>
