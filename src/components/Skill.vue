<template>
  <v-container>
    <v-list-subheader>技術スキル</v-list-subheader>
    <v-row>
      <v-col v-for="card in cards" :key="card.id" cols="12" sm="4">
        <v-card class="pa-2 font-tangerine" height="100%" theme="light">
          <v-card-title class="justify-center">{{ card.group }} </v-card-title>
          <v-card-text>
            <v-table theme="light" density="comfortable">
              <thead>
              <tr>
                <th>技術</th>
                <th>習熟度</th>
              </tr>
              </thead>
              <tbody>
                <tr v-for="skill in card.skill" :key="skill.id">
                  <td class="icon">
                    <v-img max-width="70px" max-height="70px" position="center" :src="skill.logo"></v-img>
                  </td>
                  <td class="star">
                    <span v-for="n in max_rate" :key="n">
                      <v-icon color="orange" v-if="n <= skill.rate">mdi-star</v-icon>
                      <v-icon color="orange" v-else>mdi-star-outline</v-icon>
                    </span>
                  </td>
                </tr>
              </tbody>
            </v-table>
          </v-card-text>
        </v-card>
      </v-col>
    </v-row>
  </v-container>
</template>

<script setup>
import { ref } from 'vue';

const getLogoImage = ((name) => {
  const logoPath = `../../logo`
  return new URL(`${logoPath}/${name}`, import.meta.url).href
})

const max_rate = ref(5)
const cards = ref([
  {
    id: 1,
    group: 'バックエンド',
    skill: [
      { id: 1, logo: getLogoImage('php.png'), rate: '4' },
      { id: 2, logo: getLogoImage('java.png'), rate: '3' },
      { id: 3, logo: getLogoImage('mysql.png'), rate: '3' }
    ]
  },
  {
    id: 2,
    group: 'フロントエンド',
    skill: [
      { id: 1, logo: getLogoImage('vue.png'), rate: '2' },
      { id: 2, logo: getLogoImage('typescript.png'), rate: '1' }
    ]
  },
  {
    id: 3,
    group: 'インフラ',
    skill: [
      { id: 1, logo: getLogoImage('aws.png'), rate: '3' },
      { id: 2, logo: getLogoImage('gcp.png'), rate: '1' },
      { id: 3, logo: getLogoImage('firebase.png'), rate: '1' }
    ]
  },
  {
    id: 4,
    group: 'ツール',
    skill: [
      { id: 1, logo: getLogoImage('vscode.png'), rate: '3' },
      { id: 2, logo: getLogoImage('eclipse.png'), rate: '4' },
      { id: 3, logo: getLogoImage('idea.png'), rate: '1' },
      { id: 4, logo: getLogoImage('vim.png'), rate: '2' }
    ]
  },
  {
    id: 5,
    group: '外部サービス',
    skill: [{ id: 1, logo: getLogoImage('github.png'), rate: '4' }]
  },
  {
    id: 6,
    group: '趣味',
    skill: [
      { id: 1, logo: getLogoImage('golang.png'), rate: '1' },
      { id: 2, logo: getLogoImage('scala.png'), rate: '1' },
      { id: 3, logo: getLogoImage('haskell.png'), rate: '1' }
    ]
  }

])
</script>
<style>
.icon-yellow {
  color: yellow;
}
table {
  width: 100%;
}
td.icon {
  width: 70px;
  height: 80px;
}
td.star {
  width: 80%;
}
</style>
