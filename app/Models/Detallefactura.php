<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;


class Detallefactura extends Model
{
    protected $fillable = ['fac_id', 'df_tipo', 'df_item_id', 'df_total', 'df_cantidad', 'df_precio'];
}
