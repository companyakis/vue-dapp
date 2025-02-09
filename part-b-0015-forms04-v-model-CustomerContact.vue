<script setup>

import { reactive } from 'vue';

const formData = reactive({
    firstName: "",
    lastName: "",
    purpose: "suggestion",
    email: "@",
    subject: "",
    services: [],
    customerMessage: "",
})

function formSubmission(e) {
    e.preventDefault()
    console.log(formData)
}

</script>

<template>

    <form @submit="formSubmission">
        <div class="row mx-3">
            <h3 class="mt-2 mb-4">Customer Message Form</h3>
            <div class="mb-4">
                <label>Your First Name:</label>
                <input type="text" class="form-control" v-model="formData.firstName">
            </div>
            <div class="mb-4">
                <label>Your Last Name:</label>
                <input type="text" class="form-control" v-model="formData.lastName">
            </div>
            <div class="mb-4">
                <h5>Purpose of the message</h5>
                <div class="form-check">
                    <input type="radio" class="form-check-input" v-model="formData.purpose" value="suggestion">
                    <label>Suggestion</label>
                </div>
                <div class="form-check">
                    <input type="radio" class="form-check-input" v-model="formData.purpose" value="complaint">
                    <label>Complaint</label>
                </div>
            </div>
            <div class="mb-4">
                <label>Your Email:</label>
                <input type="email" class="form-control" v-model="formData.email">
            </div>
            <div class="mb-4">
                <label>Subject:</label>
                <input type="text" class="form-control" v-model="formData.subject">
            </div>
            <div class="mb-4">
                <h5>What services do you need?</h5>
                <div class="form-check">
                    <input type="checkbox" class="form-check-input" v-model="formData.services" value="assistance">
                    <label>technical assistance</label>
                </div>
                <div class="form-check">
                    <input type="checkbox" class="form-check-input" v-model="formData.services" value="training">
                    <label>training</label>
                </div>
                <div class="form-check">
                    <input type="checkbox" class="form-check-input" v-model="formData.services" value="refund">
                    <label>refund</label>
                </div>
            </div>
            <div class="mb-4">
                <h5>Your Message:</h5>
                <textarea class="form-control" rows="2" v-model="formData.customerMessage"></textarea>
            </div>
            <div>
                <button class="btn btn-success">Submit</button>
            </div>
        </div>
    </form>
    
</template>
