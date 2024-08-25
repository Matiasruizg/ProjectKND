<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Detallecombo;
use Illuminate\Http\Request;
use Orion\Concerns\DisableAuthorization;
use Orion\Concerns\DisablePagination;

class DetallecomboController extends Controller
{
    use DisableAuthorization, DisablePagination;

    protected $model = Detallecombo::class;

    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $detallecombo = Detallecombo::all();
        return response()->json($detallecombo);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        // Validar la entrada
        $request->validate([
            'prod_id' => 'required|integer',
            'dc_stock' => 'required|integer',
            'com_id' => 'required|integer',
        ]);

        // Crear un nuevo detalle de combo
        $detallecombo = Detallecombo::create([
            'prod_id' => $request->prod_id,
            'dc_stock' => $request->dc_stock,
            'com_id' => $request->com_id,
        ]);

        // Devolver la respuesta con el detalle de combo creado
        return response()->json($detallecombo, 201);
    }

    /**
     * Display the specified resource.
     */
    public function show(Detallecombo $detallecombo)
    {
        // Devolver los detalles de un detalle de combo específico
        return response()->json($detallecombo);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Detallecombo $detallecombo)
    {
        // Validar la entrada
        $request->validate([
            'prod_id' => 'required|integer',
            'dc_stock' => 'required|integer',
            'com_id' => 'required|integer',
        ]);

        // Actualizar el detalle de combo existente
        $detallecombo->update([
            'prod_id' => $request->prod_id,
            'dc_stock' => $request->dc_stock,
            'com_id' => $request->com_id,
        ]);

        // Devolver la respuesta con el detalle de combo actualizado
        return response()->json($detallecombo);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Detallecombo $detallecombo)
    {
        // Eliminar el detalle de combo
        $detallecombo->delete();

        // Devolver una respuesta de éxito
        return response()->json(null, 204);
    }
}

