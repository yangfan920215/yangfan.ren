<?php

namespace App\Models;

use App\Models\Phoenixs;
use Illuminate\Notifications\Notifiable;
use Illuminate\Foundation\Auth\User as Authenticatable;

class Confphoenix extends Authenticatable
{
    protected $table = 'conf_phoenix';
    use Notifiable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name', 'email', 'password',
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'remember_token',
    ];


    public function phoenixs()
    {
        return $this->hasMany(Phoenixs::class);
    }
}
