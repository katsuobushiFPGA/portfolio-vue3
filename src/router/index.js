// Composables
import { createRouter, createWebHistory } from 'vue-router'
import Home from '@/components/Home.vue'
import Profile from '@/components/Profile.vue'
import Skill from '@/components/Skill.vue'
import Project from '@/components/Project.vue'
import NotFound from '@/components/NotFound.vue'

const routes = [
    {
      path: '/',
      name: 'home',
      component: Home,
      title: 'ホーム',
      icon: 'mdi-home'
    },
    {
      path: '/profile',
      name: 'profile',
      component: Profile,
      title: 'プロフィール',
      icon: 'mdi-account'
    },
    {
      path: '/skill',
      name: 'skill',
      component: Skill,
      title: 'スキル',
      icon: 'mdi-wrench'
    },
    {
      path: '/project',
      name: 'project',
      component: Project,
      title: '成果物',
      icon: 'mdi-note-outline'
    },
    {
      path: '/:catchAll(.*)',
      name: 'notFound',
      component: NotFound,
      title: '404',
      icon: ''
    }
]

const router = createRouter({
  history: createWebHistory(process.env.BASE_URL),
  routes,
})

export default router
