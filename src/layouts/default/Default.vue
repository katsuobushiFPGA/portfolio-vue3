<template>
  <v-app>
    <global-header />
    <v-main>
      <router-view />
    </v-main>
    <global-footer />
  </v-app>
</template>

<script>
  import GlobalHeader from './Header.vue'
  import GlobalFooter from './Footer.vue'
  const SITE_NAME = 'k-bushi.com'
  export default {
    name: 'app',
    data() {
      return {
        items: []
      }
    },
    components: {
      GlobalHeader,
      GlobalFooter
    },
    created() {
      this.$router.options.routes.forEach((route, index) => {
        this.items.push({
          id: index,
          name: route.name,
          path: route.path,
          title: route.title
        })
      })
    },
    methods: {
      initPageTitle() {
        document.title = SITE_NAME
      },
      createPageTitle() {
        if (this.activeTitle) {
          document.title = this.activeTitle + ' - ' + SITE_NAME
        } else {
          document.title = SITE_NAME
        }
      }
    },
    computed: {
      activeTitle() {
        const item = this.items.find(item => {
          return item.name === this.$route.name
        })
        return item.title
      }
    },
    watch: {
      $route() {
        this.createPageTitle()
      }
    }
  }
</script>
