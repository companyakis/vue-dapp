import { createApp } from 'vue'
import App from './App.vue'

// npm i vue-toast-notification

import ToastPlugin from 'vue-toast-notification';

import 'vue-toast-notification/dist/theme-bootstrap.css';

const app = createApp(App)

import Header from '@/components/Fixed/Header.vue'

app.component("app-header", Header)

app.use(ToastPlugin)

app.mount('#app')
