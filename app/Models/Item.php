<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Item extends Model
{
    use HasFactory;

    protected $with = ['typeItem'];

    protected $hidden = ['created_at','updated_at'];

    public function component(){
        return $this->belongsTo(Component::class);
    }
    public function typeItem(){
        return $this->belongsTo(TypeItem::class);
    }
}
