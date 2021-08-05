<template>
<div class="row justify-content-center">
            <div class="col-md-12">
            <nav class="navbar navbar-expand-sm bg-primary navbar-dark">
            <ul class="navbar-nav" v-if="isUser">
                <li class="nav-item"> <router-link :to="{name:'welcome'}" class="nav-link" > Home </router-link>  </li>

                <li class="nav-item"> <router-link :to="{name:'blog'}" class="nav-link"> Dashboard </router-link>  </li>
            </ul>

            <ul class="navbar-nav" v-else>
                <li class="nav-item"> <router-link :to="{name:'welcome'}" class="nav-link" > Home </router-link>  </li>

                <li class="nav-item"> <router-link :to="{name:'login'}" class="nav-link" > Login </router-link>  </li>

                <li class="nav-item"> <router-link :to="{name:'register'}" class="nav-link" > Register </router-link>  </li>
            </ul>

            </nav>
            <router-view></router-view>
            </div>
        </div>
</template>

<script>
    export default {
        data() {
            return {
                isLogin: ''
            }
        },
        computed: {
            isUser(){
                return localStorage.getItem('token') ? true : false
            }
        },

    }
</script>
