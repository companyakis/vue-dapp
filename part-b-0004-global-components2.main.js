import { createApp } from 'vue'
import App from './App.vue'

// global component creation steps...

const app = createApp(App)

import Header from '@/components/Fixed/Header.vue'

app.component("app-header", Header)

app.mount('#app')
