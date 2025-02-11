<script setup>

import { reactive } from 'vue';
import axios from 'axios';

const dep = reactive({
    name: "",
    head: "",
    employees: 0 // intially int 0, or string => employees: ""
})

const submitNewDepartment = () => {
    axios({
        method: "POST",
        url: "http://localhost:3000/deps",
        data: dep
    }).then(() =>{

    }).catch(() => {

    }).finally(() => {

    })
}

</script>

<template>

    <form class="mt-3" @submit.prevent="submitNewDepartment">
        <div class="mb-3">
            <label class="form-label">Department Name:</label>
            <input type="text" class="form-control" v-model="dep.name">
        </div>
        <div class="mb-3">
            <label class="form-label">Department Head:</label>
            <input type="text" class="form-control" v-model="dep.head">
        </div>
        <div class="mb-3">
            <label class="form-label">Number of Employees:</label>
            <input type="number" class="form-control" v-model="dep.employees">
        </div>
        <button class="btn btn-primary" type="submit">Add a New Department</button>
    </form>
    
</template>
