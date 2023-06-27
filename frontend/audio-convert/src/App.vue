<template>
  <div id="app">
    <sidebar @change-component="changeComponent" />
    <dashboard-main :current-component="currentComponent" />
  </div>
</template>

<script>
import Sidebar from './components/Sidebar.vue';
import DashboardMain from './components/DashboardMain.vue';
import DashboardHome from './components/DashboardHome.vue';
import DashboardAnalytics from './components/DashboardAnalytics.vue';
import DashboardSettings from './components/DashboardSettings.vue';

export default {
  /* eslint-disable vue/no-unused-components*/
  name: 'DashboardApp',
  components: {
    Sidebar,
    DashboardMain,
    DashboardHome,
    DashboardAnalytics,
    DashboardSettings
  },
  data() {
    return {
      currentComponent: 'home'
    };
  },
  methods: {
    changeComponent(component) {

        let componentObj;
        switch (component) {
          case 'home':
            componentObj = DashboardHome;
            break;
          case 'analytics':
            componentObj = DashboardAnalytics;
            break;
          case 'settings':
            componentObj = DashboardSettings;
            break;
          default:
            componentObj = DashboardHome;
            break;
        }
      this.currentComponent = componentObj;
    }
  }
}
</script>

<style>
#app {
  display: flex;
  width: 100vw;
}

/* サイドバースタイル */
.sidebar {
  width: 250px;
  height: 100vh;
  background-color: #333;
  color: #fff;
}

.sidebar ul {
  list-style-type: none;
  padding: 0;
  margin: 0;
}

.sidebar li {
  padding: 10px;
  cursor: pointer;
}

.sidebar li:hover {
  background-color: #555;
}

/* ダッシュボードメインスタイル */
.dashboard-main {
  flex: 1;
  /*flex-grow: 1;*/
  padding: 20px;
  background-color: #f4f4f4;
  color: #333;
}
</style>
