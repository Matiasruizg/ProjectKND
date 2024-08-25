<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;


class Sucursale extends Model
{
    protected $fillable = ['nombre', 'direccion', 'suc_status'];
}
