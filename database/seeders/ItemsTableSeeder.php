<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class ItemsTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('items')->delete();
        
        \DB::table('items')->insert(array (
            0 => 
            array (
                'id' => 1,
                'key' => 'phone-number',
                'value' => '951 672 28 55',
                'type_item_id' => 1,
                'created_at' => '2021-07-27 01:30:22',
                'updated_at' => '2021-07-27 01:30:22',
                'component_id' => 1,
            ),
            1 => 
            array (
                'id' => 2,
                'key' => 'phone-number',
                'value' => '951 672 28 36',
                'type_item_id' => 1,
                'created_at' => '2021-07-27 01:30:45',
                'updated_at' => '2021-07-27 01:30:45',
                'component_id' => 1,
            ),
            2 => 
            array (
                'id' => 3,
                'key' => 'phone-number',
                'value' => '951 178 50 92',
                'type_item_id' => 1,
                'created_at' => '2021-07-27 01:31:00',
                'updated_at' => '2021-07-27 01:31:00',
                'component_id' => 1,
            ),
            3 => 
            array (
                'id' => 4,
                'key' => 'email',
                'value' => 'adm1nsindicato.dm@gmail.com',
                'type_item_id' => 1,
                'created_at' => '2021-07-27 01:31:21',
                'updated_at' => '2021-07-27 01:31:21',
                'component_id' => 1,
            ),
            4 => 
            array (
                'id' => 5,
                'key' => 'email',
                'value' => 'adm1nsindicato.fa@gmail.com',
                'type_item_id' => 1,
                'created_at' => '2021-07-27 01:31:42',
                'updated_at' => '2021-07-27 01:31:42',
                'component_id' => 1,
            ),
            5 => 
            array (
                'id' => 6,
                'key' => 'logo',
                'value' => 'cediem_logo.png',
                'type_item_id' => 2,
                'created_at' => '2021-08-29 06:46:21',
                'updated_at' => '2021-08-29 06:46:21',
                'component_id' => 2,
            ),
            6 => 
            array (
                'id' => 7,
                'key' => 'logo',
                'value' => 'circular.png',
                'type_item_id' => 2,
                'created_at' => '2021-09-22 22:37:35',
                'updated_at' => '2021-09-22 22:44:51',
                'component_id' => 4,
            ),
            7 => 
            array (
                'id' => 8,
                'key' => 'title',
                'value' => 'Sindicato Articulo 123',
                'type_item_id' => 1,
                'created_at' => '2021-09-22 22:38:55',
                'updated_at' => '2021-09-22 22:45:06',
                'component_id' => 4,
            ),
            8 => 
            array (
                'id' => 13,
                'key' => 'trabajador',
                'value' => '{"name": "Fernando Aguilar Robles", "rol": "Secretario General"}',
                'type_item_id' => 3,
                'created_at' => '2021-09-27 21:53:15',
                'updated_at' => '2021-10-04 23:08:58',
                'component_id' => 6,
            ),
            9 => 
            array (
                'id' => 15,
                'key' => 'cliente',
                'value' => 'client-1.png',
                'type_item_id' => 2,
                'created_at' => '2021-09-29 21:27:17',
                'updated_at' => '2021-10-06 18:36:45',
                'component_id' => 8,
            ),
            10 => 
            array (
                'id' => 16,
                'key' => 'trabajador',
                'value' => '{"name": "Jorge Daniel Martínez Urbina", "rol": "Secretario de Actas y Conflictos"}',
                'type_item_id' => 3,
                'created_at' => '2021-10-04 20:21:38',
                'updated_at' => '2021-10-04 23:09:04',
                'component_id' => 6,
            ),
            11 => 
            array (
                'id' => 17,
                'key' => 'trabajador',
                'value' => '{"name": "Julio Miguel Rubinos Ricárdez", "rol": "Secretario de Organización"}',
                'type_item_id' => 3,
                'created_at' => '2021-10-04 23:13:10',
                'updated_at' => '2021-10-04 23:13:10',
                'component_id' => 6,
            ),
            12 => 
            array (
                'id' => 18,
                'key' => 'trabajador',
                'value' => '{"name":"Gustavo de Jesús Caballero Hernández","rol":"Secretario de Trabajo"}',
                'type_item_id' => 3,
                'created_at' => '2021-10-04 23:14:25',
                'updated_at' => '2021-10-04 23:14:25',
                'component_id' => 6,
            ),
            13 => 
            array (
                'id' => 19,
                'key' => 'trabajador',
                'value' => '{"name":"Fernando José Martínez Urbina","rol":"Secretario Tesorero"}',
                'type_item_id' => 3,
                'created_at' => '2021-10-04 23:15:39',
                'updated_at' => '2021-10-04 23:15:39',
                'component_id' => 6,
            ),
            14 => 
            array (
                'id' => 21,
                'key' => 'mision',
                'value' => '{"name":"Misión", "value":"Ser un sindicato de vanguardia cumpliendo con las exigencias de la modernidad social, así como ser reconocidos como una organización sindical consolidada en el ámbito nacional que luche por la mejora y defensa de los intereses laborales, económicos, profesionales y sociales de los agremiados."}',
                'type_item_id' => 3,
                'created_at' => '2021-10-04 23:28:35',
                'updated_at' => '2021-10-04 23:40:46',
                'component_id' => 9,
            ),
            15 => 
            array (
                'id' => 22,
                'key' => 'vision',
                'value' => '{"name":"Visión", "value":"Ser un sindicato de vanguardia cumpliendo con las exigencias de la modernidad social, así como ser reconocidos como una organización sindical consolidada en el ámbito nacional que luche por la mejora y defensa de los intereses laborales, económicos, profesionales y sociales de los agremiados."}',
                'type_item_id' => 3,
                'created_at' => '2021-10-04 23:40:25',
                'updated_at' => '2021-10-04 23:40:25',
                'component_id' => 9,
            ),
            16 => 
            array (
                'id' => 23,
                'key' => 'statutes',
                'value' => '{"name":"Estatutos", "value":"Ver Estatutos", "url":"#"}',
                'type_item_id' => 3,
                'created_at' => '2021-10-04 23:42:37',
                'updated_at' => '2021-10-06 02:27:47',
                'component_id' => 9,
            ),
            17 => 
            array (
                'id' => 24,
                'key' => 'title',
                'value' => 'SINDICATO  ART. 123',
                'type_item_id' => 1,
                'created_at' => '2021-10-06 02:15:08',
                'updated_at' => '2021-10-06 02:15:08',
                'component_id' => 10,
            ),
            18 => 
            array (
                'id' => 25,
                'key' => 'service',
                'value' => '{"name":"Lorem Ipsum", "data":"Voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi","icon":"bx bxl-dribbble"}',
                'type_item_id' => 3,
                'created_at' => '2021-10-06 17:46:46',
                'updated_at' => '2021-10-06 17:59:22',
                'component_id' => 11,
            ),
            19 => 
            array (
                'id' => 26,
                'key' => 'cliente',
                'value' => 'client-2.png',
                'type_item_id' => 2,
                'created_at' => '2021-10-06 18:37:11',
                'updated_at' => '2021-10-06 18:37:11',
                'component_id' => 8,
            ),
            20 => 
            array (
                'id' => 28,
                'key' => 'info',
                'value' => '{"title":"Organización Civil.", "subtitle":"Somos una organización:","description": "Que está en permanente lucha para el cambio de una sociedad incluyente, con la firme determinación de eliminar la explotación y la inequidad." , "image":"about.jpg", "points":["Vanguardista.", "Nacionalista.", "Mayoritaria de trabajadores y clases proletarias."]}',
                'type_item_id' => 3,
                'created_at' => '2021-10-06 19:35:12',
                'updated_at' => '2021-10-07 21:33:32',
                'component_id' => 12,
            ),
            21 => 
            array (
                'id' => 29,
                'key' => 'package',
                'value' => '{"title":"Free","price":"0","time":"month","url":"#" ,"features":["Aida dere","Nec feugiat nisl","Nulla at volutpat dola"]}',
                'type_item_id' => 3,
                'created_at' => '2021-10-06 20:56:10',
                'updated_at' => '2021-10-07 20:49:53',
                'component_id' => 14,
            ),
            22 => 
            array (
                'id' => 30,
                'key' => 'Title',
                'value' => 'Call To Action',
                'type_item_id' => 1,
                'created_at' => '2021-10-07 21:51:04',
                'updated_at' => '2021-10-07 21:51:04',
                'component_id' => 15,
            ),
            23 => 
            array (
                'id' => 31,
                'key' => 'image',
                'value' => 'cta-bg.jpg',
                'type_item_id' => 2,
                'created_at' => '2021-10-07 21:52:00',
                'updated_at' => '2021-10-07 21:52:00',
                'component_id' => 15,
            ),
            24 => 
            array (
                'id' => 32,
                'key' => 'description',
                'value' => 'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                'type_item_id' => 1,
                'created_at' => '2021-10-07 21:52:29',
                'updated_at' => '2021-10-07 21:52:29',
                'component_id' => 15,
            ),
            25 => 
            array (
                'id' => 33,
                'key' => 'button',
                'value' => '{"title":"CALL TO ACTION", "url":"#"}',
                'type_item_id' => 3,
                'created_at' => '2021-10-07 21:53:01',
                'updated_at' => '2021-10-08 19:51:30',
                'component_id' => 15,
            ),
            26 => 
            array (
                'id' => 36,
                'key' => 'app',
                'value' => '{"name":"App", "filter":"filter-app", "images":[{"image": "portfolio-1.jpg", "url": "portfolio-1.jpg", "title":"App 1", "description": "App"},{"image": "portfolio-3.jpg", "url": "portfolio-3.jpg", "title":"App 2", "description": "App"}]}',
                'type_item_id' => 3,
                'created_at' => '2021-10-12 19:25:15',
                'updated_at' => '2021-10-12 19:57:26',
                'component_id' => 16,
            ),
            27 => 
            array (
                'id' => 37,
                'key' => 'app',
                'value' => '{"name":"Web", "filter":"filter-web", "images":[{"image": "portfolio-2.jpg", "url": "portfolio-2.jpg", "title":"Web 1", "description": "Web"},{"image": "portfolio-5.jpg", "url": "portfolio-5.jpg", "title":"Web 2", "description": "Web"}]}',
                'type_item_id' => 3,
                'created_at' => '2021-10-13 18:48:56',
                'updated_at' => '2021-10-14 04:47:16',
                'component_id' => 16,
            ),
            28 => 
            array (
                'id' => 38,
                'key' => 'data',
                'value' => '{"address":"CALLE PRIVADA DE MONTE ALBÁN, NÚMERO EXTERIOR 3, INTERIOR 2. COLONIA REFORMA, OAXACA DE JUÁREZ, OAXACA. CP 68050.", "phones":["951 672 28 55","951 672 28 36", "951 178 50 92"], "mails":["adm1nsindicato.dm@gmail.com","adm1nsindicato.fa@gmail.com"]}',
                'type_item_id' => 3,
                'created_at' => '2021-10-15 22:13:35',
                'updated_at' => '2021-10-18 04:49:57',
                'component_id' => 17,
            ),
            29 => 
            array (
                'id' => 39,
                'key' => 'map',
                'value' => 'https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d1906.9195322500964!2d-96.718605!3d17.080523!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x85c72226472648a7%3A0xb7c77e75fb58627b!2sPriv.%20de%20Monte%20de%20Alb%C3%A1n%2C%20Reforma%2C%2068050%20Oaxaca%20de%20Ju%C3%A1rez%2C%20Oax.!5e0!3m2!1ses-419!2smx!4v1634533822015!5m2!1ses-419!2smx',
                'type_item_id' => 1,
                'created_at' => '2021-10-18 05:12:56',
                'updated_at' => '2021-10-18 05:12:56',
                'component_id' => 18,
            ),
        ));
        
        
    }
}