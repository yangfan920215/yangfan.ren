<?php

namespace App\Models;

use App\Models\Phoenix_conf;
use Illuminate\Notifications\Notifiable;
use Illuminate\Foundation\Auth\User as Authenticatable;

class Phoenix extends Authenticatable
{
    protected $table = 'phoenixes';
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

    public function phoenix_conf()
    {
        return $this->belongsTo(Phoenix_conf::class, 'type');
    }
}
