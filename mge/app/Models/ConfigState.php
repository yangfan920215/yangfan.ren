<?php

namespace App\Models;

use App\Models\ConfigPhoenix;
use Illuminate\Notifications\Notifiable;
use Illuminate\Foundation\Auth\User as Authenticatable;

class ConfigState extends Authenticatable
{
    protected $table = 'config_state';
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


    public function config_phoenix()
    {
        return $this->hasMany(ConfigPhoenix::class);
    }
}
