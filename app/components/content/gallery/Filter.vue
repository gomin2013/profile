<template>
  <div class="filter">
    <ul class="list">
      <li class="all">
        <a :class="{ active: activeFilter === '*' }" @click.prevent="setFilter('*')">All</a>
      </li>
      <li class="responsive">
        <a :class="{ active: activeFilter === '.responsive' }" @click.prevent="setFilter('.responsive')">Responsive</a>
      </li>
      <li class="design">
        <a :class="{ active: activeFilter === '.design' }" @click.prevent="setFilter('.design')">Design</a>
      </li>
      <li class="wordpress">
        <a :class="{ active: activeFilter === '.wordpress' }" @click.prevent="setFilter('.wordpress')">Wordpress</a>
      </li>
      <li class="php">
        <a :class="{ active: activeFilter === '.php' }" @click.prevent="setFilter('.php')">PHP</a>
      </li>
    </ul>
  </div>
</template>

<script setup>
import { ref } from 'vue'

const emit = defineEmits(['filter-change'])
const activeFilter = ref('*')

const setFilter = (filter) => {
  activeFilter.value = filter
  emit('filter-change', filter)
}
</script>

<style scoped>
/* Add filter styles here */
</style>
