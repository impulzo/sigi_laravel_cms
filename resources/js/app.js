require('./bootstrap');

import { createApp } from 'vue';
import PageDay from './Templates/PageDay/Index'

createApp({
    components:{
        PageDay
    }
}).mount('#app')