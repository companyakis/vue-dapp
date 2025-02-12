<script setup>

import { reactive } from 'vue';
import axios from 'axios';

import {useToast} from 'vue-toast-notification';

const $toast = useToast();


const dep = reactive({
    name: "",
    head: "",
    employees: 0
})

const submitNewDepartment = () => {
    axios({
        method: "POST",
        url: "http://localhost:3000/deps",
        data: dep
    }).then(() =>{
        $toast.success('A new department added!')
    }).catch(() => {
        $toast.error('Error!');
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
