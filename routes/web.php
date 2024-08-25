<?php

use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Auth; // Asegúrate de importar Auth

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

// Redirige la raíz de la aplicación a /admin/login
Route::get('/', function () {
    return redirect('/admin/login');
});

// Ruta para la página de login del administrador
Route::get('/admin/login', function () {
    return view('admin.login');
})->name('admin.login');

Route::post('/admin/login', function (\Illuminate\Http\Request $request) {
    $credentials = $request->only('email', 'password');

    if (Auth::attempt($credentials)) {  // Usar Auth para el intento de autenticación
        return redirect()->intended('/admin');
    }

    return redirect()->back()->withErrors([
        'email' => 'Las credenciales no coinciden con nuestros registros.',
    ]);
})->middleware('throttle.login')->name('admin.login.post');

Route::middleware([
    'auth:sanctum',
    config('jetstream.auth_session'),
    'verified',
])->group(function () {
    Route::get('/dashboard', function () {
        return view('dashboard');
    })->name('dashboard');
});

Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});

Auth::routes();

