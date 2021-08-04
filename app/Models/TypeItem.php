<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class TypeItem extends Model
{
    use HasFactory;

    protected $hidden = ['created_at','updated_at'];
    
    public function Items(){
        return $this->hasMany(Item::class);
    }
}
