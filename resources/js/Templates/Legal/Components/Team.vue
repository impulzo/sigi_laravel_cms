<template>
    <div v-if="component.name==='team' && component.isActive==true" id="team">
        <div class="row">
            <span class="item" v-for="item in items" v-bind:key="item.id">
                <div class="col-lg-3 col-md-6 d-flex align-items-stretch" data-aos="zoom-in">
                    <div class="member">
                        <img src="assets/img/team/team-1.jpg" alt="">
                        <h4 v-if="item.key==='trabajador1'">{{item.value}}</h4>
                        <span v-if="item.key==='trabajador1'">{{item.value}}</span>
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
            </span>
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
        if(this.component.name === 'team' && this.component.isActive == true){
            axios.get(BASE_URL + '/api/components/'+this.component.id)
            .then(response =>{
                if(response.data.status === 200){
                    this.items = response.data.data.component.items;
                }
            })
            .catch()
        }
    }
}
</script>
