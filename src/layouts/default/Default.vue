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
  import GlobalHeader from './Header.vue'
  import GlobalFooter from './Footer.vue'
</script>
