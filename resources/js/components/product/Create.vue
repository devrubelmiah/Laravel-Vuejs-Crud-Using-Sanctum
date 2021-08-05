<template>
        <div class="row justify-content-center">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">Create</div>

                    <div class="card-body">
                    <form @submit.prevent="createPost">

                        <div class="form-group">
                            <label for="title">Title</label>
                            <input type="text" class="form-control" name="title" id="title" v-model="title">
                        </div>

                        <div class="form-group">
                            <label for="body">Description</label>
                            <textarea rows="" cols="" class="form-control" id="body" v-model="body"></textarea>
                        </div>

                        <div class="form-group">
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
            }
        },
        methods: {
            onFileChange(e){
                this.image = e.target.files[0];
            },
            createPost(){
                const config = {
                    headers:{ 'content-type' : 'multipart/form-data' }
                }
                let formData = new FormData()
                formData.append('title', this.title)
                formData.append('body', this.body)
                formData.append('image', this.image)
                axios.post('/blog', formData, config ).then( response => {
                    console.log(response.message)
                    this.$toaster.success('Post is created successfully.')
                    this.$router.push({name: 'blog'})
                }).catch(error => {
                    console.log(error)
                })

            }
        },

    }
</script>
