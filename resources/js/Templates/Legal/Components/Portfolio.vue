<template>
    <div v-if="component.name == 'portfolio' && component.isActive == true">
        <div class="row" data-aos="fade-up">
            <div class="col-lg-12 d-flex justify-content-center">
                <ul id="portfolio-flters">
                    <li @click="changeFilter('*')" :class="{'filter-active': '*' == categorySelected}">All</li>
                    <li v-for="item in items" v-bind:key="item.id" @click="changeFilter(dataJson(item.value).filter)" :class="{'filter-active': dataJson(item.value).filter == categorySelected}">{{dataJson(item.value).name}}</li>
                </ul>
            </div>
        </div>
        <div v-if="items != null" class="row portfolio-container" data-aos="fade-up" data-aos-delay="150">
            <div v-for="imagenes in filteredImages" v-bind:key="imagenes.id" :class="`col-lg-4 col-md-6 portfolio-item ${imagenes.filter}`">
                <img :src="`/templates/legal/img/portfolio/${imagenes.image}`" class="img-fluid" style="height:100%" alt="">
                <div class="portfolio-info">
                    <h4>{{imagenes.title}}</h4>
                    <p>{{imagenes.description}}</p>
                    <a :href="`/templates/legal/img/portfolio/${imagenes.url}`" data-gall="portfolioGallery" class="venobox preview-link" title="App 1"><i class="bx bx-plus"></i></a>
                    <a href="portfolio-details.html" class="details-link" title="More Details"><i class="bx bx-link"></i></a>
                </div>
            </div>
        </div>
    </div>
</template>

<script>
import axios from 'axios'
export default {
    name: 'Portfolio Component From Legal Template',
    props: ['component'],
    data: function(){
        return{
            items: [],
            categorySelected: '*',
        }
    },
    mounted(){
        if(this.component.name === 'portfolio' && this.component.isActive == true ){
            axios.get(BASE_URL + '/api/components/'+ this.component.id)
            .then(response=>{
                if(response.data.status == 200){
                    this.items = response.data.data.component.items
                }
            })
            .catch()
        }
    },
    computed: {
        filteredImages: function(){
            const newArrayImages=[];
            var filteredCategory = "";
            if(this.categorySelected == '*'){
                this.items.forEach(element => {
                    const arrayImages = JSON.parse(element.value).images;
                    arrayImages.map(images=>{
                        newArrayImages.push(images);
                    });
                });
            }else{
                filteredCategory = this.items.filter(this.isSelected);
                const arrayImages = JSON.parse(filteredCategory[0].value).images;
                arrayImages.map(images=>{
                    newArrayImages.push(images);
                });
            }
            return newArrayImages;
        }
    },
    methods:{
        dataJson: function(item){
            return JSON.parse(item);
        },
        changeFilter: function(category){
            this.categorySelected = category;
        },
        isSelected: function(item){
            return JSON.parse(item.value).filter == this.categorySelected;
        }
    }
}

</script>