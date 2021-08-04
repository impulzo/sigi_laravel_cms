<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Template;

class TemplateController extends Controller
{
    public function show_for_name(Request $request, $name){
        try{
            $template = Template::where('name','=',$name)->first();
            $template->components;
            return \Response::json([
                'msg' => '',
                'data' => [
                    'template' => $template,
                ],
                'status' => 200
            ]);
        }catch(\Exception $e){
            return \Response::json([
                'msg' => $e->getMessage(),
                'data' => null,
                'status' => 500
            ]);
        }
    }
}
