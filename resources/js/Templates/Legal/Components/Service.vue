<template>
    <div v-if="component.name === 'services' && component.isActive == true" >
        <div v-for="text in texts" v-bind:key="text.id" class="section-title">
            <span v-if="text.key==='title'">{{text.value}}</span>
            <h2 v-if="text.key==='title'">{{text.value}}</h2>
            <p v-if="text.key==='description'">{{text.value}}</p>
        </div>
        <div v-for="item in items" v-bind:key="item.id">
            <div class="row">
                <div class="col-lg-4 col-md-6 d-flex align-items-stretch" data-aos="fade-up">
                    <div class="icon-box">
                        <div class="icon"><i :class="dataJson(item).icon"></i></div>
                        <h4><a>{{dataJson(item).name}} </a></h4>
                        <p>{{dataJson(item).data}}</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>

<script>
import axios from 'axios'

export default {
    name: 'Service Component From Legal Template',
    props: ['component'],
    data: function(){
        return{
            items:null,
            texts:null,
        }
    },
    mounted(){
        if(this.component.name === 'services' && this.component.isActive==true){
            axios.get(BASE_URL+ '/api/components/'+this.component.id)
            .then(response =>{
                if(response.data.status == 200){
                    this.items = response.data.data.component.items.filter(item => item.typeItem.name === 'json')
                    this.texts = response.data.data.component.items.filter(item => item.typeItem.name === 'text')
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