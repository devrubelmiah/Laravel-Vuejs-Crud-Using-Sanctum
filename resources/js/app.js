require('./bootstrap');
import Vue from 'vue';
///window.Vue = require('vue').default;
import axios from 'axios';
import VueAxios from 'vue-axios';
Vue.use(VueAxios, axios);
Vue.component('app-header', require('./components/Header.vue').default);
import {routes} from './router/routes.js'

import Toaster from 'v-toaster'

// You need a specific loader for CSS files like https://github.com/webpack/css-loader
import 'v-toaster/dist/v-toaster.css'

// optional set default imeout, the default is 10000 (10 seconds).
Vue.use(Toaster, {timeout: 5000})

import Swal from 'sweetalert2'
window.Swal = Swal

function loggedIn(){
    return localStorage.getItem('token')
}

routes.beforeEach((to, from, next) => {
    if (to.matched.some(record => record.meta.requiresAuth)) {
        // this route requires auth, check if logged in
        // if not, redirect to login page.
        if (!loggedIn()) {
            next({
            path: '/login',
            query: { redirect: to.fullPath }
            })
        } else {
            next()
        }
    } else if(to.matched.some(record => record.meta.guest)) {
        if (loggedIn()) {
            next({
            path: '/',
            query: { redirect: to.fullPath }
            })
        } else {
            next()
        }
    } else {
        next() // make sure to always call next()!
    }
})

const app = new Vue({
    el: '#app',
    router: routes,
});
