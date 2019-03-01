<template>
  <header id="header">
    <div class="wrap">
      <div class="main">
        <picture>
          <source srcset="/images/main-img-small.png" media="(max-width: 680px)" />
          <source srcset="/images/main-img-medium.jpg" media="(max-width: 980px)" />
          <img src="/images/main-img.jpg" alt="Profile" />
        </picture>
      </div>
      <h1>
        Watthajak Jinasam
        <span>Programmer</span>
      </h1>
    </div>
  </header>
</template>

<script setup>
// No logic needed for static header
</script>

<style scoped>
/* Add your header styles here or import from SCSS */
</style>

