<template>
  <div>
    <h1 class="text-3xl font-bold underline text-center">View2</h1>
    <h4 class="text-3xl font-bold underline text-center">Counter: {{ store.count }}</h4>
  </div>
</template>

<script setup>
import { useVuestore } from '../store/piniastore.js';

//Store
const store = useVuestore();
</script>

<style scoped></style>
