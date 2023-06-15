<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class University extends Model
{
    use HasFactory;

    //relacion 1 a 1
    public function address(){

        return $this->hasOne('App\Models\Address');

    }

    public function degrees(){

        return $this->hasMany('App\Models\Degree');

    }
}
