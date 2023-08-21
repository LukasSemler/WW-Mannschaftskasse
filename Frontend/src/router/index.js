import view1 from '../views/view1.vue';
import { createRouter, createWebHashHistory } from 'vue-router';

const router = createRouter({
  history: createWebHashHistory(),

  routes: [
    { path: '/', component: view1 },
    { path: '/view2', component: () => import('../views/view2.vue') },
  ],
});

export default router;
