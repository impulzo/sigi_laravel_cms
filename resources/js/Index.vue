<template>
  <div>
    <legal v-if="page?.name==='legal' && page?.isActive==true" :template="page"></legal>      
  </div>
</template>

<script>
import axios from 'axios'
import Legal from './Templates/Legal/Index.vue';

export default {
    name: 'Index Page',
    props: ['template'],
    data: function(){
        return {
            page: null,
        }
    },
    mounted(){
        axios.get(BASE_URL+'/api/templates/'+this.template)
        .then((response)=>{
            if(response.data.status === 200){
                this.page = response.data.data.template;
            }
            if(response.data.status === 500){
                //Renderizar Pagina de Error
            }
        })
        .catch((err)=>{
            //Renderizar Pagina de Error
            console.log(err);
        });
    },
    components:{
        Legal
    },
}
</script>

<style>

</style>