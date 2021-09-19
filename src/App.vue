<template>
  <v-app v-scroll="onScroll">
    <v-app-bar
        fixed
        :dark="dark"
        :color="color"
        :elevation="elevation"
        :prominent="prominent"
    >
      <v-container class="d-flex align-center overflow-hidden">
        <v-toolbar-title
            class="text-h6 text-sm-h5 text-md-h5 font-weight-black"
        >
          UPROMX.
        </v-toolbar-title>

        <v-spacer></v-spacer>

        <div class="d-none d-md-inline-flex">
          <v-btn
              plain
              v-for="item in items"
              :key="item.title"
              @click="navigate(item.target)"
          >
            {{ item.title }}
          </v-btn>
        </div>

        <div class="d-md-none">
          <v-app-bar-nav-icon @click="menuClick()"></v-app-bar-nav-icon>

          <v-bottom-sheet v-model="sheet">
            <v-list class="px-3">
              <v-subheader>Navigate to</v-subheader>
              <v-list-item
                  v-for="item in items"
                  :key="item.title"
                  @click="navigate(item.target); sheet = false"
              >
                <v-list-item-title>{{ item.title }}</v-list-item-title>
              </v-list-item>
            </v-list>
          </v-bottom-sheet>
        </div>
      </v-container>
    </v-app-bar>

    <v-main>
      <SectionHome @click="navigate('#about')" />
      <SectionAbout class="py-16" />
      <SectionInfo @click="navigate($event === 'first' ? '#contacts' : '#services')" />
      <SectionServices class="py-16" />
      <SectionContacts />
    </v-main>

    <v-fab-transition>
      <v-btn
          v-if="showUp"
          class="v-btn--up-button"
          color="blue"
          fab
          dark
          @click="navigate('#home')"
      >
        <v-icon dark>
          mdi-chevron-up
        </v-icon>
      </v-btn>
    </v-fab-transition>
  </v-app>
</template>

<script>
import SectionHome from './components/SectionHome'
import SectionAbout from './components/SectionAbout'
import SectionInfo from './components/SectionInfo'
import SectionServices from './components/SectionServices'
import SectionContacts from './components/SectionContacts'

export default {
  name: 'App',

  components: {
    SectionHome,
    SectionAbout,
    SectionInfo,
    SectionServices,
    SectionContacts,
  },

  data: () => ({
    color: 'transparent',
    elevation: 0,
    dark: true,
    prominent: false,
    showUp: false,
    items: [
      { title: 'Home', target: '#home' },
      { title: 'About Us', target: '#about' },
      { title: 'Features', target: '#info' },
      { title: 'Services', target: '#services' },
      { title: 'Contacts', target: '#contacts' },
    ],
    sheet: false,
  }),

  methods: {
    onScroll(e) {
      if (e.currentTarget.scrollY > 10) {
        this.color = 'white';
        this.elevation = 5;
        this.dark = false;
        this.showUp = true;
      } else {
        this.color = 'transparent';
        this.elevation = 0;
        this.dark = true;
        this.showUp = false;
      }
    },
    menuClick() {
      this.sheet = true;
    },
    navigate(target) {
      this.$vuetify.goTo(target, {
        offset: this.$vuetify.breakpoint.mdAndUp ? 64 : 56
      });
    }
  }
};
</script>

<style>
.v-btn--up-button {
  bottom: 0;
  right: 0;
  position: fixed;
  margin: 16px;
}
</style>
