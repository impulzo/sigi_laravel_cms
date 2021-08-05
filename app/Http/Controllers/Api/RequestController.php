<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Request as RequestModel;

class RequestController extends Controller
{
    public function storage(Request $request){
        //dd($request->all());
        try{
            $model = RequestModel::create($request->all());
            return \Response::json([
                'msg' => 'Solicitud guardada con éxito.',
                'date' => $model,
                'status' => 200
            ]);

        }catch(\Exception $e){
            return \Response::json([
                'msg' => $e->getMessage(),
                'date' => null,
                'status' => 500
            ]);
        }
    }
}
