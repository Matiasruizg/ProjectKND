<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Detallefactura;
use Illuminate\Http\Request;
use Orion\Concerns\DisableAuthorization;
use Orion\Concerns\DisablePagination;

class DetallefacturaController extends Controller
{
    use DisableAuthorization, DisablePagination;

    protected $model = Detallefactura::class;

    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $detallefacturas = Detallefactura::all();
        return response()->json($detallefacturas);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        // Validar la entrada
        $request->validate([
            'fac_id' => 'required|integer',
            'df_tipo' => 'required|string|max:255',
            'df_item_id' => 'required|integer',
            'df_total' => 'required|numeric',
            'df_cantidad' => 'required|integer',
            'df_precio' => 'required|numeric',
        ]);

        // Crear un nuevo detalle de factura
        $detallefactura = Detallefactura::create([
            'fac_id' => $request->fac_id,
            'df_tipo' => $request->df_tipo,
            'df_item_id' => $request->df_item_id,
            'df_total' => $request->df_total,
            'df_cantidad' => $request->df_cantidad,
            'df_precio' => $request->df_precio,
        ]);

        // Devolver la respuesta con el detalle de factura creado
        return response()->json($detallefactura, 201);
    }

    /**
     * Display the specified resource.
     */
    public function show(Detallefactura $detallefactura)
    {
        // Devolver los detalles de un detalle de factura específico
        return response()->json($detallefactura);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Detallefactura $detallefactura)
    {
        // Validar la entrada
        $request->validate([
            'fac_id' => 'required|integer',
            'df_tipo' => 'required|string|max:255',
            'df_item_id' => 'required|integer',
            'df_total' => 'required|numeric',
            'df_cantidad' => 'required|integer',
            'df_precio' => 'required|numeric',
        ]);

        // Actualizar el detalle de factura existente
        $detallefactura->update([
            'fac_id' => $request->fac_id,
            'df_tipo' => $request->df_tipo,
            'df_item_id' => $request->df_item_id,
            'df_total' => $request->df_total,
            'df_cantidad' => $request->df_cantidad,
            'df_precio' => $request->df_precio,
        ]);

        // Devolver la respuesta con el detalle de factura actualizado
        return response()->json($detallefactura);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Detallefactura $detallefactura)
    {
        // Eliminar el detalle de factura
        $detallefactura->delete();

        // Devolver una respuesta de éxito
        return response()->json(null, 204);
    }
}

