<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Component;
use App\Models\Template;

class ComponentsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {

        Component::create([
           'name' => 'contact',
           'display_name'=> 'Menú Contacto',
           'template_id' => Template::where('name','=','legal')->first()->id,
           'path' => '/Templates/PageDay/Components/ContactMenu.vue',
           'is_active' => true

        ]);
    }
}
