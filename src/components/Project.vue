<template>
  <v-container>
    <v-subheader>成果物</v-subheader>
    <v-row>
      <v-col v-for="card in cards" :key="card.id" cols="12" sm="4">
        <v-card class="pa-2 font-tangerine" height="100%">
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

<script>
export default {
  name: 'Skill',
  data() {
    return {
      cards: [
        {
          id: 1,
          title: '技術ブログ',
          description: 'Hugoによる技術ブログ',
          thumb: require('../static/project/blog.png'),
          link: 'https://blog.k-bushi.com'
        },
        {
          id: 2,
          title: '電光掲示板',
          description: 'RaspberryPi / Adafruit社のドットマトリクスを使用した電光掲示板の製作記事',
          thumb: require('../static/project/board.jpeg'),
          link: 'http://www.icrus.org/horiba/article/2014_10_06.php'
        }
      ]
    }
  }
}
</script>
<style>
div.thumb {
  height: 160px;
  text-align: center;
}
</style>
