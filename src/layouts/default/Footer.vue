<template>
  <v-footer dark padless>
    <v-card class="flex" flat tile>
      <v-card-title class="indigo">
        <strong class="subheading">My social network service links</strong>

        <v-spacer></v-spacer>

        <v-btn v-for="icon in icons" :key="icon.icon" :href="icon.link" target="_blank" class="mx-4" dark icon>
          <v-icon size="24px">{{ icon.icon }}</v-icon>
        </v-btn>
      </v-card-title>

      <v-card-actions class="grey darken-3 justify-center">
        <v-icon>mdi-copyright</v-icon>{{ new Date().getFullYear() }} — <strong>k-bushi.com</strong>
      </v-card-actions>
    </v-card>
  </v-footer>
</template>

<script>
export default {
  data() {
    return {
      icons: [
        { icon: 'mdi-twitter-box', link: 'https://twitter.com/KatsuoBushiFPGA' },
        { icon: 'mdi-github-circle', link: 'https://github.com/katsuobushiFPGA' }
      ]
    }
  }
}
</script>
