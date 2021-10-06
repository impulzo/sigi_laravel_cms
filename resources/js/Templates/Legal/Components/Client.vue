<template>
    <div v-if="component.name === 'clients_banner' && component.isActive == true" >
        <div class="row d-flex align-items-center">
            <div v-for="item in items" v-bind:key="item.id" class="col-lg-2 col-md-4 col-6">
                <img :src="`/templates/legal/img/${item.value}`" class="img-fluid" alt=""/>
            </div>
        </div>   
    </div>
</template>
<script>
import axios from 'axios'

export default {
    name: 'Client Componnet From Legal Template',
    props: ['component'],
    data: function(){
        return{
            items: null,
        }
    },
    mounted(){
        if(this.component.name === 'clients_banner' && this.component.isActive == true){
            axios.get(BASE_URL + '/api/components/'+this.component.id)
            .then(response=>{
                if(response.data.status === 200){
                    this.items = response.data.data.component.items;
                }
            })
            .catch()
        }
    }
}
</script>

<style>

</style>
