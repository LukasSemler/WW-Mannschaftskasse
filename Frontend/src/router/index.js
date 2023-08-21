import HomeView from '../views/HomeView.vue';
import { createRouter, createWebHashHistory } from 'vue-router';

const router = createRouter({
  history: createWebHashHistory(),

  routes: [
    { path: '/', component: HomeView },
    { path: '/rules', component: () => import('../views/RulesView.vue') },
  ],
});

export default router;
