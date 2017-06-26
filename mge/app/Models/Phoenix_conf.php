<?php

namespace App\Models;

use App\Models\Phoenix;
use Illuminate\Notifications\Notifiable;
use Illuminate\Foundation\Auth\User as Authenticatable;

class Phoenix_conf extends Authenticatable
{
    protected $table = 'phoenix_config';
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


    public function phoenixes()
    {
        return $this->hasMany(Phoenix::class);
    }
}
