require('./bootstrap');

import { createApp } from 'vue'
import Index from './Index'




createApp({
    components:{
        Index
    }
}).mount('#app')