<script setup>

import Proverb1 from '@/components/Proverbs/Proverb1.vue';
import Proverb2 from '@/components/Proverbs/Proverb2.vue';

import { shallowRef } from 'vue';

const activeComponent = shallowRef(Proverb1)

</script>

<template>

  <div>
    <button @click="activeComponent = Proverb1">English Proverb</button>
    <button @click="activeComponent = Proverb2">Türk Atasözü</button>
  </div>
  
  <div>
    <component :is="activeComponent"></component>
  </div>

</template>

<style>
body {
  margin: 0;
  padding: 0;
}
</style>
