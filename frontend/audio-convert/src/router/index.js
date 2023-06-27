import { createRouter, createWebHistory } from 'vue-router';
import DashboardHome from '../components/DashboardHome.vue';
import DashboardAnalytics from '../components/DashboardAnalytics.vue';
import DashboardSettings from '../components/DashboardSettings.vue';

const routes = [
  {
    path: '/',
    component: DashboardHome
  },
  {
    path: '/analytics',
    component: DashboardAnalytics
  },
  {
    path: '/settings',
    component: DashboardSettings
  },
  // 他のルートをここに追加
];

const router = createRouter({
  history: createWebHistory(),
  routes
});

export default router;
