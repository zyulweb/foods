import Vue from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'

Vue.config.productionTip = false

import ElementUI from "element-ui" //引入element-ui
import 'element-ui/lib/theme-chalk/index.css' //引入element-ui样式

import axios from './axios'



Vue.use(ElementUI) //注册element-ui


new Vue({
  router,
  store,
  render: h => h(App)
}).$mount('#app')
