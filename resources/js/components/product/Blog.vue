<template>
        <div class="row justify-content-center">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">All Posts
                        <p class="text-center">{{currentUser.email}}</p>
                    <p> <button class="btn btn-danger" @click="logout"> Logout </button> </p>
                    <router-link :to="{name:'create'}" class="btn btn-primary float-right" > Create A Post</router-link>
                    </div>

                    <div class="card-body">
                    <table class="table table-dark table-hover text-center">
                        <thead>
                            <tr>
                                <td>Id</td>
                                <td>Title</td>
                                <td>Photo</td>
                                <td>Action</td>
                            </tr>
                        </thead>

                        <tbody>
                            <tr v-for="post, index in posts" :key="index">
                                <td>{{ index+1 }}</td>
                                <td> {{ post.title }} </td>
                                <td> <img :src="post.image" width="65" height="65"> </td>
                                <td> <router-link :to="{name: 'edit', params: {id: post.id}}" class="btn btn-success">Edit</router-link> || <a @click="deletePost(post.id)" class="btn btn-danger">Delete</a> </td>
                            </tr>
                        </tbody>

                    </table>
                    </div>

                </div>
            </div>
        </div>
</template>

<script>
    export default {
        data() {
            return {
                posts: [],
                currentUser: {},
            }
        },
        methods: {
            showPosts(){
                this.axios.get('blog').then( response => {
                this.posts = response.data.data;
            } )
            },
            deletePost(post_id){
                Swal.fire({
                    title: 'Are you sure?',
                    text: "You won't be able to revert this!",
                    icon: 'warning',
                    showCancelButton: true,
                    confirmButtonColor: '#3085d6',
                    cancelButtonColor: '#d33',
                    confirmButtonText: 'Yes, delete it!'
                }).then((result) => {
                    if (result.isConfirmed) {
                        axios.delete('blog/' + post_id).then((response) => {
                            this.showPosts()
                            //console.log(response)
                            this.$toaster.success('Post is deleted successfully.')
                        }).catch((errors) => {
                            console.log(errors)
                        })
                        Swal.fire(
                            'Deleted!',
                            'Your record has been deleted.',
                            'success'
                        )
                    }
                })
            },

            logout(){
                axios.post('/api/logout').then( response => {
                    localStorage.removeItem('token')
                    this.$router.push({name: 'login'})
                    location.reload()
                    console.log(response.data.msg)
                } )
            },
        },

        mounted() {
            this.showPosts()
            axios.get('api/user').then((response) => {
                this.currentUser = response.data
            }).catch((errors) => {
                console.log(errors)
            })
        }

    }
</script>
