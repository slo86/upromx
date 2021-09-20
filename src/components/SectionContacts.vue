<template>
  <section id="contacts">
    <v-container fluid class="py-12 grey darken-4">
      <v-row>
        <v-container>
          <v-row class="justify-center">
            <v-col class="col-10 col-sm-8 col-md-6">
              <div
                  class="text-h4 text-md-h3 font-weight-regular align-center mb-4 grey--text text--lighten-2"
                  style="text-align: center;"
              >
                Need a hand?
              </div>
              <p class="text-body-1 text-md-h6 font-weight-light grey--text text--lighten text-center">
                Just fill out the form, click the button and get a profit from working with Upromx team.
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
                    placeholder="Your name"
                    :rules="nameRules"
                    single-line
                    filled
                    dark
                    required
                    clearable
                ></v-text-field>
                <v-text-field
                    v-model="email"
                    placeholder="Your email"
                    :rules="emailRules"
                    single-line
                    filled
                    dark
                    required
                    clearable
                ></v-text-field>
                <v-textarea
                    v-model="message"
                    placeholder="Your message"
                    :rules="messageRules"
                    single-line
                    filled
                    dark
                    clearable
                ></v-textarea>
                <v-btn
                    :loading="loading"
                    :disabled="loading || !valid"
                    dark color="blue"
                    large
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

    <v-dialog
        v-model="dialog"
        max-width="325"
    >
      <v-card class="py-8">
        <div class="d-flex justify-center">
          <v-icon v-if="!this.sendContactsError" size="86" color="green">
            mdi-checkbox-marked-circle-outline
          </v-icon>
          <v-icon v-else size="86" color="red">
            mdi-alert-circle-outline
          </v-icon>
        </div>
        <v-card-title class="text-h6 text-center" style="word-break: normal;">
          <template v-if="!this.sendContactsError">
            Your message has been sent successfully
          </template>
          <template v-else>
            Something went wrong. Try again later
          </template>
        </v-card-title>
        <v-btn
            absolute
            top
            right
            icon
            @click="dialog = false"
        >
          <v-icon>mdi-close</v-icon>
        </v-btn>
      </v-card>
    </v-dialog>
  </section>
</template>

<script>
import axios from 'axios';

export default {
  name: 'SectionContacts',
  data: () => ({
    dialog: false,
    loading: false,
    sendContactsError: false,
    valid: true,
    name: '',
    nameRules: [
      v => !!v || 'Name is required',
      v => (v && v.length <= 100) || 'Name must be less than 20 characters',
    ],
    email: '',
    emailRules: [
      v => !!v || 'E-mail is required',
      v => /.+@.+\..+/.test(v) || 'E-mail must be valid',
    ],
    message: '',
    messageRules: [
      v => (!v || (!!v && v.length <= 200)) || 'Message must be less than 200 characters',
    ],
  }),
  methods: {
    async submit () {
      if (this.$refs.form.validate()) {
        this.loading = true;
        await this.sleep(1000);

        try {
          const { data } = await axios.post('/api/contacts', {
            name: this.name,
            email: this.email,
            message: this.message
          });
          console.log(data);
          this.sendContactsError = false;
          this.$refs.form.reset();
        } catch (e) {
          console.error(e);
          this.sendContactsError = true;
        }

        this.loading = false;
        this.dialog = true;

        await this.sleep(3000);

        if (this.dialog) {
          this.dialog = false;
        }
      }
    },
    async sleep(ms) {
      return new Promise(resolve => {
        setTimeout(resolve, ms);
      });
    }
  }
}
</script>

<style lang="scss">
</style>
