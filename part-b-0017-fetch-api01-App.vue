<script setup>

import Departments from './components/DepartmentsData/Departments.vue';
import AddDepartment from './components/DepartmentsData/AddDepartment.vue';

import {shallowRef} from 'vue';

const activeComponent = shallowRef(Departments)

</script>

<template>

  <div class="container mt-5 mb-4">
    <button @click="activeComponent = Departments" class="btn btn-success me-3">Departments</button>
    <button @click="activeComponent = AddDepartment" class="btn btn-warning">Add a Department</button>
  </div>
  <div class="container">
    <component :is="activeComponent"/>
  </div>

</template>

<style>
body {
  margin: 0;
  padding: 0;
}
</style>
