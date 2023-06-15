<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Item extends Model
{
    use HasFactory;

    //relacion 1 a 1
    public function section(){

        return $this->belongsTo('App\Models\Section');

    }

    public function exercises(){

        return $this->hasMany('App\Models\Exercise');

    }
}
