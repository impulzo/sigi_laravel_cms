<template>
  <div>
      <section class="section" id="projects-wrap">
        <div class="overlay"></div>
        <div class="container">
            <div class="row">
                <div class="col-lg-6">
                    <div class="section-heading">
                        <img :src="logo" alt="banner-img" class="img-fluid" style="width:45%; margin-left:23%;">
                        <br> 
                        <h1 class="text-white">PRE REGISTRO DE ALUMNOS CENTRO DE DESARROLLO E IMPULSO DE EMPRENDEDORES “CEDIEM”.</h1>
                    </div>
                </div>
                <div class="col-lg-6">
                        <div class="banner-contact-form bg-white">
                            <form action="#">
                                <div class="form-group">
                                    <input type="text" :class="valid.email" placeholder="Correo: " v-model="student.email" @blur="validate('email')">
                                </div>
                                <div class="form-group">
                                    <input type="text" :class="valid.full_name" placeholder="Nombre Completo:" v-model="student.full_name" @blur="validate('full_name')">
                                </div>
                                <div class="form-group">
                                    <input type="text" :class="valid.age" placeholder="Edad:" v-model="student.age" @blur="validate('age')">
                                </div>
                                <div class="form-group">
                                    <input type="text" :class="valid.municipality" name="subject" id="subject" placeholder="Municipio:" v-model="student.municipality" @blur="validate('municipality')">
                                </div>
                                 <div class="form-group">
                                    <input type="text" :class="valid.cell_phone" name="subject" id="subject" placeholder="Teléfono:" v-model="student.cell_phone" @blur="validate('municipality')">
                                </div>
                                 <div class="form-group">
                                    <select :class="valid.course_id" v-model="student.course_id" @blur="validate('course_id')">
                                        <option value="0">-- Seleccione un curso. --</option>
                                        <option v-for="item in courses" v-bind:key="item.id" :value="item.id">{{ item.name }} {{ item.schedule }}</option>
                                    </select>
                                </div>
                                <a href="javascript:void(0);" class="btn btn-dark btn-block btn-circled" @click="sendStudent">Registrarse.</a>
                                <br>
                                <div v-if="div.success" class="alert alert-success">
                                    Sus datos han sido registrados correctamente.
                                </div>
                                <div v-if="div.error" class="alert alert-danger">
                                    Error al registrarse. Contacte a algún administrador.
                                </div>
                            </form>
                        </div>
                    </div>
            </div>
        </div>
    </section>
  </div>
</template>
<script>
export default {
    name: "Register On Course",
    data:function(){
        return {
            logo: BASE_URL+'/img/logo/cediem_logo.png',
            courses: [],
            student:{
                email: '',
                full_name: '',
                age: '',
                municipality: '',
                cell_phone:'',
                course_id:'0'
            },
            valid:{
                email: "form-control",
                full_name: "form-control",
                age: "form-control",
                municipality: "form-control",
                cell_phone:"form-control",
                course_id:"form-control"
            },
            div:{
                error: false,
                success: false
            }
        };
    },
    mounted:function(){
        axios.get(BASE_URL+'/api/courses')
            .then(response => {
                console.log(response);
                 if(response.data.status === 200)
                    this.courses = response.data.data.courses;
            })
            .catch()
    },
    methods:{
        sendStudent:function(){
            this.validate('email');
            this.validate('full_name');
            this.validate('age');
            this.validate('municipality');
            this.validate('municipality');
            this.validate('municipality');
            if(this.student.full_name && this.student.email && this.student.email.includes("@") && this.student.age >= 18 
                && this.student.municipality && this.student.cell_phone && this.student.course_id){
                axios.post(BASE_URL+'/api/students',this.student)
                    .then(response => {
                        if(response.data.status === 200){
                            this.div.success = true;
                        }else{
                            this.div.error = true;
                        }
                    })
                    .catch(error => {
                        this.div.error = true;
                    })
            }
        },
        validate:function(attribute){
            if(attribute==='email'){
                if(this.student[attribute].includes("@")){
                    this.valid[attribute] = 'form-control is-valid';
                }else{
                    this.valid[attribute] = 'form-control is-invalid';
                }
                return;
            }
            if(attribute==='age'){
                if(parseInt(this.student[attribute])>= 18){
                    this.valid[attribute] = 'form-control is-valid';
                }else{
                    this.valid[attribute] = 'form-control is-invalid';
                }
                return;
            }
            if(attribute==='course_id'){
                if(parseInt(this.student[attribute]) > 0){
                    this.valid[attribute] = 'form-control is-valid';
                }else{
                    this.valid[attribute] = 'form-control is-invalid';
                }
                return;
            }
            if(this.student[attribute]===''){
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