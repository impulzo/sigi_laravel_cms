<template>
    <div v-if="component.name === 'title' && component.isActive==true" class="container d-flex align-items-center">
        <div v-for="item in items" v-bind:key="item.id" >
            <h1 class="logo mr-auto"><a href="javascript:void(0);" @click="goto('index')">{{item.value}}</a></h1>
        </div>
    </div>
</template>
<script>
import axios from 'axios'

export default {
    name: 'Title Componnent From Legal Template',
    props: ['component'],
    data: function(){
        return{
            items:null,
        }
    },
    mounted(){
        if(this.component.name === 'title' && this.component.isActive == true){
            axios.get(BASE_URL + '/api/components/'+this.component.id)
            .then(response=>{
                if(response.data.status == 200){
                    this.items = response.data.data.component.items;
                }
            })
            .catch()
        }
    }
}
</script>
