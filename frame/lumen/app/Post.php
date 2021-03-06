<?php
/**
 * Created by PhpStorm.
 * User: yangfan
 * Date: 2017/6/10
 * Time: 23:01
 */
namespace App;

use Illuminate\Auth\Authenticatable;
use Laravel\Lumen\Auth\Authorizable;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Contracts\Auth\Authenticatable as AuthenticatableContract;
use Illuminate\Contracts\Auth\Access\Authorizable as AuthorizableContract;

class Post extends Model implements AuthenticatableContract, AuthorizableContract
{
    use Authenticatable, Authorizable;
    protected $fillable = ['id', 'user_id', 'title', 'content'];
    protected $hidden   = ['created_at', 'updated_at'];

    public function comments(){
        return $this->hasMany('App\Comment');
    }

    public function up()
    {
        Schema::create('posts', function (Blueprint $table) {
            $table->increments('id');
            $table->string('title');
            $table->string('content');
            $table->integer('user_id')->unsigned();
            $table->foreign('user_id')->references('id')->on('users')->onDelete('cascade')->onUpdate('cascade');
            $table->nullableTimestamps();
        });
    }
}