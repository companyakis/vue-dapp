<script setup>

  // let's import our local component, Footer

  import Footer from "@/components/Fixed/Footer.vue"

</script>

<template>

  <!-- global component usage! -->

  <app-header/>

  <div class="content">
    <p>Mustafa Büyükdereli, Vue and Web3 in 2025</p>
  </div>

  <!-- local component usage! -->

  <Footer />

</template>

