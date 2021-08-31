<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Student;
class StudentController extends Controller
{
    public function storage(Request $request){
        try{
            $model = Student::create($request->all());
            return \Response::json([
                'msg' => 'Has sido registrado en el curso.',
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
