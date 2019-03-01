<template>
  <li class="gallery">
    <h2>Gallery</h2>
    <Filter @filter-change="handleFilterChange" />
    <Items ref="itemsRef" />
  </li>
</template>

<script setup>
import { ref, onMounted, nextTick } from 'vue'
import Filter from './gallery/Filter.vue'
import Items from './gallery/Items.vue'

const itemsRef = ref(null)
let isotope = null
let lightbox = null

const handleFilterChange = (filterValue) => {
  if (process.client && window.jQuery) {
    const $ = window.jQuery;
    const galleryItems = $('.gallery .items .list');
    if (galleryItems.data('isotope')) {
      galleryItems.isotope({ filter: filterValue });
    }

    // Update lightbox data attributes
    const dataFilter = filterValue === '*' ? '' : filterValue;
    document.querySelectorAll('.gallery .items .list a').forEach(link => {
      link.setAttribute('data-lightbox', 'gallery');
    });

    if (dataFilter) {
      const suffix = dataFilter.split('.').join('-');
      document.querySelectorAll(`.gallery .items .list ${dataFilter} a`).forEach(link => {
        link.setAttribute('data-lightbox', `gallery${suffix}`);
      });
    }
  }
};

onMounted(() => {
  if (process.client) {
    // Poll until jQuery and plugins are loaded from the script tags injected by nuxt.config.ts
    const interval = setInterval(() => {
      if (window.jQuery && window.jQuery.fn.isotope && window.jQuery.fn.imagesloaded && window.lightbox) {
        clearInterval(interval);

        const $ = window.jQuery;
        const galleryItems = $('.gallery .items .list');

        // Use a timeout to ensure images are rendered in the DOM before initializing
        setTimeout(() => {
          galleryItems.imagesloaded(() => {
            galleryItems.isotope({
              itemSelector: 'li',
              layoutMode: 'masonry'
            });
          });

          window.lightbox.option({
            'fitImagesInViewport': false
          });
        }, 100);
      }
    }, 100);
  }
});
</script>

<style scoped>
/* Add gallery styles here */
</style>
