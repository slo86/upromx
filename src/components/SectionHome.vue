<template>
  <section id="home">
    <v-parallax
        src="../assets/people-team.png"
        :height="getHeight()"
    >
      <v-container>
        <v-row
            align="center"
            justify="center"
            no-gutters
        >
          <v-col
              class="text-center"
              cols="12"
          >
            <div class="text-h4 text-sm-h3 text-md-h2 text-xl-h1 font-weight-light">
              It’s time to amplify<br/>
              <span class="font-weight-bold">
                your earnings
              </span>
            </div>

            <p class="text-body-1 text-sm-h6 text-md-h5 mt-6 font-weight-light">
              Upromo is a platform for promoting your accounts in popular <br class="d-none d-sm-inline"/> social
              networks and increasing your earnings
            </p>

            <v-btn large outlined dark class="mt-4" @click="$emit('click')">
              Get more <v-icon small class="ml-2">mdi-arrow-right</v-icon>
            </v-btn>
          </v-col>
        </v-row>
      </v-container>
    </v-parallax>
  </section>
</template>

<script>
export default {
  name: 'SectionHome',
  mounted() {

  },
  data: () => ({
    height: 0
  }),
  watch: {
    '$vuetify.breakpoint.width': function () {
      this.height = this.$vuetify.breakpoint.height;

      if (this.height < 460) {
        this.height = 460;
      }
    },
  },
  methods: {
    getHeight() {
      if (!this.height) {
        this.height = this.$vuetify.breakpoint.height;

        if (this.height < 460) {
          this.height = 460;
        }
      }
      return this.height;
    }
  }
}
</script>
