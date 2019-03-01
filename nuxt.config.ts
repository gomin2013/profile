import { defineNuxtConfig } from 'nuxt/config'

export default defineNuxtConfig({
  ssr: false,

  // Enable pages directory
  pages: true,

  // Set app directory
  dir: {
    pages: 'app/pages',
    layouts: 'app/layouts',
    components: 'app/components'
  },

  modules: [],

  // Add global CSS
  css: [
    '~/app/assets/css/main.css'
  ],

  vite: {
    // Vite config here if needed
  }
})
