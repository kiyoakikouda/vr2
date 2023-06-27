<template>
  <div class="sidebar">
    <ul>
      <li @click="changeComponent('home')">Home</li>
      <li @click="changeComponent('analytics')">Analytics</li>
      <li @click="changeComponent('settings')">Settings</li>
    </ul>
  </div>
</template>

<script>
export default {
  name: 'Sidebar',
  methods: {
    changeComponent(component) {
      this.$emit('change-component', component);
    }
  }
}
</script>

<style>
.sidebar {
  /* サイドバーのスタイルをここに追加 */
}
</style>
