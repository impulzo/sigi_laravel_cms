<template>
    <div v-if="component.name==='about' && component.isActive == true">
        <div v-for="item in items" v-bind:key="item.id" class="row">
            <div class="col-lg-6 order-1 order-lg-2" data-aos="fade-left">
                <img :src="`/templates/legal/img/${dataJson(item).image}`" class="img-fluid" alt="">
            </div>
            <div class="col-lg-6 pt-4 pt-lg-0 order-2 order-lg-1 content" data-aos="fade-right">
                <h3>{{dataJson(item).title}}</h3>
                <p class="font-italic">{{dataJson(item).subtitle}}</p>
                <ul>
                <li v-for="point in dataJson(item).points" v-bind:key="point.id"><i class="icofont-check-circled"></i>{{point}} </li>
                </ul>
                <p>{{dataJson(item).description}}</p>
            </div>
        </div>
    </div>
</template>
<script>
import axios from 'axios'

export default {
    name: 'About Component From Legal Template',
    props: ['component'],
    data: function(){
        return{
            items:null,
        }
    },
    mounted(){
        if(this.component.name === 'about' && this.component.isActive==true){
            axios.get(BASE_URL + '/api/components/'+this.component.id)
            .then(response=>{
                if(response.data.status == 200){
                    this.items = response.data.data.component.items
                }
            })
            .catch()
        }
    },
    methods:{
        dataJson: function(item){
            return JSON.parse(item.value);
        }
    }
}
</script>
