<template>
  <v-container>
    <v-list-subheader>プロフィール</v-list-subheader>
    <v-row>
      <v-col>
        <v-card class="pa-2" theme="light">
          <v-card-title class="fill-height align-end">
            <v-icon large left>
              mdi-account
            </v-icon>
            <span class="title font-weight-light">経歴</span>
          </v-card-title>
          <v-card-text>
            <table>
              <tr>
                <td>ニックネーム</td>
                <td>かつおぶし</td>
              </tr>
              <tr>
                <td>性別</td>
                <td>男</td>
              </tr>
              <tr>
                <td>年齢</td>
                <td>{{ age }}</td>
              </tr>
            </table>

            <br />
            <h4>自己紹介</h4>
            <p class="text-left">
              高校生の頃からプログラミング・電子工作に興味を持ち、現在ではWebシステムの開発業務に携わっている。<br />
              趣味では業務では触れない言語を試して遊んでいる。(Skillページを参照)<br />
              OSS開発にも興味があるので、今後OSSの開発にも携われる機会を作り、積極的に関わっていきたい。
            </p>
          </v-card-text>
        </v-card>
        <br />
        <v-card class="pa-2" theme="light">
          <v-card-title class="fill-height align-end">
            <v-icon large left>
              mdi-account
            </v-icon>
            <span class="title font-weight-light">資格</span>
          </v-card-title>
          <v-card-text>
            <v-timeline side="end" density="compact" truncate-line="start">
              <v-timeline-item v-for="qualification in qualifications" :key="qualification.id" width="100%" :dot-color="qualification.dotColor">
                <v-card color="white">
                  <v-card-title class="bg-blue-grey-darken-4"
                    >{{ qualification.name }}( 試験日: {{ qualification.date }} )</v-card-title>
                  <v-card-text>
                    <p class="text-left">{{ qualification.impression }}</p>
                    <template v-if="qualification.link">
                      <p class="text-left"><a target="blank" :href="qualification.link">バッジ</a></p>
                    </template>
                  </v-card-text>
                </v-card>
              </v-timeline-item>
            </v-timeline>
          </v-card-text>
        </v-card>
        <br />
        <v-card class="pa-2" theme="light">
          <v-card-title class="fill-height align-end">
            <v-icon large left>
              mdi-account
            </v-icon>
            <span class="title font-weight-light">挑戦していること</span>
          </v-card-title>
          <v-card-text>
            <v-list-item density="comfortable">
              <v-list-item-content v-for="challenge in challenges" :key="challenge.id">
                <p>{{ challenge.name }}</p>
              </v-list-item-content>
            </v-list-item>
          </v-card-text>
        </v-card>
      </v-col>
    </v-row>
  </v-container>
</template>

<script>
// timelineを使用する
export default {
  name: 'Profile',
  data() {
    return {
      qualifications: [
        {
          id: 1,
          name: '基本情報技術者',
          dotColor: 'blue-grey-darken-4',
          date: '2014/04/20',
          impression:
            '１回目は大学2年の秋に受験をしたが、ろくに試験対策をせずに受験し午前試験で落ちた。この試験は大学4年の春に受験し、午前午後対策をきっちりとし合格した。'
        },
        {
          id: 2,
          name: '応用情報技術者',
          dotColor: 'blue-grey-darken-4',
          date: '2015/04/19',
          impression:
            '１回目は大学4年の秋に受験をしたが落ちた、午後試験で３０点近くしか取れておらず記述問題が壊滅的であったからだ。この試験は社会人1年目の春に受験し、まだ研修中であったことから退社後にもきっちりとした勉強時間が午後対策がしっかりでき合格することができた。'
        },
        {
          id: 3,
          name: 'AWS Certified Solutions Architect - Associate (SAA)',
          dotColor: 'pink-darken-4',
          date: '2020/10/29',
          impression:
            'ここ数年でAWSを触る機会が多くなったため、知識の整理として受験。1ヶ月ほど勉強して合格することができた。',
          link: 'https://www.credly.com/badges/4a0494ed-fddf-4bb5-976f-d337ff78d001'
        },
        {
          id: 4,
          name: 'AWS Certified Developer - Associate (DVA)',
          dotColor: 'pink-darken-4',
          date: '2021/09/10',
          impression:
            '業務ではAWSでの開発は経験がないが、去年度に取得したSAAの次の資格として取得した。こちらも1ヶ月ほどの勉強で合格をした。',
          link: 'https://www.credly.com/badges/23441bc1-7790-404c-9039-6101941e7076'
        },
        {
          id: 5,
          name: 'AWS Certified Solutions Architect - Professional (SAP)',
          dotColor: 'pink-darken-4',
          date: '2022/07/01',
          impression:
            'AWSの業務を任されることが多くなってきたため、体系的に学習をして業務にてより合ったAWSのサービスを選定できるようになりたいと思ったため受験をした。また、去年度に取得したDVAの次の資格として取得した。2ヶ月ほどの勉強で合格をした。(結構危うかった…)',
          link: 'https://www.credly.com/badges/8b1084b6-6bb7-41a3-b826-6e70c109201d'
        },
        {
          id: 6,
          name: 'AWS Certified SysOps Administrator - Associate (SOA)',
          dotColor: 'pink-darken-4',
          date: '2022/07/28',
          impression:
            'AWS DOPを取る前に取っておきたいのと、ラボ試験がどういうものかというのを見てみたという興味で受験をした。2週間ほどの勉強で合格した。',
          link: 'https://www.credly.com/badges/b54b49f5-a909-4955-9e8b-768d5ec21ea7'
        },
        {
          id: 7,
          name: 'AWS Certified DevOps Engineer - Professional (DOP)',
          dotColor: 'pink-darken-4',
          date: '2022/12/14',
          impression:
            'DVA/SOAの次の資格としてプロフェッショナル資格の最後の試験として受験をした。1ヶ月ほどの勉強で合格した。',
          link: 'https://www.credly.com/badges/ffcb68e6-01fb-4dc7-b360-6e1c3ff69b77'
        },
        {
          id: 8,
          name: '3級FP技能検定',
          dotColor: 'purple-darken-4',
          date: '2023/01/22',
          impression:
            '合格発表日は 2023/03/02. 投資で有利になるかと思ったのと、お金の勉強をしたかったので取ってみた。'
        },
        {
          id: 9,
          name: 'ネットワークスペシャリスト',
          dotColor: 'blue-grey-darken-4',
          date: '2023/04/16',
          impression:
            '合格発表日は 2023/06/29 4回目で合格、高度試験初合格でやっとという感じ。しっかり試験対策したので合格できた。'
        },
        {
          id: 10,
          name: '2級FP技能検定',
          dotColor: 'purple-darken-4',
          date: '2023/05/28',
          impression:
            '合格発表日は 2023/07/04. FP3級の次なるステップとして勉強をしたかったので取ってみた。'
        },
      ],
      challenges: [
        { id: 1, name: 'データベーススペシャリストの取得' },
        { id: 2, name: 'OSS開発の貢献' },
        { id: 3, name: '情報処理安全確保支援士の合格' },
      ]
    }
  },
  computed: {
    age() {
      let date = new Date()
      let birth = new Date('1992-11-23')
      let diff = Math.floor((date - birth) / 86400000 / 365)
      return diff
    }
  }
}
</script>

<style scoped>
table {
  font-size: 16px;
}
table tr td:nth-child(1) {
  width: 50%;
}
</style>
