<template>
        <div class="row justify-content-center">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">Create</div>

                    <div class="card-body">
                    <form @submit.prevent="UpdatePost">

                        <div class="form-group">
                            <label for="title">Title</label>
                            <input type="text" class="form-control" name="title" id="title" v-model="title">
                        </div>

                        <div class="form-group">
                            <label for="body">Description</label>
                            <textarea rows="" cols="" class="form-control" id="body" v-model="body"></textarea>
                        </div>

                        <div class="form-group">
                        <div>
                            <img :src="showImg" alt="" width="64" height="60" >
                        </div>
                            <label for="image">Upload Photo</label>
                            <input type="file" class="form-control-file border" name="image" id="image" @change="onFileChange">
                        </div>

                    <button type="submit" class="btn btn-info">Update</button>
                    </form>
                    </div>

                </div>
            </div>
        </div>
</template>

<script>
    export default {
        data() {
            return {
                    title: '',
                    body: '',
                    image: '',
                    showImg: '',
            }
        },
        methods: {
            onFileChange(e){
                this.image = e.target.files[0];
            },
            UpdatePost(){
                const config = {
                    headers:{ 'content-type' : 'multipart/form-data' }
                }
                let formData = new FormData()
                formData.append('title', this.title)
                formData.append('body', this.body)
                formData.append('image', this.image)
                formData.append('_method', 'put')
                let id = this.$route.params.id
                axios.post('/blog/'+id, formData, config ).then( response => {
                    console.log(response.data.message)
                    this.$router.push({name: 'blog'})
                    this.$toaster.success('Post is updated successfully.')
                }).catch(error => {
                    console.log(error)
                })

            }
        },
        mounted() {
            let id = this.$route.params.id;
            //console.log(id)
            this.axios.get('/blog/' + id + '/edit').then( response => {
                //console.log(response.data)
                this.title = response.data.data.title
                this.body = response.data.data.body
                this.showImg = response.data.data.image
            } )
        }
    }
</script>
