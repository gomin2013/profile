<template>
  <li class="experience">
    <h2>Work Experiences</h2>
    <ul class="list">
      <li v-for="(exp, i) in experiences" :key="i">
        <div class="title">
          <h3>
            {{ exp.position }}
            <span>{{ exp.company }}, {{ exp.type }}</span>
          </h3>
          <p class="period">{{ exp.period[0] }} - {{ exp.period[1] }}</p>
        </div>
        <div class="text">
          <p v-if="exp.description.text">{{ exp.description.text.join('\n') }}</p>
          <ul v-if="exp.description.list" class="sub-list">
            <li v-for="(item, j) in exp.description.list" :key="j">{{ item }}</li>
          </ul>
        </div>
      </li>
    </ul>
  </li>
</template>

<script setup>
import experiences from './experience.json'
</script>

<style scoped>
/* Add experience styles here */
</style>
