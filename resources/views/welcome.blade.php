<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>Laravel</title>

        <!-- Favicons -->
        <link href="{{ asset('templates/day/img/favicon.png') }}" rel="icon">
        <link href="{{ asset('templates/day/img/apple-touch-icon.png') }}" rel="apple-touch-icon">

        <!-- Google Fonts -->
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

        <!-- Vendor CSS Files -->
        <link href="{{ asset('templates/day/vendor/bootstrap/css/bootstrap.min.css') }}" rel="stylesheet">
        <link href="{{ asset('templates/day/vendor/icofont/icofont.min.css') }}" rel="stylesheet">
        <link href="{{ asset('templates/day/vendor/boxicons/css/boxicons.min.css') }}" rel="stylesheet">
        <link href="{{ asset('templates/day/vendor/venobox/venobox.css') }}" rel="stylesheet">
        <link href="{{ asset('templates/day/vendor/owl.carousel/assets/owl.carousel.min.css') }}" rel="stylesheet">
        <link href="{{ asset('templates/day/vendor/aos/aos.css') }}" rel="stylesheet">

        <!-- Template Main CSS File -->
        <link href="{{ asset('templates/day/css/style.css') }}" rel="stylesheet">
        <style>
            body {
                font-family: 'Nunito';
            }
        </style>
    </head>
    <body class="antialiased">
        <div id="app">
            <page-day></page-day>
        </div>
        

        <!-- Vendor JS Files -->
        <script src="{{ asset('templates/day/vendor/jquery/jquery.min.js') }}"></script>
        <script src="{{ asset('templates/day/vendor/bootstrap/js/bootstrap.bundle.min.js') }}"></script>
        <script src="{{ asset('templates/day/vendor/jquery.easing/jquery.easing.min.js') }}"></script>
        <script src="{{ asset('templates/day/vendor/php-email-form/validate.js')}}"></script>
        <script src="{{ asset('templates/day/vendor/isotope-layout/isotope.pkgd.min.js') }}"></script>
        <script src="{{ asset('templates/day/vendor/venobox/venobox.min.js') }}"></script>
        <script src="{{ asset('templates/day/vendor/owl.carousel/owl.carousel.min.js') }}"></script>
        <script src="{{ asset('templates/day/vendor/aos/aos.js') }}"></script>

        <!-- Template Main JS File -->
        <script src="{{ asset('templates/day/js/main.js') }}"></script>

        <script src="{{ asset('js/app.js') }}"></script>
    </body>
</html>
