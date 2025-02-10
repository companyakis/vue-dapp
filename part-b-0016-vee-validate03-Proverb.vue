<script setup>
  
import { reactive } from "vue"
import {Form, Field, ErrorMessage} from "vee-validate"

const formData = reactive({
    proverb: ""
})

function requiredProverb() {
    if (!formData.proverb) {
        return "Please, type a proverb!"
    }

    if (formData.proverb.length < 10) {
        return "Please, we need at least 10 chars!"
    }
    return true
}

</script>

<template>

    <Form>
        <div class="mt-4 mb-3 mx-5">
            <label class="mb-2">Type a proverb:</label>
            <Field :rules=[requiredProverb] name="proverb" class="form-control" v-model="formData.proverb"/>
            <ErrorMessage name="proverb" as="div" v-slot="{message}">
            <div class="alert alert-warning">
                {{ message }}
            </div>
        </ErrorMessage>
        <button class="btn btn-success mt-3">Submit Proverb</button>
        </div>
    </Form>
    
</template>

