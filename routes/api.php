<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

use App\Http\Controllers\Api\BodegaController;
use App\Http\Controllers\Api\CategoriaController;
use App\Http\Controllers\Api\ClienteController;
use App\Http\Controllers\Api\ComboController;
use App\Http\Controllers\Api\DetallecomboController;
use App\Http\Controllers\Api\DetallefacturaController;
use App\Http\Controllers\Api\FacturaController;
use App\Http\Controllers\Api\MetodopagoController;
use App\Http\Controllers\Api\ProductoController;
use App\Http\Controllers\Api\SucursaleController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

Route::prefix('bodegas')->group(function () {
    Route::get('/', [BodegaController::class, 'index']);
    Route::post('/', [BodegaController::class, 'store']);
    Route::get('/{bodega}', [BodegaController::class, 'show']);
    Route::put('/{bodega}', [BodegaController::class, 'update']);
    Route::delete('/{bodega}', [BodegaController::class, 'destroy']);
});
Route::prefix('categorias')->group(function () {
    Route::get('/', [CategoriaController::class, 'index']);
    Route::post('/', [CategoriaController::class, 'store']);
    Route::get('/{categoria}', [CategoriaController::class, 'show']);
    Route::put('/{categoria}', [CategoriaController::class, 'update']);
    Route::delete('/{categoria}', [CategoriaController::class, 'destroy']);
});
Route::get('/clientes', [ClienteController::class, 'index']);
Route::prefix('combos')->group(function () {
    Route::get('/', [ComboController::class, 'index']);
    Route::post('/', [ComboController::class, 'store']);
    Route::get('/{combo}', [ComboController::class, 'show']);
    Route::put('/{combo}', [ComboController::class, 'update']);
    Route::delete('/{combo}', [ComboController::class, 'destroy']);
});
Route::prefix('detallecombos')->group(function () {
    Route::get('/', [DetallecomboController::class, 'index']);
    Route::post('/', [DetallecomboController::class, 'store']);
    Route::get('/{detallecombo}', [DetallecomboController::class, 'show']);
    Route::put('/{detallecombo}', [DetallecomboController::class, 'update']);
    Route::delete('/{detallecombo}', [DetallecomboController::class, 'destroy']);
});
Route::prefix('detallefacturas')->group(function () {
    Route::get('/', [DetallefacturaController::class, 'index']);
    Route::post('/', [DetallefacturaController::class, 'store']);
    Route::get('/{detallefactura}', [DetallefacturaController::class, 'show']);
    Route::put('/{detallefactura}', [DetallefacturaController::class, 'update']);
    Route::delete('/{detallefactura}', [DetallefacturaController::class, 'destroy']);
});
Route::prefix('facturas')->group(function () {
    Route::get('/', [FacturaController::class, 'index']);
    Route::post('/', [FacturaController::class, 'store']);
    Route::get('/{factura}', [FacturaController::class, 'show']);
    Route::put('/{factura}', [FacturaController::class, 'update']);
    Route::delete('/{factura}', [FacturaController::class, 'destroy']);
});
Route::prefix('metodospago')->group(function () {
    Route::get('/', [MetodopagoController::class, 'index']);
    Route::post('/', [MetodopagoController::class, 'store']);
    Route::get('/{metodopago}', [MetodopagoController::class, 'show']);
    Route::put('/{metodopago}', [MetodopagoController::class, 'update']);
    Route::delete('/{metodopago}', [MetodopagoController::class, 'destroy']);
});
Route::prefix('productos')->group(function () {
    Route::get('/', [ProductoController::class, 'index']);
    Route::post('/', [ProductoController::class, 'store']);
    Route::get('/{producto}', [ProductoController::class, 'show']);
    Route::put('/{producto}', [ProductoController::class, 'update']);
    Route::delete('/{producto}', [ProductoController::class, 'destroy']);
});
Route::prefix('sucursales')->group(function () {
    Route::get('/', [SucursaleController::class, 'index']);
    Route::post('/', [SucursaleController::class, 'store']);
    Route::get('/{sucursale}', [SucursaleController::class, 'show']);
    Route::put('/{sucursale}', [SucursaleController::class, 'update']);
    Route::delete('/{sucursale}', [SucursaleController::class, 'destroy']);
}); 
