import Vue from 'vue'
import VueRouter from 'vue-router'
import HomeView from '../views/HomeView.vue'
import AtmView from "@/views/AtmView";
import CustomersVue from "@/views/CustomersVue";

Vue.use(VueRouter)

const routes = [
    {
        path: '/',
        name: 'home',
        component: HomeView
    },
    {
        path: '/atm',
        name: 'atmRoute',
        component: AtmView
    },
    {
        path: '/customer',
        name: 'customerRoute',
        component: CustomersVue
    },
    {
        path: '/about',
        name: 'about',
        // route level code-splitting
        // this generates a separate chunk (about.[hash].js) for this route
        // which is lazy-loaded when the route is visited.
        component:

            function () {
                return import(/* webpackChunkName: "about" */ '../views/AboutView.vue')
            }
    }
]

const router = new VueRouter({
    routes
})

export default router
