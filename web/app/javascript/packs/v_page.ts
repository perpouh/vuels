import Vue from 'vue'
import App from '@/app.vue'

document.addEventListener('DOMContentLoaded', () => {
  const container = document.querySelector("#app")
  if (container === null) return

  const app = new Vue({
    render: h => h(App)
  }).$mount()
  container.appendChild(app.$el)
})