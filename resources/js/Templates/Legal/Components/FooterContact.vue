<template>
    <div v-if="component.name==='contact_footer' && component.isActive == true">
        <div v-for="text in texts" v-bind:key="text.id" class="section-title">
            <span v-if="text.key === 'title'">{{text.value}}</span>
            <h2 v-if="text.key === 'title'">{{text.value}}</h2>
            <p v-if="text.key === 'description'">{{text.value}}</p>
        </div>
        <div v-for="item in items" v-bind:key="item.id" class="row" data-aos="fade-up">
            <div class="col-lg-4">
                <div class="info-box mb-4">
                    <i class="bx bx-map"></i>
                    <h3>Nuestra Dirección</h3>
                    <p id="address">{{dataJson(item).address}}</p>
                </div>
            </div>
            <div class="col-lg-4 col-md-6">
                <div class="info-box  mb-4">
                    <i class="bx bx-envelope"></i>
                    <h3>Correos</h3>
                    <p v-for="mail in dataJson(item).mails" v-bind:key="mail.id" class="sub-email">{{mail}}</p>
                </div>
            </div>
            <div class="col-lg-4 col-md-6">
                <div class="info-box  mb-4">
                    <i class="bx bx-phone-call"></i>
                    <h3>Teléfonos</h3>
                    <p v-for="phone in dataJson(item).phones" v-bind:key="phone.id" class="sub-phone">{{phone}}</p>
                </div>
            </div>

        </div>
    </div>
</template>

<script>
import axios from 'axios';
export default {
    name: 'FooterContact Componnent From Legal Template',
    props: ['component'],
    data: function(){
        return{
            items:null,
            texts:null,
        }
    },
    mounted(){
        if(this.component.name === 'contact_footer' && this.component.isActive == true){
            axios.get(BASE_URL + '/api/components/' + this.component.id)
            .then(response=>{
                if(response.data.status == 200){
                    this.items = response.data.data.component.items.filter(item => item.typeItem.name === 'json')
                    this.texts = response.data.data.component.items.filter(item => item.typeItem.name === 'text')
                    console.log(this.texts);
                }
            })

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