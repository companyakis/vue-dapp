<script setup>
</script>

<template>

    <form>
        <div class="row mx-3">
            <h3 class="mt-2 mb-4">Customer Message Form</h3>
            <div class="mb-4 ">
                <label>Your First Name:</label>
                <input type="text" class="form-control">
            </div>
            <div class="mb-4">
                <label>Your Last Name:</label>
                <input type="text" class="form-control">
            </div>
            <div class="mb-4">
                <h5>Purpose of the message</h5>
                <div class="form-check">
                    <input type="radio" class="form-check-input">
                    <label>Suggestion</label>
                </div>
                <div class="form-check">
                    <input type="radio" class="form-check-input">
                    <label>Complaint</label>
                </div>
            </div>
            <div class="mb-4">
                <label>Your Email:</label>
                <input type="email" class="form-control">
            </div>
            <div class="mb-4">
                <label>Subject:</label>
                <input type="text" class="form-control">
            </div>
            <div class="mb-4">
                <h5>What services do you need?</h5>
                <div class="form-check">
                    <input type="checkbox" class="form-check-input">
                    <label>technical assistance</label>
                </div>
                <div class="form-check">
                    <input type="checkbox" class="form-check-input">
                    <label>training</label>
                </div>
                <div class="form-check">
                    <input type="checkbox" class="form-check-input">
                    <label>refund</label>
                </div>
            </div>
            <div class="mb-4">
                <h5>Your Message:</h5>
                <textarea class="form-control" rows="2"></textarea>
            </div>
            <div>
                <button class="btn btn-success">Submit</button>
            </div>
        </div>
    </form>
    
</template>
