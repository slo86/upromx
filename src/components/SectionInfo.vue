<template>
  <section id="info" style="position: relative;">
        <v-container fluid class="pa-0">
          <v-row
              no-gutters
          >
            <v-col
                class="col-12 col-md-6"
            >
              <v-parallax
                  src="../assets/no-money.png"
                  :height=450
              ></v-parallax>
            </v-col>
            <v-col
                class="col-12 col-md-6"
            >
              <v-parallax
                  src="../assets/people-laptop.png"
                  :height=450
              ></v-parallax>
            </v-col>
          </v-row>
        </v-container>

        <v-container style="position: absolute; left: 0; right: 0; top: 0; bottom: 0;">
          <v-row class="fill-height" align="center" no-gutters>
            <v-col class="col-12 col-md-6 pl-4 pl-md-0">
              <div class="text-h3 white--text text-sm-h4 text-md-h4 text-lg-h3 font-weight-bold mb-6">
                No prepayment <br/>required
              </div>
              <p class="text-body-1 white--text text-md-h6 font-weight-regular">
                Upromx is a platform for promoting your accounts in popular social networks.
              </p>

              <v-btn large color="white" class="mt-4" @click="$emit('click', 'first')">
                Contact Us <v-icon small class="ml-2">mdi-arrow-right</v-icon>
              </v-btn>
            </v-col>
            <v-col class="col-12 col-md-6 pl-4 pl-md-16">
              <div class="text-h3 white--text text-sm-h4 text-md-h4 text-lg-h3 font-weight-bold mb-6">
                We work with popular services
              </div>
              <p class="text-body-1 text-md-h6 font-weight-regular white--text">
                Upromx is a platform for promoting your accounts in popular social networks.
              </p>

              <v-btn large color="blue" dark class="mt-4" @click="$emit('click', 'second')">
                Services <v-icon small class="ml-2">mdi-arrow-right</v-icon>
              </v-btn>
            </v-col>
          </v-row>
        </v-container>
      </section>
</template>

<script>
export default {
  name: 'SectionInfo',
}
</script>
