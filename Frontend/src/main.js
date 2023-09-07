import { createApp } from 'vue';
import { createPinia } from 'pinia';
import './style.css';
import App from './App.vue';
import router from './router/index.js';
import axios from 'axios';

//Base-URL axios
if (
  location.origin === 'http://localhost:8080' ||
  location.origin === 'http://localhost:5050' ||
  location.origin === 'http://localhost:4173'
) {
  axios.defaults.baseURL = 'http://localhost:2410';
}

const VueApp = createApp(App);
const piniaStore = createPinia();

VueApp.use(piniaStore); // Pinia
VueApp.use(router); // Router

VueApp.mount('#app');
