<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Bodega;
use Illuminate\Http\Request;
use Orion\Concerns\DisableAuthorization;
use Orion\Concerns\DisablePagination;

class BodegaController extends Controller
{
    use DisableAuthorization, DisablePagination;

    protected $model = Bodega::class;

    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $bodega = Bodega::all();
        return response()->json($bodega);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        // Validar la entrada
        $request->validate([
            'prod_id' => 'required|integer',
            'prod_stock' => 'required|integer',
            'suc_id' => 'required|integer',
        ]);

        // Crear una nueva entrada en bodega
        $bodega = Bodega::create([
            'prod_id' => $request->prod_id,
            'prod_stock' => $request->prod_stock,
            'suc_id' => $request->suc_id,
        ]);

        // Devolver la respuesta con la bodega creada
        return response()->json($bodega, 201);
    }

    /**
     * Display the specified resource.
     */
    public function show(Bodega $bodega)
    {
        // Devolver los detalles de una entrada específica en bodega
        return response()->json($bodega);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Bodega $bodega)
    {
        // Validar la entrada
        $request->validate([
            'prod_id' => 'required|integer',
            'prod_stock' => 'required|integer',
            'suc_id' => 'required|integer',
        ]);

        // Actualizar la entrada existente en bodega
        $bodega->update([
            'prod_id' => $request->prod_id,
            'prod_stock' => $request->prod_stock,
            'suc_id' => $request->suc_id,
        ]);

        // Devolver la respuesta con la bodega actualizada
        return response()->json($bodega);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Bodega $bodega)
    {
        // Eliminar la entrada en bodega
        $bodega->delete();

        // Devolver una respuesta de éxito
        return response()->json(null, 204);
    }
}

