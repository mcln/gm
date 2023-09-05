<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class User_detail extends Model
{
  use HasFactory;

  protected $fillable = [
    'user_id',
    'degree',
    'university',
    'country_residence',
    'about',
    'specialty',
    'masters_diplomas',
    'experience',
  ];

  public function user()
  {
    return $this->belongsTo(User::class);
  }
}
