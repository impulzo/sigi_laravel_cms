<template>
    <div v-if="component.name==='team' && component.isActive==true">
        <div v-for="text in texts" v-bind:key="text.id" class="section-title">
            <span v-if="text.key === 'title'">{{text.value}}</span>
            <h2 v-if="text.key === 'title'">{{text.value}}</h2>
            <p v-if="text.key === 'description'">{{text.value}}</p>
        </div>
        <div class="row">
            <div v-for="item in items" v-bind:key="item.id" class="col-lg-3 col-md-6 d-flex align-items-stretch" data-aos="zoom-in">
                <div class="member">
                    <img src="assets/img/team/team-1.jpg" alt="">
                    <h4>{{dataJson(item).name}}</h4>
                    <span>{{dataJson(item).rol}}</span>
                    <!-- <p>
                    Magni qui quod omnis unde et eos fuga et exercitationem. Odio veritatis perspiciatis quaerat qui aut aut aut
                    </p> -->
                    <div class="social">
                        <a href=""><i class="icofont-twitter"></i></a>
                        <a href=""><i class="icofont-facebook"></i></a>
                        <a href=""><i class="icofont-instagram"></i></a>
                        <a href=""><i class="icofont-linkedin"></i></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>

<script>
import axios from 'axios'
export default {
    name: 'Team Component From Legal Template',
    props: ['component'],
    data: function(){
        return{
            items:null,
            texts:null,
        }
    },
    mounted(){
        if(this.component.name === 'team' && this.component.isActive == true){
            axios.get(BASE_URL + '/api/components/'+this.component.id)
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