<template>
  <section id="services">
    <v-container class="section-about px-8 px-md-3">
      <v-row>
        <v-col>
          <div class="text-h4 text-md-h3 font-weight-bold align-center mb-4" style="text-align: center;">
            Services that we work with
          </div>
          <p class="text-body-1 text-md-h6 font-weight-light align-center" style="text-align: center;">
            Upromo is a platform for promoting your accounts <br/>in popular social networks.
          </p>
        </v-col>
      </v-row>
      <v-row>
        <v-col class="col-12 col-sm-6 col-md-4" v-for="item in items" :key="item.title">
          <v-hover v-slot="{ hover }">
            <v-card :elevation="hover ? 10 : 2">
              <v-img height="220" :src=item.src />
              <v-card-title>{{ item.title }}</v-card-title>
              <v-card-subtitle>{{ item.description }}</v-card-subtitle>
            </v-card>
          </v-hover>
        </v-col>
      </v-row>
    </v-container>
  </section>
</template>

<script>
export default {
  name: 'SectionServices',
  data: () => ({
    items: [{
      title: 'Pornhub Premium',
      description: 'Lorem ipsum dolor sit amet.',
      src: '/pornhub-premium.png'
    }, {
      title: 'Youtube',
      description: 'Lorem ipsum dolor sit amet.',
      src: '/youtube.png'
    }, {
      title: 'Twitch',
      description: 'Lorem ipsum dolor sit amet.',
      src: '/twitch.png'
    }, {
      title: 'Instagram',
      description: 'Lorem ipsum dolor sit amet.',
      src: '/instagram.png'
    }, {
      title: 'xHamster',
      description: 'Lorem ipsum dolor sit amet.',
      src: '/xhamster.png'
    }, {
      title: 'OnlyFans',
      description: 'Lorem ipsum dolor sit amet.',
      src: '/onlyfans.png'
    }, {
      title: 'xVideos',
      description: 'Lorem ipsum dolor sit amet.',
      src: '/xvideos.png'
    }, {
      title: 'Twitter',
      description: 'Lorem ipsum dolor sit amet.',
      src: '/twitter.png'
    }, {
      title: 'BongaCams',
      description: 'Lorem ipsum dolor sit amet.',
      src: '/bongacams.png'
    }]
  }),
}
</script>

<style lang="scss">
</style>
