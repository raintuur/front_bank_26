import Vue from 'vue'
import VueRouter from 'vue-router'
import HomeView from '../views/HomeView.vue'
import AtmView from "@/views/AtmView";
import CustomersView from "@/views/CustomersView";
import CarsView from "@/views/CarsView";
import AdminHomeView from "@/views/AdminHomeView";
import CustomerHomeView from "@/views/CustomerHomeView";

Vue.use(VueRouter)

const routes = [
  {
    path: '/',
    name: 'home',
    component: HomeView
  },
  {
   path: '/customer',
   name: 'customerRoute',
   component: CustomersView
  },
  {
   path: '/customer/home',
   name: 'customerHomeRoute',
   component: CustomerHomeView
  },
  {
   path: '/admin/home',
   name: 'adminHomeRoute',
   component: AdminHomeView
  },
  {
    path: '/atm',
    name: 'atmRoute',
    component: AtmView
  },
  {
    path: '/car',
    name: 'carRoute',
    component: CarsView
  },
  {
    path: '/about',
    name: 'about',
    // route level code-splitting
    // this generates a separate chunk (about.[hash].js) for this route
    // which is lazy-loaded when the route is visited.
    component: function () {
      return import(/* webpackChunkName: "about" */ '../views/AboutView.vue')
    }
  }
]

const router = new VueRouter({
  routes
})

export default router
