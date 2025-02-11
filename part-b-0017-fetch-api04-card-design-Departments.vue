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

    <div class="row mt-4">
        <div class="col-md-6 mb-3" v-for="d in data.departments" :key="d.id">
            <div class="card">
                <div class="card-body">
                    <h5 class="card-text">
                        Department: {{ d.name }}
                    </h5>
                    <p class="card-text">
                        Department Head: {{ d.head }}
                    </p>
                    <p class="card-text">
                        Department Head: {{ d.head }}
                    </p>
                    <p class="card-text">
                        Number of Employees: {{ d.employees }}
                    </p>
                </div>
            </div>
        </div>

    </div>
    
</template>
