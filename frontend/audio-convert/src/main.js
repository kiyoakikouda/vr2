import './assets/css/reset.css';
import { createApp } from 'vue';
import router from './router';
import App from './App.vue';
import axios from "axios";
axios.defaults.baseURL = process.env.API_ENDPOINT

createApp(App)
    .use(router)
    .mount('#app');
