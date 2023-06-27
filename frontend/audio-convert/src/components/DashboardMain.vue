<template>
  <div class="dashboard-main">
    <component :is="currentComponent" />
  </div>
</template>

<script>
export default {
  name: 'DashboardMain',
  props: {
    currentComponent: {
      type: String,
      required: true
    }
  }
}
</script>

<style>
.dashboard-main {
  /* ダッシュボードメインのスタイルをここに追加 */
}
</style>
