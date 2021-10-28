<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class ComponentsTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('components')->delete();
        
        \DB::table('components')->insert(array (
            0 => 
            array (
                'id' => 1,
                'name' => 'contact',
                'display_name' => 'Menú de Contacto',
                'template_id' => 2,
                'path' => 'Components/MenuContact.vue',
                'is_active' => 0,
                'created_at' => '2021-07-27 00:24:44',
                'updated_at' => '2021-10-15 20:22:19',
            ),
            1 => 
            array (
                'id' => 2,
                'name' => 'site',
                'display_name' => 'Sitio General',
                'template_id' => 4,
                'path' => '/',
                'is_active' => 1,
                'created_at' => '2021-08-29 06:41:37',
                'updated_at' => '2021-08-29 06:41:37',
            ),
            2 => 
            array (
                'id' => 3,
                'name' => 'contact',
                'display_name' => 'Menú de Contacto',
                'template_id' => 4,
                'path' => 'Components/MenuContact.vue',
                'is_active' => 1,
                'created_at' => '2021-08-29 06:47:16',
                'updated_at' => '2021-08-29 06:47:16',
            ),
            3 => 
            array (
                'id' => 4,
                'name' => 'banner',
                'display_name' => 'Banner',
                'template_id' => 2,
                'path' => '/',
                'is_active' => 1,
                'created_at' => '2021-09-22 22:36:56',
                'updated_at' => '2021-09-23 22:04:01',
            ),
            4 => 
            array (
                'id' => 6,
                'name' => 'team',
                'display_name' => 'Equipo de Trabajo',
                'template_id' => 2,
                'path' => '/',
                'is_active' => 1,
                'created_at' => '2021-09-23 21:21:33',
                'updated_at' => '2021-09-23 21:41:42',
            ),
            5 => 
            array (
                'id' => 8,
                'name' => 'clients_banner',
                'display_name' => 'Clientes',
                'template_id' => 2,
                'path' => '/',
                'is_active' => 1,
                'created_at' => '2021-09-29 21:26:37',
                'updated_at' => '2021-09-29 21:57:51',
            ),
            6 => 
            array (
                'id' => 9,
                'name' => 'mission_values',
                'display_name' => 'Misión y Visión',
                'template_id' => 2,
                'path' => '/',
                'is_active' => 0,
                'created_at' => '2021-10-04 23:21:50',
                'updated_at' => '2021-10-28 05:04:04',
            ),
            7 => 
            array (
                'id' => 10,
                'name' => 'title',
                'display_name' => 'Titulo',
                'template_id' => 2,
                'path' => '/',
                'is_active' => 1,
                'created_at' => '2021-10-06 02:14:22',
                'updated_at' => '2021-10-06 15:08:44',
            ),
            8 => 
            array (
                'id' => 11,
                'name' => 'services',
                'display_name' => 'Servicios',
                'template_id' => 2,
                'path' => '/',
                'is_active' => 1,
                'created_at' => '2021-10-06 17:44:24',
                'updated_at' => '2021-10-06 18:33:46',
            ),
            9 => 
            array (
                'id' => 12,
                'name' => 'about',
                'display_name' => 'Acerca de Nosotros',
                'template_id' => 2,
                'path' => '/',
                'is_active' => 1,
                'created_at' => '2021-10-06 18:39:51',
                'updated_at' => '2021-10-06 19:09:46',
            ),
            10 => 
            array (
                'id' => 14,
                'name' => 'packages',
                'display_name' => 'Paquetes',
                'template_id' => 2,
                'path' => '/',
                'is_active' => 1,
                'created_at' => '2021-10-06 20:47:36',
                'updated_at' => '2021-10-07 19:17:13',
            ),
            11 => 
            array (
                'id' => 15,
                'name' => 'suscription',
                'display_name' => 'Banner de Suscripción',
                'template_id' => 2,
                'path' => '/',
                'is_active' => 1,
                'created_at' => '2021-10-07 21:45:53',
                'updated_at' => '2021-10-12 18:49:35',
            ),
            12 => 
            array (
                'id' => 16,
                'name' => 'portfolio',
                'display_name' => 'Portafolio de Imagenes',
                'template_id' => 2,
                'path' => '/',
                'is_active' => 1,
                'created_at' => '2021-10-12 18:51:45',
                'updated_at' => '2021-10-12 21:02:00',
            ),
            13 => 
            array (
                'id' => 17,
                'name' => 'contact_footer',
                'display_name' => 'Pie de Contacto',
                'template_id' => 2,
                'path' => '/',
                'is_active' => 1,
                'created_at' => '2021-10-15 19:35:21',
                'updated_at' => '2021-10-18 04:59:55',
            ),
            14 => 
            array (
                'id' => 18,
                'name' => 'map',
                'display_name' => 'Mapa',
                'template_id' => 2,
                'path' => '/',
                'is_active' => 1,
                'created_at' => '2021-10-18 05:11:45',
                'updated_at' => '2021-10-18 05:11:45',
            ),
        ));
        
        
    }
}