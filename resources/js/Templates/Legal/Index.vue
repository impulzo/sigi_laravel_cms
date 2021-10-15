<template>
  <div>
    <contact :component="getComponentId('contact')" ></contact>

  <!-- ======= Header ======= -->
  <header id="header" class="fixed-top ">
    <div class="container d-flex align-items-center">

      <titlen :component="getComponentId('title')"></titlen>
      <!-- Uncomment below if you prefer to use an image logo -->
      <!-- <a href="index.html" class="logo mr-auto"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->

      <nav class="nav-menu d-none d-lg-block">
        <ul>
          <li :class="activeLink('index')"><a href="javascript:void(0);" @click="goto('index')">Inicio</a></li>
          <li :class="activeLink('about')"><a href="javascript:void(0);" @click="goto('about')">Nosotros</a></li>
          <li :class="activeLink('services')"><a href="javascript:void(0);" @click="goto('services')">Servicios</a></li>
          <!-- <li><a href="#portfolio">Portafolio</a></li>
          <li><a href="#pricing">Pricing</a></li> -->
          <li :class="activeLink('team')"><a href="javascript:void(0);" @click="goto('team')">Equipo</a></li>
          <!-- <li class="drop-down"><a href="">Estados</a>
            <ul>
              <li><a href="#">Drop Down 1</a></li>
              <li class="drop-down"><a href="#">Deep Drop Down</a>
                <ul>
                  <li><a href="#">Deep Drop Down 1</a></li>
                  <li><a href="#">Deep Drop Down 2</a></li>
                  <li><a href="#">Deep Drop Down 3</a></li>
                  <li><a href="#">Deep Drop Down 4</a></li>
                  <li><a href="#">Deep Drop Down 5</a></li>
                </ul>
              </li>
              <li><a href="#">Drop Down 2</a></li>
              <li><a href="#">Drop Down 3</a></li>
              <li><a href="#">Drop Down 4</a></li>
            </ul>
          </li> -->
          <li :class="activeLink('contact')"><a href="javascript:void(0);" @click="goto('contact')">Contacto</a></li>

        </ul>
      </nav><!-- .nav-menu -->

    </div>
  </header><!-- End Header -->

  <!-- ======= Hero Section ======= -->
  <section id="hero" class="d-flex align-items-center" ref="index">
    <div class="container position-relative" data-aos="fade-up" data-aos-delay="500">
      <banner :component="getComponentId('banner')" ></banner>
    </div>
  </section>
  <!-- End Hero -->

  <main id="main">

    <!-- ======= About Section ======= -->
    <section id="about" class="about" ref="about">
      <div class="container">
        <about :component="getComponentId('about')"></about>
      </div>
    </section><!-- End About Section -->

    <!-- ======= Why Us Section ======= -->
    <section id="why-us" class="why-us">
      <div class="container">
        <mission :component="getComponentId('mission_values')" ></mission>
      </div>
    </section>
    <!-- End Why Us Section -->

    <!-- ======= Clients Section ======= -->
    
    <section id="clients" class="clients">
      <div class="container" data-aos="zoom-in">
        <client :component="getComponentId('clients_banner')" > </client>
      </div>
    </section>
    <!-- End Clients Section -->

    <!-- ======= Services Section ======= -->
    <section id="services" class="services" ref="services">
      <div class="container">

        <div class="section-title">
          <span>Servicios</span>
          <h2>Servicios</h2>
          <p>“Dale al cliente siempre más de lo que espera”.&nbsp;&nbsp;&nbsp; Nelson Boswell.</p>
        </div>
        <service :component="getComponentId('services')" ></service>
      </div>
    </section>
    <!-- End Services Section -->

    <!-- ======= Cta Section ======= -->
    <section id="cta" class="cta">
      <div class="container" data-aos="zoom-in">
        <suscription :component="getComponentId('suscription')"></suscription>
      </div>
    </section>
    <!-- End Cta Section -->

    <!-- ======= Portfolio Section ======= -->
    <section id="portfolio" class="portfolio">
      <div class="container">

        <div class="section-title">
          <span>Portfolio</span>
          <h2>Portfolio</h2>
          <p>Sit sint consectetur velit quisquam cupiditate impedit suscipit alias</p>
        </div>
        <portfolio :component="getComponentId('portfolio')"></portfolio>
        
      </div>
    </section>
    <!-- End Portfolio Section -->

    <!-- ======= Pricing Section ======= -->
    <section id="pricing" class="pricing">
      <div class="container">
        <div class="section-title">
          <span>Pricing</span>
          <h2>Pricing</h2>
          <p>Sit sint consectetur velit quisquam cupiditate impedit suscipit alias</p>
        </div>
        <package :component="getComponentId('packages')"></package>
      </div>
    </section>
    <!-- End Pricing Section -->

    <!-- ======= Team Section ======= -->
    <section id="team" class="team" ref="team">
      <div class="container">
        <div class="section-title">
          <span>Equipo</span>
          <h2>Equipo</h2>
          <p>Ninguno de nosotros es tan bueno como todos nosotros juntos. Ray Kroc.</p>
        </div>
        <team :component="getComponentId('team')" ></team>
      </div>
    </section>
    <!-- End Team Section -->

    <!-- ======= Contact Section ======= -->
    <section id="contact" class="contact" ref="contact">
      <div class="container">

        <div class="section-title">
          <span>Contacto</span>
          <h2>Contacto</h2>
          <!-- <p>Sit sint consectetur velit quisquam cupiditate impedit suscipit alias</p> -->
        </div>

        <div class="row" data-aos="fade-up">
          <div class="col-lg-4">
            <div class="info-box mb-4">
              <i class="bx bx-map"></i>
              <h3>Nuestra Dirección</h3>
              <p id="address">CALLE PRIVADA DE MONTE ALBÁN, NÚMERO EXTERIOR 3, INTERIOR 2. COLONIA REFORMA, OAXACA DE JUÁREZ, OAXACA. CP 68050.</p>
            </div>
          </div>

          <div class="col-lg-4 col-md-6">
            <div class="info-box  mb-4">
              <i class="bx bx-envelope"></i>
              <h3>Correos</h3>
              <p class="sub-email">adm1nsindicato.dm@gmail.com</p>
              <p class="sub-email">adm1nsindicato.fa@gmail.com</p>
            </div>
          </div>

          <div class="col-lg-4 col-md-6">
            <div class="info-box  mb-4">
              <i class="bx bx-phone-call"></i>
              <h3>Teléfonos</h3>
              <p class="sub-phone">951 672 28 55</p>
              <p class="sub-phone">951 672 28 36</p>
              <p class="sub-phone">951 178 50 92</p>
            </div>
          </div>

        </div>

        <div class="row" data-aos="fade-up">

          <div class="col-lg-6 ">
            <!-- <iframe class="mb-4 mb-lg-0" src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d12097.433213460943!2d-74.0062269!3d40.7101282!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xb89d1fe6bc499443!2sDowntown+Conference+Center!5e0!3m2!1smk!2sbg!4v1539943755621" frameborder="0" style="border:0; width: 100%; height: 384px;" allowfullscreen></iframe> -->
            <iframe class="mb-4 mb-lg-0" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d953.459759062526!2d-96.71915167082706!3d17.080524381219178!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x85c72226472648a7%3A0xb7c77e75fb58627b!2sPrivada%20de%20Monte%20de%20Alb%C3%A1n%2C%20Reforma%2C%2068050%20Oaxaca%20de%20Ju%C3%A1rez%2C%20Oax.!5e0!3m2!1ses-419!2smx!4v1628052454730!5m2!1ses-419!2smx" frameborder="0" style="border:0; width: 100%; height: 384px;" allowfullscreen="" loading="lazy"></iframe>
          </div>

          <send-request></send-request>

        </div>

      </div>
    </section><!-- End Contact Section -->

  </main><!-- End #main -->

  <!-- ======= Footer ======= -->
  <footer id="footer">
    <!-- <div class="footer-top">
      <div class="container">
        <div class="row">

          <div class="col-lg-4 col-md-6">
            <div class="footer-info">
              <h3>Day</h3>
              <p>
                A108 Adam Street <br>
                NY 535022, USA<br><br>
                <strong>Phone:</strong> +1 5589 55488 55<br>
                <strong>Email:</strong> info@example.com<br>
              </p>
              <div class="social-links mt-3">
                <a href="#" class="twitter"><i class="bx bxl-twitter"></i></a>
                <a href="#" class="facebook"><i class="bx bxl-facebook"></i></a>
                <a href="#" class="instagram"><i class="bx bxl-instagram"></i></a>
                <a href="#" class="google-plus"><i class="bx bxl-skype"></i></a>
                <a href="#" class="linkedin"><i class="bx bxl-linkedin"></i></a>
              </div>
            </div>
          </div>

          <div class="col-lg-2 col-md-6 footer-links">
            <h4>Useful Links</h4>
            <ul>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Home</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">About us</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Services</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Terms of service</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Privacy policy</a></li>
            </ul>
          </div>

          <div class="col-lg-2 col-md-6 footer-links">
            <h4>Our Services</h4>
            <ul>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Web Design</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Web Development</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Product Management</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Marketing</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Graphic Design</a></li>
            </ul>
          </div>

          <div class="col-lg-4 col-md-6 footer-newsletter">
            <h4>Our Newsletter</h4>
            <p>Tamen quem nulla quae legam multos aute sint culpa legam noster magna</p>
            <form action="" method="post">
              <input type="email" name="email"><input type="submit" value="Subscribe">
            </form>

          </div>

        </div>
      </div>
    </div> -->

    <div class="container">
      <div class="copyright">
        &copy; Copyright <strong><span>Sindicato Art. 123</span></strong>. All Rights Reserved
      </div>
      <div class="credits">
        <!-- All the links in the footer should remain intact. -->
        <!-- You can delete the links only if you purchased the pro version. -->
        <!-- Licensing information: https://bootstrapmade.com/license/ -->
        <!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/day-multipurpose-html-template-for-free/ -->
        Desarrollado por <a href="http://impulzo.com.mx/" target="_blank">Impulzo S.A.S</a>
      </div>
    </div>
  </footer><!-- End Footer -->

  <a href="#" class="back-to-top"><i class="icofont-simple-up"></i></a>
  <!-- <div id="preloader"></div> -->
  </div>
</template>

<script>
import Portfolio from './Components/Portfolio.vue'
import Suscription from './Components/Suscription.vue'
import Package from './Components/Package.vue'
import About from './Components/About.vue'
import Service from './Components/Service.vue'
import Titlen from './Components/Title.vue'
import Contact from './Components/Contact.vue'
import Banner from './Components/Banner.vue'
import Team from './Components/Team.vue'
import Client from './Components/Client.vue'
import Mission from './Components/Mission.vue'
import SendRequest from './Components/SendRequest.vue'
export default {
  components: { 
    Portfolio,
    Contact, 
    Banner, 
    Team, 
    Client, 
    Mission, 
    Titlen,
    About, 
    Service,
    Package,
    Suscription },
  name: 'Index Legal Template',
  props: ['template'],
  data:function(){
    return {
      ref: 'index',
    }
  },
  methods:{
    getComponentId:function(name){
      let item = this.template.components.filter(item =>  item.name === name )[0];
      return item;
    },
    goto: function(refName){
    	let element = this.$refs[refName];
      this.ref = refName;
      element.scrollIntoView({ behavior: 'smooth' });
    },
    activeLink:function(link){
      if(link === this.ref){
        return 'active'
      }
    }
  },
  components:{
    Portfolio,
    Package,
    About,
    Contact,
    Mission,
    Titlen,
    Banner,
    Team,
    Client,
    Service,
    Suscription,
    SendRequest
  }
}
</script>

<style>
  p{
    text-align: justify;
  }
  #statutes{
    text-decoration: none;
    color: grey;
  }
  .box:hover  #statutes{
    color:#fff;
  }
  #address{
    margin-left: 15px !important;
    margin-right: 15px !important;
    text-align: justify;
  }
  .sub-email{
    text-align: center;
  }
  .sub-phone{
    text-align: center;
  }
  .member{
    width: 200% !important;
  }
  .info-box{
    height: 220px;
  }
  .clients {
  background: #f2f2f2;
  padding: 15px 0;
  text-align: center;
}

.clients img {
  width: 50%;
  filter: grayscale(100);
  transition: all 0.4s ease-in-out;
  display: inline-block;
  padding: 15px 0;
}

.clients img:hover {
  filter: none;
  transform: scale(1.2);
}

@media (max-width: 768px) {
  .clients img {
    width: 40%;
  }
}
</style>