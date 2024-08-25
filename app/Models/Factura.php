<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;


class Factura extends Model
{
    protected $fillable = ['fac_fecha', 'cli_id', 'fac_total', 'fac_iva', 'mp_id', 'fac_status'];
}
