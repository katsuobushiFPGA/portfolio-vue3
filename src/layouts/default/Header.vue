<template>
  <v-bottom-navigation app :value="active" color="gray">
    <v-btn v-for="item in items" :key="item.id" :to="item.path">
      <v-icon medium>{{ item.icon }}</v-icon>
      <span>{{ item.name }}</span>
    </v-btn>
  </v-bottom-navigation>
</template>
<script setup>
  import { ref, onMounted, computed } from 'vue';
  import { useRouter } from 'vue-router';

  const items = ref([])
  const router = useRouter()

  onMounted(() => {
    router.options.routes.forEach((route, index) => {
      if (route.icon !== '') {
        items.value.push({
          id: index,
          name: route.name,
          path: route.path,
          icon: route.icon
        })
      }
    })
  })

  const active = computed(() => {
    const item = items.value.find(item => {
        return item.path === router.currentRoute.value.path
    })
    return item ? item.id : -1
  })
</script>
