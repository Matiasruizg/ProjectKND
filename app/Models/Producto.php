<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;


class Producto extends Model
{
    protected $fillable = ['prod_nombre', 'prod_precio_un', 'prod_precio_co', 'prod_agregado', 'prod_imagen'];
}
