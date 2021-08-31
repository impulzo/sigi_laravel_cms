<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>{{ setting('site.title') }}</title>

        @if(setting('admin.template')=='legal')
            <link href="{{ asset('templates/legal/img/icon.ico') }}" rel="icon">
            <link href="{{ asset('templates/legal/img/apple-touch-icon.png') }}" rel="apple-touch-icon">
            <!-- Google Fonts -->
            <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">
            <!-- Vendor CSS Files -->
            <link href="{{ asset('templates/legal/vendor/bootstrap/css/bootstrap.min.css') }}" rel="stylesheet">
            <link href="{{ asset('templates/legal/vendor/icofont/icofont.min.css') }}" rel="stylesheet">
            <link href="{{ asset('templates/legal/vendor/boxicons/css/boxicons.min.css') }}" rel="stylesheet">
            <link href="{{ asset('templates/legal/vendor/venobox/venobox.css') }}" rel="stylesheet">
            <link href="{{ asset('templates/legal/vendor/owl.carousel/assets/owl.carousel.min.css') }}" rel="stylesheet">
            <link href="{{ asset('templates/legal/vendor/aos/aos.css') }}" rel="stylesheet">
            <!-- Template Main CSS File -->
            <link href="{{ asset('templates/legal/css/style.css') }}" rel="stylesheet">
        @endif
        @if(setting('admin.template')=='coorporation')
            <link href="{{ asset('img/icon/cediem_logo.ico') }}" rel="icon">
            <link href="{{ asset('img/icon/cediem_logo.ico') }}" rel="apple-touch-icon">
            <!-- bootstrap.min css -->
            <link rel="stylesheet" href="{{ asset('templates/coorporation/plugins/bootstrap/css/bootstrap.min.css') }}">
            <!-- Animate Css -->
            <link rel="stylesheet" href="{{ asset('templates/coorporation/plugins/animate-css/animate.css') }}">
            <!-- Icon Font css -->
            <link rel="stylesheet" href="{{ asset('templates/coorporation/plugins/fontawesome/css/all.css') }}">
            <link rel="stylesheet" href="{{ asset('templates/coorporation/plugins/fonts/Pe-icon-7-stroke.css') }}">
            <!-- Themify icon Css -->
            <link rel="stylesheet" href="{{ asset('templates/coorporation/plugins/themify/css/themify-icons.css') }}">
            <!-- Slick Carousel CSS -->
            <link rel="stylesheet" href="{{ asset('templates/coorporation/plugins/slick-carousel/slick/slick.css') }}">
            <link rel="stylesheet" href="{{ asset('templates/coorporation/plugins/slick-carousel/slick/slick-theme.css') }}">
            <!-- Main Stylesheet -->
            <link rel="stylesheet" href="{{ asset('templates/coorporation/css/style.css') }}">
            <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" integrity="sha512-1ycn6IcaQQ40/MKBW2W4Rhis/DbILU74C1vSrLJxCq57o941Ym01SwNsOMqvEBFlcgUa6xLiPY/NS5R+E6ztJQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />

        @endif
    </head>
    @if(setting('admin.template')=='legal')
        <body class="antialiased">
    @endif
    @if(setting('admin.template')=='coorporation')
        <body id="top-header">
    @endif
        <script> var BASE_URL = "{{ url('/') }}"; </script>
        <div id="app">
            <index template="{{ setting('admin.template') }}"></index>
        </div>
        @if(setting('admin.template')=='legal')
            <!-- Vendor JS Files -->
            <script src="{{ asset('templates/legal/vendor/jquery/jquery.min.js') }}"></script>
            <script src="{{ asset('templates/legal/vendor/bootstrap/js/bootstrap.bundle.min.js') }}"></script>
            <script src="{{ asset('templates/legal/vendor/jquery.easing/jquery.easing.min.js') }}"></script>
            <script src="{{ asset('templates/legal/vendor/php-email-form/validate.js')}}"></script>
            <script src="{{ asset('templates/legal/vendor/isotope-layout/isotope.pkgd.min.js') }}"></script>
            <script src="{{ asset('templates/legal/vendor/venobox/venobox.min.js') }}"></script>
            <script src="{{ asset('templates/legal/vendor/owl.carousel/owl.carousel.min.js') }}"></script>
            <script src="{{ asset('templates/legal/vendor/aos/aos.js') }}"></script>
            <!-- Template Main JS File -->
            <script src="{{ asset('templates/legal/js/main.js') }}"></script>
        @endif
        @if(setting('admin.template')=='coorporation')
            <!-- Main jQuery -->
            <script src="{{ asset('templates/coorporation/plugins/jquery/jquery.min.js') }}"></script>
            <!-- Bootstrap 3.1 -->
            <script src="{{ asset('templates/coorporation/plugins/bootstrap/js/popper.min.js') }}"></script>
            <script src="{{ asset('templates/coorporation/plugins/bootstrap/js/bootstrap.min.js') }}"></script>
            <!-- Slick Slider -->
            <script src="{{ asset('templates/coorporation/plugins/slick-carousel/slick/slick.min.js') }}"></script>
            <script src="{{ asset('templates/coorporation/js/jquery.easing.1.3.js') }}"></script>
            <!-- Map Js -->
            <script src="{{ asset('templates/coorporation/plugins/google-map/gmap3.min.js') }}"></script>
            <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDwIQh7LGryQdDDi-A603lR8NqiF3R_ycA"></script>

            {{-- <script src="{{ asset('templates/coorporation/js/form/contact.js') }}"></script> --}}
            <script src="{{ asset('templates/coorporation/js/theme.js') }}"></script>
        @endif
        <script src="{{ asset('js/app.js') }}"></script>

        
        
    </body>
</html>
