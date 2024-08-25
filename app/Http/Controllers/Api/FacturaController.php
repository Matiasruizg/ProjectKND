<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Factura;
use Illuminate\Http\Request;
use Orion\Concerns\DisableAuthorization;
use Orion\Concerns\DisablePagination;

class FacturaController extends Controller
{
    use DisableAuthorization, DisablePagination;

    protected $model = Factura::class;

    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $facturas = Factura::all();
        return response()->json($facturas);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        // Validar la entrada
        $request->validate([
            'fac_fecha' => 'required|date',
            'cli_id' => 'required|integer',
            'fac_total' => 'required|numeric',
            'fac_iva' => 'required|numeric',
            'mp_id' => 'required|integer',
            'fac_status' => 'required|string|max:255',
        ]);

        // Crear una nueva factura
        $factura = Factura::create([
            'fac_fecha' => $request->fac_fecha,
            'cli_id' => $request->cli_id,
            'fac_total' => $request->fac_total,
            'fac_iva' => $request->fac_iva,
            'mp_id' => $request->mp_id,
            'fac_status' => $request->fac_status,
        ]);

        // Devolver la respuesta con la factura creada
        return response()->json($factura, 201);
    }

    /**
     * Display the specified resource.
     */
    public function show(Factura $factura)
    {
        // Devolver los detalles de una factura específica
        return response()->json($factura);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Factura $factura)
    {
        // Validar la entrada
        $request->validate([
            'fac_fecha' => 'required|date',
            'cli_id' => 'required|integer',
            'fac_total' => 'required|numeric',
            'fac_iva' => 'required|numeric',
            'mp_id' => 'required|integer',
            'fac_status' => 'required|string|max:255',
        ]);

        // Actualizar la factura existente
        $factura->update([
            'fac_fecha' => $request->fac_fecha,
            'cli_id' => $request->cli_id,
            'fac_total' => $request->fac_total,
            'fac_iva' => $request->fac_iva,
            'mp_id' => $request->mp_id,
            'fac_status' => $request->fac_status,
        ]);

        // Devolver la respuesta con la factura actualizada
        return response()->json($factura);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Factura $factura)
    {
        // Eliminar la factura
        $factura->delete();

        // Devolver una respuesta de éxito
        return response()->json(null, 204);
    }
}

