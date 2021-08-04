<?php

namespace App\Http\Controllers\Api;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Component;

class ComponentController extends Controller
{
    public function show(Request $request, $id){   
        try{
            $component = Component::find($id);
            $component->items;
            return \Response::json([
                'msg' => '',
                'data' => [
                    'component' => $component,
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
