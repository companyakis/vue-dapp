<script setup>

    import { inject } from 'vue';

    const {employees, updateSalary} = inject("employees")

</script>

<template>

    <div>
        Employee Data: Name and Salary
    </div>
    <div>
        <ul>
            <li v-for="emp in employees" :key="emp.id">

                {{ emp.name }} => {{ emp.salary }}

            </li>
        </ul>

        <button @click="updateSalary">Promote Bengü</button>
    </div>

</template>
