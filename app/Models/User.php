<?php

namespace App\Models;

use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Laravel\Fortify\TwoFactorAuthenticatable;
use Laravel\Jetstream\HasProfilePhoto;
use Laravel\Sanctum\HasApiTokens;

class User extends Authenticatable
{
    use HasApiTokens;
    use HasFactory;
    use HasProfilePhoto;
    use Notifiable;
    use TwoFactorAuthenticatable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array<int, string>
     */
    protected $fillable = [
        'name',
        'email',
        'password',
    ];

    /**
     * The attributes that should be hidden for serialization.
     *
     * @var array<int, string>
     */
    protected $hidden = [
        'password',
        'remember_token',
        'two_factor_recovery_codes',
        'two_factor_secret',
    ];

    /**
     * The attributes that should be cast.
     *
     * @var array<string, string>
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
    ];

    /**
     * The accessors to append to the model's array form.
     *
     * @var array<int, string>
     */
    protected $appends = [
        'profile_photo_url',
    ];

    //relacion 1 a 1
    public function address(){

        //$address = Address::where('user_id', $this->id)->first(); es lo mismo que lo escrito abajo
        return $this->hasOne('App\Models\Address');

    }

    //relacion 1 a muchos
    public function exercise_comments(){

        return $this->hasMany('App\Models\Exercise_comment');

    }

    //relacion 1 a muchos
    public function exercise_users(){

        return $this->hasMany('App\Models\Exercise_user');

    }

    //relacion 1 a muchos
    public function exercise_likes(){

        return $this->hasMany('App\Models\Exercise_like');

    }

    //relacion 1 a muchos
    public function exercise_reports(){

        return $this->hasMany('App\Models\Exercise_report');

    }

    //relacion 1 a muchos
    public function exercise_visualizations(){

        return $this->hasMany('App\Models\Exercise_visualization');

    }

    //relacion 1 a muchos
    public function payments(){

        return $this->hasMany('App\Models\Payment');

    }

    public function users_subjects(){

        return $this->hasMany('App\Models\User_subject');

    }

    //relacion 1 a 1
    public function role(){

        return $this->hasOne('App\Models\Role');

    }

    //relacion 1 a 1
    public function type_user(){

        return $this->hasOne('App\Models\Type_user');

    }

    //relacion 1 a muchos
    public function exercise_user_durations(){

        return $this->hasMany('App\Models\Exercise_user_duration');

    }

    //METODO PARA ADMINLTE
    public function adminlte_desc(){
        return "Administrador";
    }

    public function adminlte_profile_url(){
        return 'user/profile';
    }
}
