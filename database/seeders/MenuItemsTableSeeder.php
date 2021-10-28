<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class MenuItemsTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('menu_items')->delete();
        
        \DB::table('menu_items')->insert(array (
            0 => 
            array (
                'id' => 1,
                'menu_id' => 1,
                'title' => 'Dashboard',
                'url' => '',
                'target' => '_self',
                'icon_class' => 'voyager-boat',
                'color' => NULL,
                'parent_id' => NULL,
                'order' => 1,
                'created_at' => '2021-07-24 06:01:56',
                'updated_at' => '2021-07-24 06:01:56',
                'route' => 'voyager.dashboard',
                'parameters' => NULL,
            ),
            1 => 
            array (
                'id' => 2,
                'menu_id' => 1,
                'title' => 'Media',
                'url' => '',
                'target' => '_self',
                'icon_class' => 'voyager-images',
                'color' => NULL,
                'parent_id' => NULL,
                'order' => 5,
                'created_at' => '2021-07-24 06:01:56',
                'updated_at' => '2021-07-24 06:01:56',
                'route' => 'voyager.media.index',
                'parameters' => NULL,
            ),
            2 => 
            array (
                'id' => 3,
                'menu_id' => 1,
                'title' => 'Users',
                'url' => '',
                'target' => '_self',
                'icon_class' => 'voyager-person',
                'color' => NULL,
                'parent_id' => NULL,
                'order' => 3,
                'created_at' => '2021-07-24 06:01:56',
                'updated_at' => '2021-07-24 06:01:56',
                'route' => 'voyager.users.index',
                'parameters' => NULL,
            ),
            3 => 
            array (
                'id' => 4,
                'menu_id' => 1,
                'title' => 'Roles',
                'url' => '',
                'target' => '_self',
                'icon_class' => 'voyager-lock',
                'color' => NULL,
                'parent_id' => NULL,
                'order' => 2,
                'created_at' => '2021-07-24 06:01:56',
                'updated_at' => '2021-07-24 06:01:56',
                'route' => 'voyager.roles.index',
                'parameters' => NULL,
            ),
            4 => 
            array (
                'id' => 5,
                'menu_id' => 1,
                'title' => 'Tools',
                'url' => '',
                'target' => '_self',
                'icon_class' => 'voyager-tools',
                'color' => NULL,
                'parent_id' => NULL,
                'order' => 9,
                'created_at' => '2021-07-24 06:01:56',
                'updated_at' => '2021-07-24 06:01:56',
                'route' => NULL,
                'parameters' => NULL,
            ),
            5 => 
            array (
                'id' => 6,
                'menu_id' => 1,
                'title' => 'Menu Builder',
                'url' => '',
                'target' => '_self',
                'icon_class' => 'voyager-list',
                'color' => NULL,
                'parent_id' => 5,
                'order' => 10,
                'created_at' => '2021-07-24 06:01:56',
                'updated_at' => '2021-07-24 06:01:56',
                'route' => 'voyager.menus.index',
                'parameters' => NULL,
            ),
            6 => 
            array (
                'id' => 7,
                'menu_id' => 1,
                'title' => 'Database',
                'url' => '',
                'target' => '_self',
                'icon_class' => 'voyager-data',
                'color' => NULL,
                'parent_id' => 5,
                'order' => 11,
                'created_at' => '2021-07-24 06:01:56',
                'updated_at' => '2021-07-24 06:01:56',
                'route' => 'voyager.database.index',
                'parameters' => NULL,
            ),
            7 => 
            array (
                'id' => 8,
                'menu_id' => 1,
                'title' => 'Compass',
                'url' => '',
                'target' => '_self',
                'icon_class' => 'voyager-compass',
                'color' => NULL,
                'parent_id' => 5,
                'order' => 12,
                'created_at' => '2021-07-24 06:01:56',
                'updated_at' => '2021-07-24 06:01:56',
                'route' => 'voyager.compass.index',
                'parameters' => NULL,
            ),
            8 => 
            array (
                'id' => 9,
                'menu_id' => 1,
                'title' => 'BREAD',
                'url' => '',
                'target' => '_self',
                'icon_class' => 'voyager-bread',
                'color' => NULL,
                'parent_id' => 5,
                'order' => 13,
                'created_at' => '2021-07-24 06:01:56',
                'updated_at' => '2021-07-24 06:01:56',
                'route' => 'voyager.bread.index',
                'parameters' => NULL,
            ),
            9 => 
            array (
                'id' => 10,
                'menu_id' => 1,
                'title' => 'Settings',
                'url' => '',
                'target' => '_self',
                'icon_class' => 'voyager-settings',
                'color' => NULL,
                'parent_id' => NULL,
                'order' => 14,
                'created_at' => '2021-07-24 06:01:56',
                'updated_at' => '2021-07-24 06:01:56',
                'route' => 'voyager.settings.index',
                'parameters' => NULL,
            ),
            10 => 
            array (
                'id' => 11,
                'menu_id' => 1,
                'title' => 'Hooks',
                'url' => '',
                'target' => '_self',
                'icon_class' => 'voyager-hook',
                'color' => NULL,
                'parent_id' => 5,
                'order' => 13,
                'created_at' => '2021-07-24 06:02:41',
                'updated_at' => '2021-07-24 06:02:41',
                'route' => 'voyager.hooks',
                'parameters' => NULL,
            ),
            11 => 
            array (
                'id' => 12,
                'menu_id' => 1,
                'title' => 'Plantillas',
                'url' => '',
                'target' => '_self',
                'icon_class' => 'voyager-documentation',
                'color' => NULL,
                'parent_id' => NULL,
                'order' => 15,
                'created_at' => '2021-07-27 00:18:06',
                'updated_at' => '2021-07-27 00:18:06',
                'route' => 'voyager.templates.index',
                'parameters' => NULL,
            ),
            12 => 
            array (
                'id' => 13,
                'menu_id' => 1,
                'title' => 'Secciones',
                'url' => '',
                'target' => '_self',
                'icon_class' => 'voyager-puzzle',
                'color' => NULL,
                'parent_id' => NULL,
                'order' => 16,
                'created_at' => '2021-07-27 00:20:57',
                'updated_at' => '2021-07-27 00:20:57',
                'route' => 'voyager.components.index',
                'parameters' => NULL,
            ),
            13 => 
            array (
                'id' => 14,
                'menu_id' => 1,
                'title' => 'Items',
                'url' => '',
                'target' => '_self',
                'icon_class' => 'voyager-params',
                'color' => NULL,
                'parent_id' => NULL,
                'order' => 17,
                'created_at' => '2021-07-27 00:28:41',
                'updated_at' => '2021-07-27 00:28:41',
                'route' => 'voyager.items.index',
                'parameters' => NULL,
            ),
            14 => 
            array (
                'id' => 15,
                'menu_id' => 1,
                'title' => 'tipos de items',
                'url' => '',
                'target' => '_self',
                'icon_class' => 'voyager-tag',
                'color' => NULL,
                'parent_id' => NULL,
                'order' => 18,
                'created_at' => '2021-07-27 01:20:08',
                'updated_at' => '2021-07-27 01:20:08',
                'route' => 'voyager.type-items.index',
                'parameters' => NULL,
            ),
            15 => 
            array (
                'id' => 19,
                'menu_id' => 1,
                'title' => 'Solicitudes',
                'url' => '',
                'target' => '_self',
                'icon_class' => 'voyager-paper-plane',
                'color' => NULL,
                'parent_id' => NULL,
                'order' => 19,
                'created_at' => '2021-08-05 03:27:07',
                'updated_at' => '2021-08-05 03:27:07',
                'route' => 'voyager.requests.index',
                'parameters' => NULL,
            ),
            16 => 
            array (
                'id' => 20,
                'menu_id' => 1,
                'title' => 'Cursos',
                'url' => '',
                'target' => '_self',
                'icon_class' => 'voyager-window-list',
                'color' => '#000000',
                'parent_id' => NULL,
                'order' => 20,
                'created_at' => '2021-08-31 06:42:32',
                'updated_at' => '2021-08-31 06:57:27',
                'route' => 'voyager.courses.index',
                'parameters' => 'null',
            ),
            17 => 
            array (
                'id' => 21,
                'menu_id' => 1,
                'title' => 'Estudiantes',
                'url' => '',
                'target' => '_self',
                'icon_class' => 'voyager-people',
                'color' => '#000000',
                'parent_id' => NULL,
                'order' => 21,
                'created_at' => '2021-08-31 06:45:30',
                'updated_at' => '2021-08-31 06:57:12',
                'route' => 'voyager.students.index',
                'parameters' => 'null',
            ),
        ));
        
        
    }
}