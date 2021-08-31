<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Student extends Model
{
    use HasFactory;
    protected $fillable = ['email','full_name','age','municipality','cell_phone','course_id'];
    protected $hidden = ['created_at','updated_at'];

    public function course(){
        return $this->belongsTo(Course::class);
    }
}
