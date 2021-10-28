<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class PermissionsTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('permissions')->delete();
        
        \DB::table('permissions')->insert(array (
            0 => 
            array (
                'id' => 1,
                'key' => 'browse_admin',
                'table_name' => NULL,
                'created_at' => '2021-07-24 06:01:56',
                'updated_at' => '2021-07-24 06:01:56',
            ),
            1 => 
            array (
                'id' => 2,
                'key' => 'browse_bread',
                'table_name' => NULL,
                'created_at' => '2021-07-24 06:01:56',
                'updated_at' => '2021-07-24 06:01:56',
            ),
            2 => 
            array (
                'id' => 3,
                'key' => 'browse_database',
                'table_name' => NULL,
                'created_at' => '2021-07-24 06:01:56',
                'updated_at' => '2021-07-24 06:01:56',
            ),
            3 => 
            array (
                'id' => 4,
                'key' => 'browse_media',
                'table_name' => NULL,
                'created_at' => '2021-07-24 06:01:56',
                'updated_at' => '2021-07-24 06:01:56',
            ),
            4 => 
            array (
                'id' => 5,
                'key' => 'browse_compass',
                'table_name' => NULL,
                'created_at' => '2021-07-24 06:01:56',
                'updated_at' => '2021-07-24 06:01:56',
            ),
            5 => 
            array (
                'id' => 6,
                'key' => 'browse_menus',
                'table_name' => 'menus',
                'created_at' => '2021-07-24 06:01:56',
                'updated_at' => '2021-07-24 06:01:56',
            ),
            6 => 
            array (
                'id' => 7,
                'key' => 'read_menus',
                'table_name' => 'menus',
                'created_at' => '2021-07-24 06:01:56',
                'updated_at' => '2021-07-24 06:01:56',
            ),
            7 => 
            array (
                'id' => 8,
                'key' => 'edit_menus',
                'table_name' => 'menus',
                'created_at' => '2021-07-24 06:01:56',
                'updated_at' => '2021-07-24 06:01:56',
            ),
            8 => 
            array (
                'id' => 9,
                'key' => 'add_menus',
                'table_name' => 'menus',
                'created_at' => '2021-07-24 06:01:56',
                'updated_at' => '2021-07-24 06:01:56',
            ),
            9 => 
            array (
                'id' => 10,
                'key' => 'delete_menus',
                'table_name' => 'menus',
                'created_at' => '2021-07-24 06:01:56',
                'updated_at' => '2021-07-24 06:01:56',
            ),
            10 => 
            array (
                'id' => 11,
                'key' => 'browse_roles',
                'table_name' => 'roles',
                'created_at' => '2021-07-24 06:01:56',
                'updated_at' => '2021-07-24 06:01:56',
            ),
            11 => 
            array (
                'id' => 12,
                'key' => 'read_roles',
                'table_name' => 'roles',
                'created_at' => '2021-07-24 06:01:56',
                'updated_at' => '2021-07-24 06:01:56',
            ),
            12 => 
            array (
                'id' => 13,
                'key' => 'edit_roles',
                'table_name' => 'roles',
                'created_at' => '2021-07-24 06:01:56',
                'updated_at' => '2021-07-24 06:01:56',
            ),
            13 => 
            array (
                'id' => 14,
                'key' => 'add_roles',
                'table_name' => 'roles',
                'created_at' => '2021-07-24 06:01:56',
                'updated_at' => '2021-07-24 06:01:56',
            ),
            14 => 
            array (
                'id' => 15,
                'key' => 'delete_roles',
                'table_name' => 'roles',
                'created_at' => '2021-07-24 06:01:56',
                'updated_at' => '2021-07-24 06:01:56',
            ),
            15 => 
            array (
                'id' => 16,
                'key' => 'browse_users',
                'table_name' => 'users',
                'created_at' => '2021-07-24 06:01:56',
                'updated_at' => '2021-07-24 06:01:56',
            ),
            16 => 
            array (
                'id' => 17,
                'key' => 'read_users',
                'table_name' => 'users',
                'created_at' => '2021-07-24 06:01:56',
                'updated_at' => '2021-07-24 06:01:56',
            ),
            17 => 
            array (
                'id' => 18,
                'key' => 'edit_users',
                'table_name' => 'users',
                'created_at' => '2021-07-24 06:01:56',
                'updated_at' => '2021-07-24 06:01:56',
            ),
            18 => 
            array (
                'id' => 19,
                'key' => 'add_users',
                'table_name' => 'users',
                'created_at' => '2021-07-24 06:01:56',
                'updated_at' => '2021-07-24 06:01:56',
            ),
            19 => 
            array (
                'id' => 20,
                'key' => 'delete_users',
                'table_name' => 'users',
                'created_at' => '2021-07-24 06:01:56',
                'updated_at' => '2021-07-24 06:01:56',
            ),
            20 => 
            array (
                'id' => 21,
                'key' => 'browse_settings',
                'table_name' => 'settings',
                'created_at' => '2021-07-24 06:01:56',
                'updated_at' => '2021-07-24 06:01:56',
            ),
            21 => 
            array (
                'id' => 22,
                'key' => 'read_settings',
                'table_name' => 'settings',
                'created_at' => '2021-07-24 06:01:56',
                'updated_at' => '2021-07-24 06:01:56',
            ),
            22 => 
            array (
                'id' => 23,
                'key' => 'edit_settings',
                'table_name' => 'settings',
                'created_at' => '2021-07-24 06:01:56',
                'updated_at' => '2021-07-24 06:01:56',
            ),
            23 => 
            array (
                'id' => 24,
                'key' => 'add_settings',
                'table_name' => 'settings',
                'created_at' => '2021-07-24 06:01:56',
                'updated_at' => '2021-07-24 06:01:56',
            ),
            24 => 
            array (
                'id' => 25,
                'key' => 'delete_settings',
                'table_name' => 'settings',
                'created_at' => '2021-07-24 06:01:56',
                'updated_at' => '2021-07-24 06:01:56',
            ),
            25 => 
            array (
                'id' => 26,
                'key' => 'browse_hooks',
                'table_name' => NULL,
                'created_at' => '2021-07-24 06:02:41',
                'updated_at' => '2021-07-24 06:02:41',
            ),
            26 => 
            array (
                'id' => 27,
                'key' => 'browse_templates',
                'table_name' => 'templates',
                'created_at' => '2021-07-27 00:18:06',
                'updated_at' => '2021-07-27 00:18:06',
            ),
            27 => 
            array (
                'id' => 28,
                'key' => 'read_templates',
                'table_name' => 'templates',
                'created_at' => '2021-07-27 00:18:06',
                'updated_at' => '2021-07-27 00:18:06',
            ),
            28 => 
            array (
                'id' => 29,
                'key' => 'edit_templates',
                'table_name' => 'templates',
                'created_at' => '2021-07-27 00:18:06',
                'updated_at' => '2021-07-27 00:18:06',
            ),
            29 => 
            array (
                'id' => 30,
                'key' => 'add_templates',
                'table_name' => 'templates',
                'created_at' => '2021-07-27 00:18:06',
                'updated_at' => '2021-07-27 00:18:06',
            ),
            30 => 
            array (
                'id' => 31,
                'key' => 'delete_templates',
                'table_name' => 'templates',
                'created_at' => '2021-07-27 00:18:06',
                'updated_at' => '2021-07-27 00:18:06',
            ),
            31 => 
            array (
                'id' => 32,
                'key' => 'browse_components',
                'table_name' => 'components',
                'created_at' => '2021-07-27 00:20:57',
                'updated_at' => '2021-07-27 00:20:57',
            ),
            32 => 
            array (
                'id' => 33,
                'key' => 'read_components',
                'table_name' => 'components',
                'created_at' => '2021-07-27 00:20:57',
                'updated_at' => '2021-07-27 00:20:57',
            ),
            33 => 
            array (
                'id' => 34,
                'key' => 'edit_components',
                'table_name' => 'components',
                'created_at' => '2021-07-27 00:20:57',
                'updated_at' => '2021-07-27 00:20:57',
            ),
            34 => 
            array (
                'id' => 35,
                'key' => 'add_components',
                'table_name' => 'components',
                'created_at' => '2021-07-27 00:20:57',
                'updated_at' => '2021-07-27 00:20:57',
            ),
            35 => 
            array (
                'id' => 36,
                'key' => 'delete_components',
                'table_name' => 'components',
                'created_at' => '2021-07-27 00:20:57',
                'updated_at' => '2021-07-27 00:20:57',
            ),
            36 => 
            array (
                'id' => 37,
                'key' => 'browse_items',
                'table_name' => 'items',
                'created_at' => '2021-07-27 00:28:41',
                'updated_at' => '2021-07-27 00:28:41',
            ),
            37 => 
            array (
                'id' => 38,
                'key' => 'read_items',
                'table_name' => 'items',
                'created_at' => '2021-07-27 00:28:41',
                'updated_at' => '2021-07-27 00:28:41',
            ),
            38 => 
            array (
                'id' => 39,
                'key' => 'edit_items',
                'table_name' => 'items',
                'created_at' => '2021-07-27 00:28:41',
                'updated_at' => '2021-07-27 00:28:41',
            ),
            39 => 
            array (
                'id' => 40,
                'key' => 'add_items',
                'table_name' => 'items',
                'created_at' => '2021-07-27 00:28:41',
                'updated_at' => '2021-07-27 00:28:41',
            ),
            40 => 
            array (
                'id' => 41,
                'key' => 'delete_items',
                'table_name' => 'items',
                'created_at' => '2021-07-27 00:28:41',
                'updated_at' => '2021-07-27 00:28:41',
            ),
            41 => 
            array (
                'id' => 42,
                'key' => 'browse_type_items',
                'table_name' => 'type_items',
                'created_at' => '2021-07-27 01:20:08',
                'updated_at' => '2021-07-27 01:20:08',
            ),
            42 => 
            array (
                'id' => 43,
                'key' => 'read_type_items',
                'table_name' => 'type_items',
                'created_at' => '2021-07-27 01:20:08',
                'updated_at' => '2021-07-27 01:20:08',
            ),
            43 => 
            array (
                'id' => 44,
                'key' => 'edit_type_items',
                'table_name' => 'type_items',
                'created_at' => '2021-07-27 01:20:08',
                'updated_at' => '2021-07-27 01:20:08',
            ),
            44 => 
            array (
                'id' => 45,
                'key' => 'add_type_items',
                'table_name' => 'type_items',
                'created_at' => '2021-07-27 01:20:08',
                'updated_at' => '2021-07-27 01:20:08',
            ),
            45 => 
            array (
                'id' => 46,
                'key' => 'delete_type_items',
                'table_name' => 'type_items',
                'created_at' => '2021-07-27 01:20:08',
                'updated_at' => '2021-07-27 01:20:08',
            ),
            46 => 
            array (
                'id' => 56,
                'key' => 'browse_requests',
                'table_name' => 'requests',
                'created_at' => '2021-08-05 03:27:07',
                'updated_at' => '2021-08-05 03:27:07',
            ),
            47 => 
            array (
                'id' => 57,
                'key' => 'read_requests',
                'table_name' => 'requests',
                'created_at' => '2021-08-05 03:27:07',
                'updated_at' => '2021-08-05 03:27:07',
            ),
            48 => 
            array (
                'id' => 58,
                'key' => 'edit_requests',
                'table_name' => 'requests',
                'created_at' => '2021-08-05 03:27:07',
                'updated_at' => '2021-08-05 03:27:07',
            ),
            49 => 
            array (
                'id' => 59,
                'key' => 'add_requests',
                'table_name' => 'requests',
                'created_at' => '2021-08-05 03:27:07',
                'updated_at' => '2021-08-05 03:27:07',
            ),
            50 => 
            array (
                'id' => 60,
                'key' => 'delete_requests',
                'table_name' => 'requests',
                'created_at' => '2021-08-05 03:27:07',
                'updated_at' => '2021-08-05 03:27:07',
            ),
            51 => 
            array (
                'id' => 61,
                'key' => 'browse_courses',
                'table_name' => 'courses',
                'created_at' => '2021-08-31 06:42:32',
                'updated_at' => '2021-08-31 06:42:32',
            ),
            52 => 
            array (
                'id' => 62,
                'key' => 'read_courses',
                'table_name' => 'courses',
                'created_at' => '2021-08-31 06:42:32',
                'updated_at' => '2021-08-31 06:42:32',
            ),
            53 => 
            array (
                'id' => 63,
                'key' => 'edit_courses',
                'table_name' => 'courses',
                'created_at' => '2021-08-31 06:42:32',
                'updated_at' => '2021-08-31 06:42:32',
            ),
            54 => 
            array (
                'id' => 64,
                'key' => 'add_courses',
                'table_name' => 'courses',
                'created_at' => '2021-08-31 06:42:32',
                'updated_at' => '2021-08-31 06:42:32',
            ),
            55 => 
            array (
                'id' => 65,
                'key' => 'delete_courses',
                'table_name' => 'courses',
                'created_at' => '2021-08-31 06:42:32',
                'updated_at' => '2021-08-31 06:42:32',
            ),
            56 => 
            array (
                'id' => 66,
                'key' => 'browse_students',
                'table_name' => 'students',
                'created_at' => '2021-08-31 06:45:30',
                'updated_at' => '2021-08-31 06:45:30',
            ),
            57 => 
            array (
                'id' => 67,
                'key' => 'read_students',
                'table_name' => 'students',
                'created_at' => '2021-08-31 06:45:30',
                'updated_at' => '2021-08-31 06:45:30',
            ),
            58 => 
            array (
                'id' => 68,
                'key' => 'edit_students',
                'table_name' => 'students',
                'created_at' => '2021-08-31 06:45:30',
                'updated_at' => '2021-08-31 06:45:30',
            ),
            59 => 
            array (
                'id' => 69,
                'key' => 'add_students',
                'table_name' => 'students',
                'created_at' => '2021-08-31 06:45:30',
                'updated_at' => '2021-08-31 06:45:30',
            ),
            60 => 
            array (
                'id' => 70,
                'key' => 'delete_students',
                'table_name' => 'students',
                'created_at' => '2021-08-31 06:45:30',
                'updated_at' => '2021-08-31 06:45:30',
            ),
        ));
        
        
    }
}