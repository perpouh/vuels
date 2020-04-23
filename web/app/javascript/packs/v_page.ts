import Vue from 'vue'
import App from '@/app.vue'
import router from '@/routes.js'

document.addEventListener('DOMContentLoaded', () => {
  const container = document.querySelector("#app")
  if (container === null) return

  const app = new Vue({
    render: h => h(App),
    router
  }).$mount()
  container.appendChild(app.$el)
})