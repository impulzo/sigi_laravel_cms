<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>::Sindicato Art. 123::</title>

        <!-- Favicons -->
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
        <style>
            body {
                font-family: 'Nunito';
            }
        </style>
    </head>
    <body class="antialiased">
        <script> var BASE_URL = "{{ url('/') }}"; </script>
        
        <div id="app">
            <index template="legal"></index>
        </div>
        
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

        <script src="{{ asset('js/app.js') }}"></script>

        
        
    </body>
</html>
