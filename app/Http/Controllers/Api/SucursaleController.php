<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Sucursale;
use Illuminate\Http\Request;
use Orion\Concerns\DisableAuthorization;
use Orion\Concerns\DisablePagination;

class SucursaleController extends Controller
{
    use DisableAuthorization, DisablePagination;

    protected $model = Sucursale::class;

    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $sucursales = Sucursale::all();
        return response()->json($sucursales);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        // Validar la entrada
        $request->validate([
            'nombre' => 'required|string|max:255',
            'direccion' => 'required|string|max:255',
            'suc_status' => 'required|boolean',
        ]);

        // Crear una nueva sucursal
        $sucursale = Sucursale::create([
            'nombre' => $request->nombre,
            'direccion' => $request->direccion,
            'suc_status' => $request->suc_status,
        ]);

        // Devolver la respuesta con la sucursal creada
        return response()->json($sucursale, 201);
    }

    /**
     * Display the specified resource.
     */
    public function show(Sucursale $sucursale)
    {
        // Devolver los detalles de una sucursal específica
        return response()->json($sucursale);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Sucursale $sucursale)
    {
        // Validar la entrada
        $request->validate([
            'nombre' => 'required|string|max:255',
            'direccion' => 'required|string|max:255',
            'suc_status' => 'required|boolean',
        ]);

        // Actualizar la sucursal existente
        $sucursale->update([
            'nombre' => $request->nombre,
            'direccion' => $request->direccion,
            'suc_status' => $request->suc_status,
        ]);

        // Devolver la respuesta con la sucursal actualizada
        return response()->json($sucursale);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Sucursale $sucursale)
    {
        // Eliminar la sucursal
        $sucursale->delete();

        // Devolver una respuesta de éxito
        return response()->json(null, 204);
    }
}

