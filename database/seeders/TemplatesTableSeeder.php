<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Template;

class TemplatesTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //Legal
        Template::create([
            'name' => 'legal',
            'display_name' => 'Presentación Formal',
            'is_active' => true
        ]);
    }
}
