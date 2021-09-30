<template>
    <div v-if="component.name === 'clients_banner' && component.isActive == true" id="clients">
        <span class="item" v-for="item in items" v-bind:key="item.id">
            <div class="col-lg-2 col-md-4 col-6">
                <img v-if="item.key==='client_1'" :src="`assets/img/clients/${item.value}`" class="img-fluid" alt=""/>
            </div>
        </span>
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
