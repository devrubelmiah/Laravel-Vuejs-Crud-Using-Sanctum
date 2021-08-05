import Vue from 'vue'
import VueRouter from 'vue-router'
Vue.use(VueRouter)

import NotFound  from '../components/NotFound.vue'
import Welcome  from '../components/Welcome.vue'
import Login  from '../components/auth/Login.vue'
import Register  from '../components/auth/Register.vue'
import Blog  from '../components/product/Blog.vue'
import Create  from '../components/product/Create.vue'
import Edit  from '../components/product/Edit.vue'

export const routes = new VueRouter({
    mode: 'history',
    routes: [
        {
            path: '*',
            name: 'notfound',
            component: NotFound
        },
        {
            path: '/',
            name: 'welcome',
            component: Welcome,

        },
        {
            path: '/login',
            name: 'login',
            component: Login,
            meta: {guest: true}
        },
        {
            path: '/register',
            name: 'register',
            component: Register,
            meta: {guest: true}
        },
        {
            path: '/dashboard',
            name: 'blog',
            component: Blog,
            meta: {requiresAuth: true}
        },
        {
            path: '/create',
            name: 'create',
            component: Create,
            meta: {requiresAuth: true}
        },

        {
            path: '/edit/:id',
            name: 'edit',
            component: Edit,
            meta: {requiresAuth: true}
        },

    ]
})
