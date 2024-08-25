<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;


class Bodega extends Model
{
    protected $fillable = ['prod_id', 'prod_stock', 'suc_id'];
}
