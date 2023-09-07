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

onMounted(async () => {
  if (localStorage.getItem(store.$id)) {
    store.$state = JSON.parse(localStorage.getItem(store.$id));
  }

  //ServiceWorker probieren zu starten
  if ('serviceWorker' in navigator) {
    const ServiceWorker = await navigator.serviceWorker.register('/serviceWorker.js');
    ServiceWorker.active.postMessage({ type: 'SKIP_WAITING' });
  }
});
</script>

<style scoped></style>
