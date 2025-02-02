<script setup>

    const props =defineProps(["name", "userid", "department", "title", "year"])

</script>

<template>

    <div>User Information</div>

    <ul>
        <li>User name: {{ name }}</li>
        <li>User ID: {{ userid }}</li>
        <li>User department: {{ department }}</li>
        <li>User title: {{ title }}</li>
        <li>Year: {{ year }}</li>
    </ul>

</template>
