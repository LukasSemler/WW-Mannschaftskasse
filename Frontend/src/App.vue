<template>
  <div>
    <!--Router-View-->
    <router-view></router-view>
  </div>
</template>

<script setup>
import { wwStore } from './store/wwStore.js';
import { onMounted } from 'vue';

const store = wwStore();

onMounted(() => {
  if (localStorage.getItem(store.$id)) {
    store.$state = JSON.parse(localStorage.getItem(store.$id));
  }
});
</script>

<style scoped></style>
