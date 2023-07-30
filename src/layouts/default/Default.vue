<template>
  <v-app>
    <global-header />
    <v-main>
      <router-view />
    </v-main>
    <global-footer />
  </v-app>
</template>

<script setup>
  import GlobalHeader from '@/layouts/default/Header.vue'
  import GlobalFooter from '@/layouts/default/Footer.vue'
  import { ref, computed, watchEffect } from 'vue';
  import { useRouter } from 'vue-router'
  const SITE_NAME = 'k-bushi.com'

  const items = ref([])
  const router = useRouter()

  router.options.routes.forEach((route, index) => {
    items.value.push({
      id: index,
      name: route.name,
      path: route.path,
      title: route.title
    })
  })
  const createPageTitle = (() => {
    if (activeTitle.value) {
      document.title = activeTitle.value + ' - ' + SITE_NAME
    } else {
      document.title = SITE_NAME
    }
  })
  const activeTitle = computed(() => {
    const item = items.value.find(item => {
      return item.name === router.currentRoute.value.name
    })
    return item?.title
  })
  watchEffect(() => {
    createPageTitle()
  })
</script>
