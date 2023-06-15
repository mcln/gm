<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Subject extends Model
{
    use HasFactory;

    public function degree(){

        return $this->belongsTo('App\Models\Degree');
    }

    public function user_subjects(){

        return $this->hasMany('App\Models\User_subject');

    }
}
