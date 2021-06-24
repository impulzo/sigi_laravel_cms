require('./bootstrap');

import { createApp } from 'vue';
import HelloWorld from './components/HelloWorld'

createApp({
    components:{
        HelloWorld
    }
}).mount('#app')