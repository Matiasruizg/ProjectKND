<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;


class Combo extends Model
{
    protected $fillable = ['com_nombre', 'com_descripcion', 'com_imagen', 'com_precio', 'cat_id'];
}
