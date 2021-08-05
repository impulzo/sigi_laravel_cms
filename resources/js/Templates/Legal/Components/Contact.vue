<template>
  <div v-if="component.name==='contact' && component.isActive==true" id="topbar" class="d-none d-lg-flex align-items-center fixed-top ">
    <div class="container d-flex">
      <div class="contact-info mr-auto">
          <span class="item" v-for="item in items" v-bind:key="item.id">
               <i v-if="item.key==='email'" class="icofont-envelope"></i> 
               <i v-if="item.key==='phone-number'" class="icofont-envelope"></i>
               <a v-if="item.key==='email'" :href="`mailto:${item.value}`" style="margin-right:10px;"> {{ item.value }}</a>
               <span v-if="item.key==='phone-number'"> {{ item.value }}</span>
          </span>
      </div>
      <!-- <div class="social-links">
        <a href="#" class="twitter"><i class="icofont-twitter"></i></a>
        <a href="#" class="facebook"><i class="icofont-facebook"></i></a>
        <a href="#" class="instagram"><i class="icofont-instagram"></i></a>
        <a href="#" class="skype"><i class="icofont-skype"></i></a>
        <a href="#" class="linkedin"><i class="icofont-linkedin"></i></a>
      </div> -->
    </div>
  </div>
</template>

<script>
import axios from 'axios'
export default {
    name: 'Contact Component From Legal Template',
    props: ['component'],
    data: function(){
        return {
            items: null,
        }
    },
    mounted(){
        if(this.component.name==='contact' && this.component.isActive==true){
            //Get Components With Items
            axios.get(BASE_URL+'/api/components/'+this.component.id)
            .then(response => {
                 if(response.data.status === 200)
                    this.items = response.data.data.component.items;
            })
            .catch()
        }
    }
}
</script>

<style>
    .item{
        margin-left: 10px !important;
    }
</style>