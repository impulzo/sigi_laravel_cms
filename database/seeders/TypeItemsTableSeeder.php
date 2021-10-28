<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class TypeItemsTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('type_items')->delete();
        
        \DB::table('type_items')->insert(array (
            0 => 
            array (
                'id' => 1,
                'name' => 'text',
                'created_at' => '2021-07-27 01:29:26',
                'updated_at' => '2021-07-27 01:29:34',
            ),
            1 => 
            array (
                'id' => 2,
                'name' => 'image',
                'created_at' => '2021-07-27 01:29:45',
                'updated_at' => '2021-07-27 01:29:45',
            ),
            2 => 
            array (
                'id' => 3,
                'name' => 'json',
                'created_at' => '2021-09-27 21:47:57',
                'updated_at' => '2021-09-27 21:47:57',
            ),
        ));
        
        
    }
}