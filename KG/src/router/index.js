import Vue from 'vue'
import VueRouter from 'vue-router'
import Home from '../views/2dView.vue'

Vue.use(VueRouter)

const routes = [
  {
    path: '/',
    name: 'Home',
    component: Home
  },
  {
    path: '/chapter',
    name: 'chapter',
    // route level code-splitting
    // this generates a separate chunk (about.[hash].js) for this route
    // which is lazy-loaded when the route is visited.
    component: () => import(/* webpackChunkName: "about" */ '../views/chapter.vue')
  },
  {
    path: '/concept',
    name: 'concept',
    component: () => import(/* webpackChunkName: "about" */ '../views/concept.vue')
  },
  {
    path: '/subconcept',
    name: 'subconcept',
    component: () => import(/* webpackChunkName: "about" */ '../views/subconcept.vue')
  },
  {
    path: '/priority',
    name: 'priority',
    component: () => import(/* webpackChunkName: "about" */ '../views/priority.vue')
  }

]

const router = new VueRouter({
  routes
})

export default router
