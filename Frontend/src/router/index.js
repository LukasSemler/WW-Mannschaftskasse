import HomeView from '../views/HomeView.vue';
import { createRouter, createWebHashHistory } from 'vue-router';

const router = createRouter({
  history: createWebHashHistory(),

  routes: [
    { path: '/', component: HomeView },
    { path: '/rules', component: () => import('../views/RulesView.vue') },
    { path: '/login', component: () => import('../views/LoginUserView.vue') },
  ],
});

export default router;
