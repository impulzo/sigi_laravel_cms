<template>
  <div class="col-lg-6">
        <div role="form" class="php-email-form">
            <div class="form-row">
            <div class="col-md-6 form-group">
                <input type="text" :class="valid.name" placeholder="Nombre" v-model="request.name" @blur="validate('name')"/>
            </div>
            <div class="col-md-6 form-group">
                <input type="email" :class="valid.email" id="email" placeholder="Correo"  v-model="request.email" @blur="validate('email')"/>
            </div>
            </div>
            <div class="form-group">
            <input type="text" :class="valid.subject" placeholder="Asunto"  v-model="request.subject" @blur="validate('subject')" />
            <div class="validate"></div>
            </div>
            <div class="form-group">
            <textarea :class="valid.message" rows="5"  placeholder="Mensaje" v-model="request.message" @blur="validate('message')"></textarea>
            <div class="validate"></div>
            </div>
            <div class="mb-3">
                <div v-if="div.loading" class="loading" style="display:block !important;">Cargando</div>
                <div v-if="div.error" class="error-message" style="display:block !important;">Ha ocurrido un error.</div> 
                <div v-if="div.success" class="sent-message" style="display:block !important;">Su mensage ha sido enviado. Gracias!</div>
            </div>
            <div class="text-center"><button v-if="div.submit" type="submit" @click="sendRequest">Enviar Correo.</button></div>
        </div>
    </div>
</template>

<script>
import axios from 'axios'
export default {
    name: "Send Request From",
    data:function(){
        return {
            request: {
                name: '',
                email: '',
                subject: '',
                message:''
            },
            valid:{
                name: 'form-control',
                email: 'form-control',
                subject: 'form-control',
                message:'form-control'
            },
            div:{
                loading:false,
                submit:true,
                success:false,
                error:false
            }
        }
    },
    methods:{
        sendRequest:function(){
            this.validate('name');
            this.validate('email');
            this.validate('subject');
            this.validate('message');
            if(this.request.name && this.request.email && this.request.email.includes("@") && this.request.subject && this.request.message){
                this.div.submit = false;
                this.div.loading = true;
                setTimeout(()=>{
                    axios.post(BASE_URL+'/api/request',this.request)
                    .then(response => {
                        if(response.data.status === 200){
                            this.div.loading = false;
                            this.div.success = true;
                        }else{
                            this.div.loading = false;
                            this.div.error = true;
                        }
                    })
                    .catch(error => {
                        this.div.loading = false;
                        this.div.error = true;
                    })
                },2000)
            }
        },
        validate:function(attribute){
            if(attribute==='email'){
                if(this.request[attribute].includes("@")){
                    this.valid[attribute] = 'form-control is-valid';
                }else{
                    this.valid[attribute] = 'form-control is-invalid';
                }
                return;
            }
            if(this.request[attribute]===''){
                this.valid[attribute] = 'form-control is-invalid';
            }else{
                this.valid[attribute] = 'form-control is-valid';
            }
        }
    }
}
</script>

<style>

</style>