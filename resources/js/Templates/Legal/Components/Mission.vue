<template>
    <div v-if="component.name=='mission_values' && component.isActive==true" class="row">
        <div v-for="item in items" v-bind:key="item.id" class="col-lg-4" data-aos="fade-up">
            <div class="box">
                <span>{{dataJSON(item).name}}</span>
                <p v-if="item.key === 'vision' ||item.key === 'mision'">{{dataJSON(item).value}}</p>
                <p><a v-if="item.key ==='statutes'" :href="dataJSON(item).url">{{dataJSON(item).value}}</a></p>
            </div>
        </div>
    </div>
</template>
<script>
import axios from 'axios'
export default {
    name: 'Team Componnent From Legal Template',
    props: ['component'],
    data: function(){
        return{
            items: null,
        }
    },
    mounted(){
        if(this.component.name==='mission_values' && this.component.isActive == true){
            axios.get(BASE_URL + '/api/components/'+this.component.id)
            .then(response=>{
                if(response.data.status == 200){
                    this.items = response.data.data.component.items;
                }
            })
            .catch()
        }
    },
    methods:{
        dataJSON: function(item){
            return JSON.parse(item.value);
        }
    }
}
</script>
