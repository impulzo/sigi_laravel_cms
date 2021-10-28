<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class DataTypesTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('data_types')->delete();
        
        \DB::table('data_types')->insert(array (
            0 => 
            array (
                'id' => 1,
                'name' => 'users',
                'slug' => 'users',
                'display_name_singular' => 'User',
                'display_name_plural' => 'Users',
                'icon' => 'voyager-person',
                'model_name' => 'TCG\\Voyager\\Models\\User',
                'policy_name' => 'TCG\\Voyager\\Policies\\UserPolicy',
                'controller' => 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController',
                'description' => '',
                'generate_permissions' => 1,
                'server_side' => 0,
                'details' => NULL,
                'created_at' => '2021-07-24 06:01:56',
                'updated_at' => '2021-07-24 06:01:56',
            ),
            1 => 
            array (
                'id' => 2,
                'name' => 'menus',
                'slug' => 'menus',
                'display_name_singular' => 'Menu',
                'display_name_plural' => 'Menus',
                'icon' => 'voyager-list',
                'model_name' => 'TCG\\Voyager\\Models\\Menu',
                'policy_name' => NULL,
                'controller' => '',
                'description' => '',
                'generate_permissions' => 1,
                'server_side' => 0,
                'details' => NULL,
                'created_at' => '2021-07-24 06:01:56',
                'updated_at' => '2021-07-24 06:01:56',
            ),
            2 => 
            array (
                'id' => 3,
                'name' => 'roles',
                'slug' => 'roles',
                'display_name_singular' => 'Role',
                'display_name_plural' => 'Roles',
                'icon' => 'voyager-lock',
                'model_name' => 'TCG\\Voyager\\Models\\Role',
                'policy_name' => NULL,
                'controller' => 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController',
                'description' => '',
                'generate_permissions' => 1,
                'server_side' => 0,
                'details' => NULL,
                'created_at' => '2021-07-24 06:01:56',
                'updated_at' => '2021-07-24 06:01:56',
            ),
            3 => 
            array (
                'id' => 4,
                'name' => 'templates',
                'slug' => 'templates',
                'display_name_singular' => 'Plantilla',
                'display_name_plural' => 'Plantillas',
                'icon' => 'voyager-documentation',
                'model_name' => 'App\\Models\\Template',
                'policy_name' => NULL,
                'controller' => NULL,
                'description' => NULL,
                'generate_permissions' => 1,
                'server_side' => 0,
                'details' => '{"order_column":null,"order_display_column":null,"order_direction":"asc","default_search_key":null,"scope":null}',
                'created_at' => '2021-07-27 00:18:06',
                'updated_at' => '2021-09-20 21:42:13',
            ),
            4 => 
            array (
                'id' => 5,
                'name' => 'components',
                'slug' => 'components',
                'display_name_singular' => 'Sección',
                'display_name_plural' => 'Secciones',
                'icon' => 'voyager-puzzle',
                'model_name' => 'App\\Models\\Component',
                'policy_name' => NULL,
                'controller' => NULL,
                'description' => NULL,
                'generate_permissions' => 1,
                'server_side' => 0,
                'details' => '{"order_column":null,"order_display_column":null,"order_direction":"asc","default_search_key":null,"scope":null}',
                'created_at' => '2021-07-27 00:20:57',
                'updated_at' => '2021-08-05 03:19:00',
            ),
            5 => 
            array (
                'id' => 7,
                'name' => 'items',
                'slug' => 'items',
                'display_name_singular' => 'Item',
                'display_name_plural' => 'Items',
                'icon' => 'voyager-params',
                'model_name' => 'App\\Models\\Item',
                'policy_name' => NULL,
                'controller' => NULL,
                'description' => NULL,
                'generate_permissions' => 1,
                'server_side' => 0,
                'details' => '{"order_column":null,"order_display_column":null,"order_direction":"asc","default_search_key":null,"scope":null}',
                'created_at' => '2021-07-27 00:28:41',
                'updated_at' => '2021-07-27 01:29:04',
            ),
            6 => 
            array (
                'id' => 8,
                'name' => 'type_items',
                'slug' => 'type-items',
                'display_name_singular' => 'tipo de item',
                'display_name_plural' => 'tipos de items',
                'icon' => 'voyager-tag',
                'model_name' => 'App\\Models\\TypeItem',
                'policy_name' => NULL,
                'controller' => NULL,
                'description' => NULL,
                'generate_permissions' => 1,
                'server_side' => 0,
                'details' => '{"order_column":null,"order_display_column":null,"order_direction":"asc","default_search_key":null,"scope":null}',
                'created_at' => '2021-07-27 01:20:08',
                'updated_at' => '2021-07-27 01:25:59',
            ),
            7 => 
            array (
                'id' => 21,
                'name' => 'requests',
                'slug' => 'requests',
                'display_name_singular' => 'Solicitud',
                'display_name_plural' => 'Solicitudes',
                'icon' => 'voyager-paper-plane',
                'model_name' => 'App\\Models\\Request',
                'policy_name' => NULL,
                'controller' => NULL,
                'description' => NULL,
                'generate_permissions' => 1,
                'server_side' => 0,
                'details' => '{"order_column":null,"order_display_column":null,"order_direction":"asc","default_search_key":null}',
                'created_at' => '2021-08-05 03:27:07',
                'updated_at' => '2021-08-05 03:27:07',
            ),
            8 => 
            array (
                'id' => 23,
                'name' => 'courses',
                'slug' => 'courses',
                'display_name_singular' => 'Curso',
                'display_name_plural' => 'Cursos',
                'icon' => 'voyager-window-list',
                'model_name' => 'App\\Models\\Course',
                'policy_name' => NULL,
                'controller' => NULL,
                'description' => NULL,
                'generate_permissions' => 1,
                'server_side' => 0,
                'details' => '{"order_column":null,"order_display_column":null,"order_direction":"asc","default_search_key":null,"scope":null}',
                'created_at' => '2021-08-31 06:42:32',
                'updated_at' => '2021-08-31 06:52:52',
            ),
            9 => 
            array (
                'id' => 25,
                'name' => 'students',
                'slug' => 'students',
                'display_name_singular' => 'Estudiante',
                'display_name_plural' => 'Estudiantes',
                'icon' => 'voyager-people',
                'model_name' => 'App\\Models\\Student',
                'policy_name' => NULL,
                'controller' => NULL,
                'description' => NULL,
                'generate_permissions' => 1,
                'server_side' => 0,
                'details' => '{"order_column":null,"order_display_column":null,"order_direction":"asc","default_search_key":null,"scope":null}',
                'created_at' => '2021-08-31 06:45:30',
                'updated_at' => '2021-08-31 06:58:41',
            ),
        ));
        
        
    }
}