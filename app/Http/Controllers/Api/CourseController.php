<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Course;

class CourseController extends Controller
{
    public function index(Request $request){   
        try{
            $courses = Course::all();
            return \Response::json([
                'msg' => '',
                'data' => [
                    'courses' => $courses,
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
