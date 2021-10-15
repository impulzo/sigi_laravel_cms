<template>
    <div v-if="component.name === 'suscription' && component.isActive==true">
        <div v-for="item in items" v-bind:key="item.id" class="text-center">
            <h3 v-if="item.key==='Title'">{{item.value}}</h3>
            <p v-if="item.key==='description'"> {{item.value}}</p>
            <a v-if="item.key==='button'" class="cta-btn" :href="dataJson(item).url">{{dataJson(item).title}}</a>
        </div>
    </div>
</template>

<script>
import axios from 'axios'
export default {
    name: 'Suscription Component From Legal Template',
    props: ['component'],
    data: function(){
        return{
            items: null,
        }
    },
    mounted(){
        if(this.component.name==='suscription' && this.component.isActive == true){
            axios.get(BASE_URL + '/api/components/'+this.component.id)
            .then(response=>{
                if(response.data.status==200){
                    this.items = response.data.data.component.items;
                }
            })
            .catch()
        }
    },
    methods: {
        dataJson: function(item){
            return JSON.parse(item.value);
        }
    }
}
</script>

<style>

</style>