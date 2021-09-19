<template>
  <section id="about">
    <v-container class="section-about px-8 px-md-3">
      <v-row>
        <v-col class="col-12 col-md-6">
          <div class="text-sm-h6 text-uppercase mb-5">What we do?</div>
          <div class="text-h4 text-sm-h4 text-md-h4 text-lg-h3 font-weight-light mb-6">
            We help to promote <br/><span class="font-weight-bold">your accounts</span>
          </div>
          <p class="text-body-1 text-md-h6 font-weight-light">
            Upromx is a platform for promoting your accounts in popular social networks.
            Platform for promoting your accounts in popular social networks.
          </p>
        </v-col>
        <v-col
            class="col-12 col-md-6"
        >
          <v-row
              align="stretch"
              class="fill-height"
          >
            <v-col class="col-12 col-sm-6" v-for="item in items" :key="item.title">
              <v-hover v-slot="{ hover }">
                <v-card
                    :color="hover ? 'blue' : 'grey lighten-4'"
                    :dark="hover"
                    class="fill-height"
                    elevation="0"
                >
                  <v-icon x-large class="ml-4 mt-4">{{ item.icon }}</v-icon>
                  <v-card-title style="transition-duration: 0.2s;" class="pb-3">{{ item.title }}</v-card-title>
                  <v-card-text style="transition-duration: 0.2s;">{{ item.description }}</v-card-text>
                </v-card>
              </v-hover>
            </v-col>
          </v-row>
        </v-col>
      </v-row>
    </v-container>
  </section>

</template>

<script>
export default {
  name: 'SectionAbout',
  data: () => ({
    items: [{
      title: 'Views',
      description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.',
      icon: 'mdi-television-play'
    }, {
      title: 'Likes',
      description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.',
      icon: 'mdi-thumb-up-outline'
    }, {
      title: 'Comments',
      description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.',
      icon: 'mdi-comment-processing-outline'
    }, {
      title: 'Subscribers',
      description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.',
      icon: 'mdi-account-group-outline'
    }]
  }),
}
</script>

<style lang="scss">
</style>
