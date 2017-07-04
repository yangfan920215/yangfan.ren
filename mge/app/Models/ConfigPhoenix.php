<?php

namespace App\Models;

use App\Models\ConfigState;
use Illuminate\Notifications\Notifiable;
use Illuminate\Foundation\Auth\User as Authenticatable;

class ConfigPhoenix extends Authenticatable
{
    protected $table = 'config_phoenix';
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


    // 必须是表名
    public function config_state()
    {
        return $this->belongsTo(ConfigState::class, 'state_id');
    }
}
