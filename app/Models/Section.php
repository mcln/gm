<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Section extends Model
{
    use HasFactory;

    public function items(){

        return $this->hasMany('App\Models\Item');

    }

    //relacion 1 a muchos
    public function chapter(){

        return $this->belongsTo('App\Models\Chapter');

    }
}
