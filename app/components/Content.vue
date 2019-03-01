<template>
  <div id="content">
    <div class="wrap">
      <div class="inner">
        <div class="contact">
          <General />
          <Social />
        </div>
        <ul class="boxes">
          <Professional />
          <Experience />
          <Gallery />
          <Skill />
          <Education />
        </ul>
      </div>
    </div>
  </div>
</template>

<script setup>
import General from './content/contact/General.vue'
import Social from './content/contact/Social.vue'
import Professional from './content/Professional.vue'
import Experience from './content/Experience.vue'
import Gallery from './content/Gallery.vue'
import Skill from './content/Skill.vue'
import Education from './content/Education.vue'
</script>

<style scoped>
/* Add your content styles here or import from SCSS */
</style>
