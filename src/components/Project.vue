<template>
  <v-container>
    <v-list-subheader>成果物</v-list-subheader>
    <v-row>
      <v-col v-for="card in cards" :key="card.id" cols="12" sm="4">
        <v-card class="pa-2 font-tangerine" height="100%" theme="light">
          <div class="thumb">
            <a :href="card.link" target="_blank">
              <v-img max-height="150px" position="center" :src="card.thumb"></v-img>
            </a>
          </div>
          <v-card-title class="justify-center">{{ card.title }} </v-card-title>
          <v-card-text>
            {{ card.description }}
          </v-card-text>
        </v-card>
      </v-col>
    </v-row>
  </v-container>
</template>

<script setup>
import { ref } from 'vue';

const getProjectImage = ((name)=> {
  const logoPath = `../../project`
  return new URL(`${logoPath}/${name}`, import.meta.url).href
})

const cards = ref([
  {
    id: 1,
    title: '技術ブログ',
    description: 'Hugoによる技術ブログ',
    thumb: getProjectImage('blog.png'),
    link: 'https://blog.k-bushi.com'
  },
  {
    id: 2,
    title: '電光掲示板',
    description: 'RaspberryPi / Adafruit社のドットマトリクスを使用した電光掲示板の製作記事',
    thumb: getProjectImage('board.jpeg'),
    link: 'http://www.icrus.org/horiba/article/2014_10_06.php'
  }
])
</script>
<style>
div.thumb {
  height: 160px;
  text-align: center;
}
</style>
