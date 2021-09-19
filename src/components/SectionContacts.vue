<template>
  <section id="contacts">
    <v-container fluid class="py-12 grey darken-4">
      <v-row>
        <v-container>
          <v-row>
            <v-col>
              <div
                  class="text-h4 text-md-h3 font-weight-regular align-center mb-4 grey--text text--lighten-2"
                  style="text-align: center;"
              >
                Need a hand?
              </div>
              <p class="text-body-1 text-md-h6 font-weight-light grey--text text--lighten" style="text-align: center;">
                Upromx is a platform for promoting your accounts in <br/>popular social networks.
              </p>
            </v-col>
          </v-row>
          <v-row justify="center">
            <v-col class="col-12 col-md-10 col-lg-8 text-center px-8">
              <v-form
                  ref="form"
                  v-model="valid"
                  lazy-validation
              >
                <v-text-field
                    v-model="name"
                    label="Your name"
                    :rules="nameRules"
                    single-line
                    filled
                    dark
                    required
                ></v-text-field>
                <v-text-field
                    v-model="email"
                    label="Your email"
                    :rules="emailRules"
                    single-line
                    filled
                    dark
                    required

                ></v-text-field>
                <v-textarea
                    v-model="message"
                    label="Your message"
                    :rules="messageRules"
                    single-line
                    filled
                    dark
                    clearable
                ></v-textarea>
                <v-btn
                    dark color="blue"
                    large
                    :disabled="!valid"
                    class="mr-4"
                    @click="submit"
                >
                  Send Message <v-icon small class="ml-2">mdi-arrow-right</v-icon>
                </v-btn>
              </v-form>
            </v-col>
          </v-row>
        </v-container>
      </v-row>
    </v-container>
  </section>
</template>

<script>
export default {
  name: 'SectionContacts',
  data: () => ({
    valid: true,
    name: '',
    nameRules: [
      v => !!v || 'Name is required',
      v => (v && v.length <= 20) || 'Name must be less than 20 characters',
    ],
    email: '',
    emailRules: [
      v => !!v || 'E-mail is required',
      v => /.+@.+\..+/.test(v) || 'E-mail must be valid',
    ],
    message: '',
    messageRules: [
      v => (v.length <= 200) || 'Message must be less than 200 characters',
    ],
  }),
  methods: {
    submit () {
      this.$refs.form.validate();
      // send message
      // show dialog
    },
  },
}
</script>

<style lang="scss">
</style>
