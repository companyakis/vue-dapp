<script setup>
const props = defineProps({
  name: String,
  userid: {
    type: String,
    required: true,
    default: "000"
  },
  department: String,
  title: String,
  year: Number,
  salary: {
    type: Number,
    required: true,
    validator(s) {
        if (s < 70000) {return false}
        else {return true}
    }
  },
});

const emit = defineEmits(["update-department"]);

const updateDepartment = () => {
  emit("update-department", "Credits");
};
</script>

<template>
  <div>User Information</div>

  <ul>
    <li>User name: {{ name }}</li>
    <li>User ID: {{ userid }}</li>
    <li>User department: {{ department }}</li>
    <li>User title: {{ title }}</li>
    <li>User salary: {{ salary }} ₺</li>
    <li>Year: {{ year }}</li>
  </ul>

  <button @click="updateDepartment">Update Department</button>
</template>
