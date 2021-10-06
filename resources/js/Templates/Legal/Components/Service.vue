<template>
    <div v-if="component.name === 'services' && component.isActive == true" class="row">
        <div v-for="item in items" v-bind:key="item.id" class="col-lg-4 col-md-6 d-flex align-items-stretch" data-aos="fade-up">
            <div class="icon-box">
                <div class="icon"><i :class="dataJson(item).icon"></i></div>
                <h4><a>{{dataJson(item).name}} </a></h4>
                <p>{{dataJson(item).data}}</p>
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
        }
    },
    mounted(){
        if(this.component.name === 'services' && this.component.isActive==true){
            axios.get(BASE_URL+ '/api/components/'+this.component.id)
            .then(response =>{
                if(response.data.status == 200){
                    this.items = response.data.data.component.items
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
