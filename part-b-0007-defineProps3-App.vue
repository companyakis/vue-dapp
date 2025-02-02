<script setup>

  import Footer from "@/components/Fixed/Footer.vue"

  import User from "@/components/UserData/UserInfo.vue"

  import { reactive } from "vue"

  const userOne = reactive({
    userName: "Mustafa",
    userID: 101,
    department: "FinTech",
    title: "Head"
  })

  function updateTitle() {
    userOne.title = "Founder"
  }

</script>

<template>

  <app-header/>

  <div class="content">
    <p>Mustafa Büyükdereli, Vue and Web3 in 2025</p>
  </div>

  <div>
    <!-- User component and data binding -->

    <User :name="userOne.userName" :userid="userOne.userID" :department="userOne.department" :title="userOne.title" year="2025" />

    <div>
      <button @click="updateTitle">Update User Title</button>
    </div>
  </div>

  <!-- <Footer /> -->

</template>



<style>

  body {
    margin: 0;
    padding: 0;
  }

</style>

