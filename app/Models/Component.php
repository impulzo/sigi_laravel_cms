<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Component extends Model
{
    use HasFactory;

    //protected $with = ['items'];

    protected $hidden = ['created_at','updated_at'];

    public function items(){
       return $this->hasMany(Item::class);
    }

    public function template(){
        return $this->belongsTo(Template::class);
    }
}
