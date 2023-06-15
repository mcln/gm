<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Chapter extends Model
{
    use HasFactory;

    public function sections(){

        return $this->hasMany('App\Models\Section');

    }

    //relacion 1 a muchos
    public function sector(){

        return $this->belongsTo('App\Models\Sector');

    }
}
