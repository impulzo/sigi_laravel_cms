<template>
    <div v-if="component.name === 'packages' && component.isActive == true" class="row">
        <div v-for="item in items" v-bind:key="item.id" class="col-lg-4 col-md-6" data-aos="zoom-in" data-aos-delay="150">
            <div class="box">
                <h3>{{dataJson(item).title}}</h3>
                <h4><sup>$</sup>{{dataJson(item).price}}<span> / {{dataJson(item).time}}</span></h4>
                <ul>
                    <li v-for="feature in dataJson(item).features" v-bind:key="feature.id">{{feature}}</li>
                </ul>
                <div class="btn-wrap">
                    <a :href="`${dataJson(item).url}`" class="btn-buy">Comprar</a>
                </div>
            </div>
        </div>
    </div>
</template>
<script>
import axios from 'axios'

export default {
    name:'Package Component From Legal Template',
    props: ['component'],
    data: function(){
        return{
            items:null,
        }
    },
    mounted(){
        if(this.component.name==='packages' && this.component.isActive == true){
            axios.get(BASE_URL+'/api/components/'+this.component.id)
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
