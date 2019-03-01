<template>
  <div id="page">
    <Header />
    <Content />
    <Footer />
  </div>
</template>

<script setup>
import Header from '~/components/Header.vue'
import Content from '~/components/Content.vue'
import Footer from '~/components/Footer.vue'
</script>

<style>
/* Page-specific styles */
#page {
  min-height: 100vh;
}
</style>

