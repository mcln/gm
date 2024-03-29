<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Address extends Model
{
    use HasFactory;

    public function user(){

        return $this->belongsTo('App\Models\User');
    }

    public function commune(){

        return $this->belongsTo('App\Models\Commune');
    }

    public function university(){

        return $this->belongsTo('App\Models\University');
    }
}
