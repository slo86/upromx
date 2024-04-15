<template>
  <section id="services">
    <v-container class="section-about px-8 px-md-3">
      <v-row class="justify-center">
        <v-col class="col-12 col-md-8 col-lg-8">
          <div class="text-h4 text-md-h3 font-weight-bold mb-4 text-center">
            Services that we work with
          </div>
          <p class="text-body-1 text-md-h6 font-weight-light text-center">
            Upromx is a platform for promoting your accounts in popular social networking services and apps.
          </p>
        </v-col>
      </v-row>
      <v-row class="d-flex align-stretch">
        <v-col class="col-12 col-sm-6 col-md-4  align-stretch" v-for="item in items" :key="item.title">
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
      title: 'Youtube',
      description: 'Free video sharing website.',
      src: '/youtube.png'
    }, {
      title: 'Twitch',
      description: 'Live streaming platform. ',
      src: '/twitch.png'
    }, {
      title: 'Instagram',
      description: 'Social networking app for sharing photos and videos.',
      src: '/instagram.png'
    }, {
      title: 'Twitter',
      description: 'Social networking and micro-blogging service.',
      src: '/twitter.png'
    }, {
      title: 'Reddit',
      description: 'American social news aggregation social network.',
      src: '/reddit.png'
    }, {
      title: 'TikTok',
      description: 'Short-form video hosting service owned by Chinese.',
      src: '/tiktok.png'
    }]
  }),
}
</script>

<style lang="scss">
</style>
