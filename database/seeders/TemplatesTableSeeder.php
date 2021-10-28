<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class TemplatesTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('templates')->delete();
        
        \DB::table('templates')->insert(array (
            0 => 
            array (
                'id' => 2,
                'name' => 'legal',
                'display_name' => 'Presentación Formal',
                'is_active' => 1,
                'created_at' => '2021-07-24 06:04:25',
                'updated_at' => '2021-09-20 19:48:03',
            ),
            1 => 
            array (
                'id' => 4,
                'name' => 'coorporation',
                'display_name' => 'Página Coorporativa',
                'is_active' => 1,
                'created_at' => '2021-08-29 05:42:00',
                'updated_at' => '2021-08-29 06:18:44',
            ),
        ));
        
        
    }
}