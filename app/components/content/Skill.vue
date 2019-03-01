<template>
  <li class="skill">
    <h2>Technical Skills</h2>
    <ul class="list">
      <li v-for="(skill, i) in skills" :key="i">
        <div class="text">
          <div class="title">
            <h3>
              {{ skill.title }}
              <span>{{ skillLevelTitle(skill.level) }}</span>
            </h3>
          </div>
          <p>{{ skill.description.join('\n') }}</p>
        </div>
      </li>
    </ul>
  </li>
</template>

<script setup>
import skills from './skill.json'

const skillLevels = ['Beginner', 'Novice', 'Intermediate', 'Expert', 'Advance']
const skillLevelTitle = (level) => skillLevels[Math.trunc(level / 20)]
</script>

<style scoped>
/* Add skill styles here */
</style>
