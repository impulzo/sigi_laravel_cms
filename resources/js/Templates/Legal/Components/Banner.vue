<template>
    <div v-if="component.name==='banner' && component.isActive==true" id="banner" >
        <div class="container position-relative" ata-aos="fade-up" data-aos-delay="500">
            <span class="item" v-for="item in items" v-bind:key="item.id">
                <img v-if="item.key==='logo'" :src="`/templates/legal/img/${item.value}`" style="width:150px" />
                <h1 v-if="item.key==='title'">{{item.value}}</h1>
            </span>
        </div>
    </div>
</template>

<script>
import axios from 'axios'
export default {
    name: 'Banner Componnet From Legal Template',
    props: ['component'],
    data: function(){
        return{
            items: null,
        }
    },
    mounted(){
        if(this.component.name === 'banner' && this.component.isActive==true){
            //Get Components With Items
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