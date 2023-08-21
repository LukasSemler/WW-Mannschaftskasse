import { createApp } from 'vue';
import { createPinia } from 'pinia';
import './style.css';
import App from './App.vue';
import router from './router/index.js';

const VueApp = createApp(App);
const piniaStore = createPinia();

VueApp.use(piniaStore); // Pinia
VueApp.use(router); // Router

VueApp.mount('#app');
