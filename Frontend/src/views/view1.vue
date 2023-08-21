<template>
  <div>
    <h1 class="text-3xl font-bold underline text-center">View1</h1>
    <h1 class="text-3xl font-bold underline text-center">Name: {{ store.name }}</h1>
  </div>
</template>

<script setup>
import { useVuestore } from '../store/piniastore.js';

//Store
const store = useVuestore();
</script>

<style scoped></style>
