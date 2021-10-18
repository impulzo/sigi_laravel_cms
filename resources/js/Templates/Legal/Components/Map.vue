<template>
    <div v-if="component.name==='map' && component.isActive==true" class="row" data-aos="fade-up">
        <div v-for="item in items" v-bind:key="item.id" class="col-lg-6">
            <iframe v-if="item.key === 'map'" class="mb-4 mb-lg-0" :src="`${item.value}`" frameborder="0" style="border:0; width: 100%; height: 384px;" allowfullscreen="" loading="lazy"></iframe>
        </div>
        <send-request></send-request>
    </div>
</template>

<script>
import axios from 'axios'
import SendRequest from './SendRequest.vue'
export default {
    name: 'Map Component From Legal Template',
    props: ['component'],
    data: function(){
        return {
            items:null
        }
    },
    mounted(){
        if(this.component.name === 'map' && this.component.isActive == true){
            axios.get(BASE_URL+ '/api/components/'+this.component.id)
            .then(response=>{
                if(response.data.status == 200){
                    this.items = response.data.data.component.items;
                    console.log(items);
                }
            })
            .catch()
        }
    },
    components:{
        SendRequest
    }
}
</script>

<style>

</style>