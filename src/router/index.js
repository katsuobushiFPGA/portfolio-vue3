// Composables
import { createRouter, createWebHistory } from 'vue-router'
import Home from '@/components/Home.vue'
// import Profile from '@/components/Profile.vue'
// import Skill from '@/components/Skill.vue'
// import Project from '@/components/Project.vue'
// import NotFound from '@/components/NotFound.vue'

const routes = [
  {
    path: '/',
    component: () => import('@/layouts/default/Default.vue'),
    children: [
      {
        path: '',
        name: 'Home',
        component: Home
      },
    ],
  },
]

const router = createRouter({
  history: createWebHistory(process.env.BASE_URL),
  routes,
})

export default router
