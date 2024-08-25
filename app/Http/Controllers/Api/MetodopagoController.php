<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Metodopago;
use Illuminate\Http\Request;
use Orion\Concerns\DisableAuthorization;
use Orion\Concerns\DisablePagination;

class MetodopagoController extends Controller
{
    use DisableAuthorization, DisablePagination;

    protected $model = Metodopago::class;

    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $metodospago = Metodopago::all();
        return response()->json($metodospago);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        // Validar la entrada
        $request->validate([
            'mp_nombre' => 'required|string|max:255',
        ]);

        // Crear un nuevo método de pago
        $metodopago = Metodopago::create([
            'mp_nombre' => $request->mp_nombre,
        ]);

        // Devolver la respuesta con el método de pago creado
        return response()->json($metodopago, 201);
    }

    /**
     * Display the specified resource.
     */
    public function show(Metodopago $metodopago)
    {
        // Devolver los detalles de un método de pago específico
        return response()->json($metodopago);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Metodopago $metodopago)
    {
        // Validar la entrada
        $request->validate([
            'mp_nombre' => 'required|string|max:255',
        ]);

        // Actualizar el método de pago existente
        $metodopago->update([
            'mp_nombre' => $request->mp_nombre,
        ]);

        // Devolver la respuesta con el método de pago actualizado
        return response()->json($metodopago);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Metodopago $metodopago)
    {
        // Eliminar el método de pago
        $metodopago->delete();

        // Devolver una respuesta de éxito
        return response()->json(null, 204);
    }
}

