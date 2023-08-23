import HomeView from '../views/HomeView.vue';
import { createRouter, createWebHashHistory } from 'vue-router';

const router = createRouter({
  history: createWebHashHistory(),

  routes: [
    { path: '/', component: HomeView },
    { path: '/rules', component: () => import('../views/RulesView.vue') },
    { path: '/login', component: () => import('../views/LoginUserView.vue') },
    { path: '/addAmount', component: () => import('../views/AddAmountView.vue') },
    { path: '/stats', component: () => import('../views/StatisticsView.vue') },
    {
      path: '/statsPlayer/:id',
      component: () => import('../views/StatPerPlayerView.vue'),
      params: true,
    },
  ],
});

export default router;
