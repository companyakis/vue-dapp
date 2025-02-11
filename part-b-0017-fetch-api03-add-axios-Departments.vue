<script setup>

// npm i axios

import axios from 'axios';
import { reactive, onMounted } from 'vue';

const data = reactive({
    departments: []
})

const getDepartments = async() => {
    try {
        const response = await axios.get("http://localhost:3000/deps")
        //console.log(response.data)
        data.departments = response.data
    } catch (e) {
        console.error(e)
    }
}

onMounted(() => {
    getDepartments()
})

</script>

<template>
    
</template>
