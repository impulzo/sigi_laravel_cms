<template>
  <div>
      <!-- LOADER TEMPLATE -->
<!-- <div id="page-loader">
    <div class="loader-icon fa fa-spin colored-border"></div>
</div> -->
    <!-- /LOADER TEMPLATE -->

    <div class="top-bar bg-dark " id="top-bar">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-12 col-md-12">
                    <div class="top-bar-left text-white">
                        <i class="fa fa-map-marker"></i>
                        <span class="ml-2">Prolongación de &Aacute;lamos #213, Colonia Antiguo Aeropuerto, Santa Lucia del Camino, C.P. 71245 Oaxaca de Juárez, México.</span>
                    </div>
                </div>

                <!-- <div class="col-lg-4 ml-lg-auto col-md-6">
                    <ul class="d-flex list-unstyled header-socials float-lg-right">
                        <li><a href="#"> <i class="fab fa-facebook-f"></i></a></li>
                        <li><a href="#"> <i class="fab fa-twitter"></i></a></li>
                        <li><a href="#"> <i class="fab fa-pinterest-p"></i></a></li>
                        <li><a href="#"> <i class="fab fa-linkedin"></i></a></li>
                    </ul>
                </div> -->
            </div>
        </div>
    </div>

    <div class="logo-bar d-none d-md-block d-lg-block bg-light" ref="home">
        <div class="container">
            <div class="row">
                <div class="col-lg-2">
                    <div class="logo d-none d-lg-block">
                        <!-- Brand -->
                        <a class="navbar-brand js-scroll-trigger" href="index.html">
                            <h2>CEDIEM</h2>
                        </a>
                    </div>
                </div>

                <div class="col-lg-8 justify-content-end ml-lg-auto d-flex col-12 col-md-12 justify-content-md-center">
                    <div class="top-info-block d-inline-flex">
                        <div class="icon-block">
                            <i class="ti-mobile"></i>
                        </div>
                        <div class="info-block">
                            <h5 class="font-weight-500">951-672-9426</h5>
                            <p>LLámanos</p>
                        </div>
                    </div>
                    <div class="top-info-block d-inline-flex">
                        <div class="icon-block">
                            <i class="ti-mobile"></i>
                        </div>
                        <div class="info-block">
                            <h5 class="font-weight-500">951-672-9356</h5>
                            <p>LLámanos</p>
                        </div>
                    </div>
                    <div class="top-info-block d-inline-flex">
                        <div class="icon-block">
                            <i class="ti-email"></i>
                        </div>
                        <div class="info-block">
                            <h5 class="font-weight-500">centrodedesarrollodeemprend@gmail.com</h5>
                            <p>Correo</p>
                        </div>
                    </div>
                    <!-- <div class="top-info-block d-inline-flex">
                        <div class="icon-block">
                            <i class="ti-time"></i>
                        </div>
                        <div class="info-block">
                            <h5 class="font-weight-500">Mon-Sat 9:00-12.00 </h5>
                            <p>Sunday Closed</p>
                        </div>
                    </div> -->
                </div>
            </div>
        </div>
    </div>

    <!-- NAVBAR
    ================================================= -->
    <div class="main-navigation" id="mainmenu-area">
        <div class="container">
            <nav class="navbar navbar-expand-lg navbar-dark bg-primary main-nav navbar-togglable rounded-radius">

                <a class="navbar-brand d-lg-none d-block" href="">
                    <h4>CEDIEM</h4>
                </a>
                <!-- Toggler -->
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="fa fa-bars"></span>
                </button>

                <!-- Collapse -->
                <div class="collapse navbar-collapse" id="navbarCollapse">
                    <!-- Links -->
                    <ul class="navbar-nav ">
                        <li class="nav-item dropdown">
                            <a class="nav-link" href="javascript:void(0);" @click="goto('home')" id="navbarWelcome" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                Inicio
                            </a>
                            <!-- <div class="dropdown-menu" aria-labelledby="navbarWelcome">
                                 <a class="dropdown-item " href="index.html">
                                    Home-1
                                </a>
                                <a class="dropdown-item " href="index-2.html">
                                    Home-2
                                </a> 
                                <a class="dropdown-item " href="index-3.html">
                                    Home-3
                                </a>
                                <a class="dropdown-item " href="index-4.html">
                                    Home-4
                                </a>
                            </div> -->
                        </li>
                        <li class="nav-item ">
                            <a href="javascript:void(0);" class="nav-link js-scroll-trigger" @click="goto('about')">
                                Nosotros
                            </a>
                        </li>
                        <!-- <li class="nav-item ">
                            <a href="service.html" class="nav-link js-scroll-trigger">
                                Cursos
                            </a>
                        </li>
                        <li class="nav-item ">
                            <a href="project.html" class="nav-link js-scroll-trigger">
                                Registrate
                            </a>
                        </li> -->

                        <li class="nav-item ">
                            <a href="javascript:void(0);" class="nav-link"  @click="goto('values')">
                                Valores
                            </a>
                        </li>
                    </ul>

                    <ul class="ml-lg-auto list-unstyled m-0">
                        <li><a href="javascript:void(0);" class="btn btn-white btn-circled" @click="goto('registration')">Reg&iacute;strate</a></li>
                    </ul>
                </div> <!-- / .navbar-collapse -->
            </nav>
        </div> <!-- / .container -->
    </div>



    <!-- HERO
    ================================================== -->
    <section class="banner-area py-7">
        <div id="content-banner"></div>
        <!-- Content -->
            <div class="container" id="home" >
                <div class="row  align-items-center">
                    <div class="col-md-12 col-lg-7 text-center text-lg-left" >
                        <div class="main-banner">
                            <!-- Heading -->
                            <h1 class="display-4 mb-4 font-weight-normal" style="color:white" id="title">
                                CEDIEM
                            </h1>

                            <!-- Subheading -->
                            <p class="lead mb-4" style="color:white">
                            CENTRO DE DESARROLLO E IMPULSO DE EMPRENDEDORES.
                            </p>
                            <p class="lead mb-4" style="color:white" id="objetive">
                                <b>Objetivo:</b>
                            CONTRIBUIR A TRAVÉS DE LA CAPACITACIÓN DE MANERA SISTÉMICA DESTINADO AL PERFECCIONAMIENTO Y ACTUALIZACIÓN DE CONOCIMIENTOS, OFRECIENDO OPORTUNIDADES DE APRENDIZAJE PARA EL DESARROLLO DE COMPETENCIAS Y HABILIDADES EN DIFERENTES OFICIOS HASTA LOGRAR QUE EL CAPACITANDO SE CONVIERTA EN UN EXITOSO EMPRENDEDOR..
                            </p>
                            <!-- Button -->
                            <!-- <p class="mb-0">
                                <a href="#" target="_blank" class="btn btn-primary btn-circled">
                                    Purchase now
                                </a>
                            </p> -->
                        </div>
                    </div>

                    <div class="col-lg-3 d-none d-lg-block" style="margin-left:12%;" id="logo">
                        <div class="banner-img-block">
                            <img :src="logo" alt="banner-img" class="img-fluid">
                        </div>
                    </div>
                </div> <!-- / .row -->
            </div>
        <!-- / .container -->   
    </section>


 <!-- <section class="section bg-grey" id="feature">
    <div class="container">
        <div class="row justy-content-center">
            <div class="col-lg-3 col-sm-6 col-md-6">
                <div class="text-center feature-block">
                    <div class="img-icon-block mb-4">
                        <i class="ti-thumb-up"></i>
                    </div>
                    <h4 class="mb-2">The right advice</h4>
                    <p>Our team are experts in matching you with the right provider.</p>
                </div>
            </div>

            <div class="col-lg-3 col-sm-6 col-md-6">
                <div class="text-center feature-block">
                    <div class="img-icon-block mb-4">
                        <i class="ti-cup"></i>
                    </div>
                    <h4 class="mb-2">Recognised for excellence</h4>
                    <p>We've been awarded for our high rate of customer satisfaction.</p>
                </div>
            </div>

            <div class="col-lg-3 col-sm-6 col-md-6">
                <div class="text-center feature-block">
                    <div class="img-icon-block mb-4">
                        <i class="ti-wallet"></i>
                    </div>
                    <h4 class="mb-2">Compare the best</h4>
                    <p>We only compare market leaders with a reputation for service quality.</p>
                </div>
            </div>

            <div class="col-lg-3 col-sm-6 col-md-6">
                <div class="text-center feature-block">
                    <div class="img-icon-block mb-4">
                        <i class="ti-dashboard"></i>
                    </div>
                    <h4 class="mb-2">Premium Services</h4>
                    <p>We only compare market leaders with a reputation for service quality.</p>
                </div>
            </div>
        </div>
    </div> 
</section> -->
<!-- / .container -->



<!-- SERVICE-1
================================================== -->
<!-- <section class="bg-grey" id="service">
    <div class="container">
        <div class="row ">
            <div class="col-lg-4">
                <div class="service-img">
                    <img src="images/blog-lg.jpg" alt="" class="img-fluid">
                </div>
            </div>

            <div class="col-lg-6 pl-4">
                <div class="service-content">
                    <h1>Get a better deal and start saving money today</h1>
                    <p>We compare hundreds of leading products and plans across many categories to bring you the best value for money.</p>
                </div>
            </div>
        </div>
    </div>
</section> -->

<!-- <section class="pt-5 service-wrap">
    <div class="container">
        <div class="row ">
            <div class="col-lg-8 offset-lg-4">
                <div class="carousel slide " id="service-carousel" data-ride="carousel">
                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            <div class="col-lg-12">
                                <div class="row">
                                    <div class="col-lg-6">
                                        <div class="service-block media">
                                            <div class="service-icon">
                                                <i class="ti-reload"></i>
                                            </div>
                                            <div class="service-inner-content media-body">
                                                <h4>Backup System</h4>
                                                <p>Our team are experts in matching you with the right provider.</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="service-block media">
                                            <div class="service-icon">
                                                <i class="ti-cloud"></i>
                                            </div>
                                            <div class="service-inner-content media-body">
                                                <h4>Cloud Hosting</h4>
                                                <p>Our team are experts in matching you with the right provider.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="carousel-item">
                            <div class="col-lg-12">
                                <div class="row">
                                    <div class="col-lg-6">
                                        <div class="service-block media">
                                            <div class="service-icon">
                                                <i class="ti-world"></i>
                                            </div>
                                            <div class="service-inner-content media-body">
                                                <h4>Web hosting</h4>
                                                <p>Our team are experts in matching you with the right provider.</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="service-block media">
                                            <div class="service-icon">
                                                <i class="ti-server"></i>
                                            </div>
                                            <div class="service-inner-content media-body">
                                                <h4>Office Cloud</h4>
                                                <p>Our team are experts in matching you with the right provider.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-lg-12">
                        <p class="pl-3">Want to know more about this? <a href="#">Contact us</a></p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section> -->

<!-- Mision y Vision -->
<section class="section" id="process" ref="about">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-12 col-lg-12 text-center">
                <div class="section-heading">
                    <!-- Heading -->
                    <h2 class="section-title">
                        CENTRO DE DESARROLLO E IMPULSO DE EMPRENDEDORES. 
                    </h2>

                    <!-- Subheading -->
                    <!-- <p>
                        Rapoo can be used to create anything from a small marketing page to a sophisticated website.
                    </p> -->

                </div>
            </div>
        </div> <!-- / .row -->

        <div class="row justify-content-center">
            <div class="col-lg-6 col-sm-6 col-md-6">
                <div class="process-block">
                    <img :src="imageMision" alt=""  style="width:100%; height:300px;">

                    <h3>Misión</h3>
                    <p>Asegurar que todas las personas se beneficien de los cursos de CEDIEM y con ello desarrollen habilidades que les permita vivir con dignidad humana siendo 
                        protagonistas de sus decisiones y motor de su propio futuro.</p>
                </div>
            </div>
            <!-- <div class="col-lg-4 col-sm-6 col-md-6">
                <div class="process-block">
                    <img src="images/process/process-2.jpg" alt="" class="img-fluid">

                    <h3>Project demostration</h3>
                    <p>Nihil facere delectus eaque aut possimus nobis laudantium reprehenderit.</p>
                </div>
            </div> -->
            <div class="col-lg-6 col-sm-6 col-md-6">
                <div class="process-block">
                    <img :src="imageVision" alt="" class="img-fluid">

                    <h3>Visión</h3>
                    <p>Ser un CENTRO DE DESARROLLO E IMPULSO DE EMPRENDEDORES influyente e incluyente en construir una cultura solidaridad centrada en las personas, 
                        familias y en la necesidad de lograr mejores condiciones de vida, de trabajo, de libertad y de participación social para todos.</p>
                </div>
            </div>
        </div>
    </div>
</section>


<section class="section" id="services-2" ref="values">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8 col-lg-6 text-center">
                <div class="section-heading">
                    <!-- Heading -->
                    <h2 class="section-title mb-2 text-white">
                       Nuestros Valores
                    </h2>

                    <!-- Subheading -->
                    <!-- <p class="mb-5 text-white">
                        Rapoo can be used to create anything from a small marketing page to a sophisticated website.
                    </p> -->
                </div>
            </div>
        </div> <!-- / .row -->

        <div class="row">
            <div class="col-lg-4 col-sm-6 col-md-6 mb-30">
                <div class="web-service-block">
                    <i class="fas fa-people-arrows"></i>
                    <h3>Respeto</h3>
                    <p>tener un reconocimiento plural para generar la armonía y mejores resultados y mejores resultados haciendo cumplir con nuestros objetivos.</p>
                </div>
            </div>
            <div class="col-lg-4 col-sm-6 col-md-6 mb-30">
                <div class="web-service-block">
                    <i class="far fa-comments"></i>
                    <h3>Comunicación.</h3>
                    <p>Como valor social e intercambiamos opiniones e interlocución y entre todas las partes para lograr mejore resultados colectivos.</p>
                </div>
            </div>
            <div class="col-lg-4 col-sm-6 col-md-6 mb-30">
                <div class="web-service-block">
                    <i class="ti-announcement"></i>
                    <h3>Transparencia</h3>
                    <p>Las acciones claras y concretas para bue funcionamiento en todos y cada una de las áreas y priorizando siempre una mejor Rendición de Cuentas.</p>
                </div>
            </div>

            <div class="col-lg-4 col-sm-6 col-md-6 ">
                <div class="web-service-block">
                    <i class="ti-layers-alt"></i>
                    <h3>Trabajo Social</h3>
                    <p>Brindar y contribuir a mejores condiciones formativas para el desarrollo de sus habilidades y emprendimiento en apoya de mejores oportunidades para un mejor desarrollo de las personas.
- DIGNIDAD: Promover que el ciudadano sea tratado en un pie de igualdad y que puedan gozar de los derechos fundamentales que de ellos derivan.</p>
                </div>
            </div>
            <div class="col-lg-4 col-sm-6 col-md-6 ">
                <div class="web-service-block">
                    <i class="fas fa-fist-raised"></i>
                    <h3>Dignidad</h3>
                    <p>Promover que el ciudadano sea tratado en un pie de igualdad y que puedan gozar de los derechos fundamentales que de ellos derivan.</p>
                </div>
            </div>
            <div class="col-lg-4 col-sm-6 col-md-6 ">
                <div class="web-service-block">
                    <i class="far fa-handshake"></i>
                    <h3>Solaridad</h3>
                    <p>Promover que el ciudadano sea tratado en un pie de igualdad y que puedan gozar de los derechos fundamentales que de ellos derivan.</p>
                </div>
            </div>
            <div class="col-lg-12 col-sm-12 col-md-12 ">
                <div class="web-service-block">
                    <i class="fas fa-users"></i>
                    <h3>Inclusión</h3>
                    <p style="text-align:center;">Generar pluralidad en el ciudadano como un área de oportunidad para enriquecer objetivamente a la sociedad.</p>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- <section class="section" id="pricing">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8 col-lg-6 text-center">
                <div class="section-heading">
                    
                    <h2 class="section-title">
                        Affordable Price Plan
                    </h2>

                    
                    <p>
                        Rapoo can be used to create anything from a small marketing page to a sophisticated website.
                    </p>
                </div>
            </div>
        </div> 
        <div class="row justify-content-center">
            <div class="col-lg-4 col-sm-6 col-md-6">
                <div class="pricing-box">
                    <h3>Stnadard</h3>
                    <div class="price-block">
                            <h2><small>$</small>13<span>monthly</span></h2>
                    </div>

                    <ul class="price-features list-unstyled">
                        <li>Unlimited Domain</li>
                        <li>Unmetered Bandwidth</li>
                        <li>Free SSL Certificate </li>
                        <li>20 Email Subscription</li>
                        <li>SSD Hosting</li>
                    </ul>

                    <a href="#" class="btn btn-outline-dark btn-circled">Purchase Now</a>
                </div>
            </div>
            <div class="col-lg-4 col-sm-6 col-md-6">
                <div class="pricing-box">
                    <h3>Premium</h3>
                    <div class="price-block">
                            <h2><small>$</small>23<span>monthly</span></h2>
                    </div>

                    <ul class="price-features list-unstyled">
                        <li>Unlimited Domain</li>
                        <li>Unmetered Bandwidth</li>
                        <li>Free SSL Certificate </li>
                        <li>20 Email Subscription</li>
                        <li>SSD Hosting</li>
                    </ul>

                    <a href="#" class="btn btn-primary btn-circled">Purchase Now</a>
                </div>
            </div>
            <div class="col-lg-4 col-sm-8 col-md-6">
                <div class="pricing-box ">
                    <h3>Business</h3>
                    <div class="price-block">
                            <h2><small>$</small>33<span>monthly</span></h2>
                    </div>

                    <ul class="price-features list-unstyled">
                        <li>Unlimited Domain</li>
                        <li>Unmetered Bandwidth</li>
                        <li>Free SSL Certificate </li>
                        <li>20 Email Subscription</li>
                        <li>SSD Hosting</li>
                    </ul>

                    <a href="#" class="btn btn-outline-dark btn-circled">Purchase Now</a>
                </div>
            </div>
        </div>
    </div>
</section> -->

<div ref="registration">
    <register-on-course></register-on-course>
</div>


<!-- <section id="projects" class="section-bottom">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-4 col-md-6 col-sm-6 mb-5">
                <div class="single-project">
                    <img src="images/projects/p-1.jpg" alt="" class="img-fluid">
                    <div class="project-content">
                        <h4>Project: onepage</h4>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate eligendi consequuntur veniam quod</p>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-6 col-sm-6 mb-5">
                <div class="single-project">
                    <img src="images/projects/p-4.jpg" alt="" class="img-fluid">
                    <div class="project-content">
                        <h4>Project: business</h4>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate eligendi consequuntur veniam quod</p>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-6 col-sm-8 ">
                <div class="single-project">
                    <img src="images/projects/p-3.jpg" alt="" class="img-fluid">
                    <div class="project-content">
                        <h4>Project : Marketing</h4>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate eligendi consequuntur veniam quod</p>
                    </div>
                </div>
            </div>
        </div>

        <div class="row py-4">
            <div class="col-lg-7 col-md-12 col-sm-12 ">
                <div class="single-project">
                    <img src="images/bg/banner_bg.jpg" alt="" class="img-fluid">
                </div>
            </div>
            <div class="col-lg-4 col-md-12 col-sm-12 ">
                <div class="project-content-block">
                    <h4>Do you know who we are?</h4>
                    <h2>More than just service your products...</h2>
                    <p>Explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and we will give you a complete account of the system.</p>
                </div>
            </div>
        </div>
    </div>
</section> -->

<!-- <section class="section" id="section-testimonial">
    <div class="container">
        <div class="row align-items-center">
            <div class="col-lg-4 col-sm-12 col-md-12">
                <div class="section-heading testimonial-heading">
                    <h1>What they say <br>about us</h1>
                    <p>Numquam doloribus impedit at consectetur molestiae tempora ratione possimus in veniam aperiam, eum consequuntur, unde. Earum ullam molestiae suscipit saepe sunt recusandae.</p>
                </div>
            </div>
            <div class="col-lg-8 col-sm-12 col-md-12">
                <div class="row">
                    <div class="col-lg-6">
                        <div class="test-inner ">
                            <div class="test-author-thumb d-flex">
                                <img src="images/client/test-1.jpg" alt="Testimonial author" class="img-fluid">
                                <div class="test-author-info">
                                    <h4>Will Barrow</h4>
                                    <h6>Sunrise Paradise Hotel</h6>
                                </div>
                            </div>

                            Quas ut distinctio tenetur animi nihil rem, amet dolorum totam. Ab repudiandae tempore qui fugiat amet ipsa id omnis ipsam, laudantium! Dolorem.

                            <i class="fa fa-quote-right"></i>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="test-inner ">
                            <div class="test-author-thumb d-flex">
                                <img src="images/client/test-2.jpg" alt="Testimonial author" class="img-fluid">
                                <div class="test-author-info">
                                    <h4>Will Barrow</h4>
                                    <h6>Sunrise Paradise Hotel</h6>
                                </div>
                            </div>

                            Quas ut distinctio tenetur animi nihil rem, amet dolorum totam. Ab repudiandae tempore qui fugiat amet ipsa id omnis ipsam, laudantium! Dolorem.

                            <i class="fa fa-quote-right"></i>
                        </div>
                    </div>
                </div>
                
                    <div class="row">
                    <div class="col-lg-6">
                        <div class="test-inner ">
                            <div class="test-author-thumb d-flex">
                                <img src="images/client/test-3.jpg" alt="Testimonial author" class="img-fluid">
                                <div class="test-author-info">
                                    <h4>Will Barrow</h4>
                                    <h6>Sunrise Paradise Hotel</h6>
                                </div>
                            </div>

                            Quas ut distinctio tenetur animi nihil rem, amet dolorum totam. Ab repudiandae tempore qui fugiat amet ipsa id omnis ipsam, laudantium! Dolorem.

                            <i class="fa fa-quote-right"></i>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="test-inner ">
                            <div class="test-author-thumb d-flex">
                                <img src="images/client/test-4.jpg" alt="Testimonial author" class="img-fluid">
                                <div class="test-author-info">
                                    <h4>Will Barrow</h4>
                                    <h6>Sunrise Paradise Hotel</h6>
                                </div>
                            </div>

                            Quas ut distinctio tenetur animi nihil rem, amet dolorum totam. Ab repudiandae tempore qui fugiat amet ipsa id omnis ipsam, laudantium! Dolorem.

                            <i class="fa fa-quote-right"></i>
                        </div>
                    </div>
                </div>
                
                    <div class="row">
                    <div class="col-lg-6">
                        <div class="test-inner">
                            <div class="test-author-thumb d-flex">
                                <img src="images/client/test-5.jpg" alt="Testimonial author" class="img-fluid">
                                <div class="test-author-info">
                                    <h4>Will Barrow</h4>
                                    <h6>Sunrise Paradise Hotel</h6>
                                </div>
                            </div>

                            Quas ut distinctio tenetur animi nihil rem, amet dolorum totam. Ab repudiandae tempore qui fugiat amet ipsa id omnis ipsam, laudantium! Dolorem.

                            <i class="fa fa-quote-right"></i>
                        </div>
                    </div>
                    
                    <div class="col-lg-6">
                        <div class="test-inner">
                            <div class="test-author-thumb d-flex">
                                <img src="images/client/test-6.jpg" alt="Testimonial author" class="img-fluid">
                                <div class="test-author-info">
                                    <h4>Will Barrow</h4>
                                    <h6>Sunrise Paradise Hotel</h6>
                                </div>
                            </div>

                            Quas ut distinctio tenetur animi nihil rem, amet dolorum totam. Ab repudiandae tempore qui fugiat amet ipsa id omnis ipsam, laudantium! Dolorem.

                            <i class="fa fa-quote-right"></i>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section> -->
 <!-- <section class="section" id="blog">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8 col-lg-6 text-center">
                <div class="section-heading">
                    <h2 class="section-title">
                        Read our latest news
                    </h2>
                    <p>
                        Our duty towards you is to share our experience we're reaching in our work path with you.
                    </p>
                </div>
            </div>
        </div> 

        <div class="row justify-content-center">
            <div class="col-lg-4 col-md-6">
                <div class="blog-box">
                    <div class="blog-img-box">
                        <img src="images/blog/blog-1.jpg" alt="" class="img-fluid blog-img">
                    </div>
                    <div class="single-blog">
                        <div class="blog-content">
                            <h6> 17 October 2018</h6>
                            <a href="#">
                                <h3 class="card-title">Top tips to speed up your site in a speedy time</h3>
                            </a>
                            <p>There are many variations of passages Lorem Ipsum available, but majority have ama suffered altratio. the lorem.</p>
                            <a href="#" class="read-more">Read More</a>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-lg-4 col-md-6">
                <div class="blog-box">
                    <div class="blog-img-box">
                        <img src="images/blog/blog-2.jpg" alt="" class="img-fluid blog-img">
                    </div>
                    <div class="single-blog">
                        <div class="blog-content">
                            <h6> 17 October 2018</h6>
                            <a href="#">
                                <h3 class="card-title">Brand your site value with marketing strategies</h3>
                            </a>

                            <p>There are many variations of passages Lorem Ipsum available, but majority have ama suffered altratio. the lorem.</p>
                                <a href="#" class="read-more">Read More</a>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-lg-4 col-md-8">
                <div class="blog-box">
                    <div class="blog-img-box">
                        <img src="images/blog/blog-3.jpg" alt="" class="img-fluid blog-img">
                    </div>
                    <div class="single-blog">
                        <div class="blog-content">
                            <h6> 17 October 2018</h6>
                            <a href="#">
                                <h3 class="card-title">Website Optimization is very essential for site speed</h3>
                            </a>
                            <p>There are many variations of passages Lorem Ipsum available, but majority have ama suffered altratio. the lorem.</p>
                                <a href="#" class="read-more">Read More</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section> -->

 <footer class="section " id="footer">
    <div class="overlay footer-overlay"></div>
    <div class="container">
        <div class="row justify-content-start">
            <!-- <div class="col-lg-4 col-sm-12">
                <div class="footer-widget">
                    <a href="#" class="footer-brand text-white">
                        Rapoo
                    </a>
                    <p>Each theme featured at the Bootstrap marketplace has been reviewed by Bootstrap's creators.Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
                </div>
            </div> -->

            <!-- <div class="col-lg-3 ml-lg-auto col-sm-12">
                <div class="footer-widget">
                    <h3>Account</h3>
                    <ul class="footer-links ">
                        <li>
                            <a href="#">
                                Terms and conditions
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                Privacy policy
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                Affiliate services
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                Help and support
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                Frequently Asked Question
                            </a>
                        </li>
                    </ul>
                </div>
            </div> -->


            <!-- <div class="col-lg-2 col-sm-6">
                <div class="footer-widget">
                    <h3>About</h3>
                    <ul class="footer-links ">
                        <li>
                            <a href="#">
                                Services
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                About Us
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                Pricing
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                Products Shop
                            </a>
                        </li>

                        <li>
                            <a href="#">
                                Contact
                            </a>
                        </li>
                    </ul>
                </div>
            </div> -->

            <!-- <div class="col-lg-2 col-sm-6">
                <div class="footer-widget">
                    <h3>Socials</h3>
                    <ul class="list-unstyled footer-links">
                        <li><a href="#"><i class="fab fa-facebook-f"></i>Facebook</a></li>
                        <li>
                        <a href="#"><i class="fab fa-twitter"></i>Twitter
                        </a></li>
                        <li><a href="#"><i class="fab fa-pinterest-p"></i>Pinterest
                        </a></li>
                        <li><a href="#"><i class="fab fa-linkedin"></i>linkedin
                        </a></li>
                        <li><a href="#"><i class="fab fa-youtube"></i>YouTube
                        </a></li>
                    </ul>
                </div>
            </div> -->
        </div>


        <div class="row text-right pt-5">
            <div class="col-lg-12">
                <!-- Copyright -->
                <p>
                    &copy; Copyright <span class="current-year">CEDIEM </span> All rights reserved. Creado por Impulzo S.A.S.
                </p>
            </div>
        </div> <!-- / .row -->
    </div> <!-- / .container -->
</footer>
<!--  Page Scroll to Top  -->
<a class="scroll-to-top js-scroll-trigger" href="#top-header">
    <i class="fa fa-angle-up"></i>
</a>

  </div>
</template>

<script>
import RegisterOnCourse from './Components/RegisterOnCourse.vue'
export default {
    name: 'Index Coorporation Template',
    data: function(){
        return {
            logo: BASE_URL+'/img/logo/cediem_logo.png',
            imageMision: BASE_URL+'/templates/coorporation/images/banner/banner.jpg',
            imageVision: BASE_URL+'/templates/coorporation/images/banner/service.jpg',
            ref: 'index',
        }
    },
    methods:{
        goto: function(refName){
            let element = this.$refs[refName];
            this.ref = refName;
            element.scrollIntoView({ behavior: 'smooth' });
        }
    },
    components:{
        RegisterOnCourse
    }
}
</script>

<style>
    .banner-area {
        background-image: url('/templates/coorporation/images/banner/p-6.jpg');
        background-repeat: no-repeat;
        background-size: 100%;
        position: relative;
        width: 100%;
        height: 600px;
    }
    #content-banner{
        position:absolute;
        margin-top: -120px;
        width: 100%;
        height: 100%;
        background-color: rgba(66, 76, 95, 0.5);
        z-index: 1;
        
    }
    #home{
        position: relative;
        z-index:2 !important;
    }
    @media (max-width: 939px) {
        #objetive, #title{
            display: none;
        }
        #logo{
            width: 50%;
            margin-left: 25% !important;
            display: block !important;
        }
    }
</style>