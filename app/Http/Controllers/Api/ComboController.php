<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Combo;
use Illuminate\Http\Request;
use Orion\Concerns\DisableAuthorization;
use Orion\Concerns\DisablePagination;

class ComboController extends Controller
{
    use DisableAuthorization, DisablePagination;

    protected $model = Combo::class;

    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $combos = Combo::all();
        return response()->json($combos);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        // Validar la entrada
        $request->validate([
            'com_nombre' => 'required|string|max:255',
            'com_descripcion' => 'required|string',
            'com_imagen' => 'nullable|string',
            'com_precio' => 'required|numeric',
            'cat_id' => 'required|integer',
        ]);

        // Crear un nuevo combo
        $combo = Combo::create([
            'com_nombre' => $request->com_nombre,
            'com_descripcion' => $request->com_descripcion,
            'com_imagen' => $request->com_imagen,
            'com_precio' => $request->com_precio,
            'cat_id' => $request->cat_id,
        ]);

        // Devolver la respuesta con el combo creado
        return response()->json($combo, 201);
    }

    /**
     * Display the specified resource.
     */
    public function show(Combo $combo)
    {
        // Devolver los detalles de un combo específico
        return response()->json($combo);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Combo $combo)
    {
        // Validar la entrada
        $request->validate([
            'com_nombre' => 'required|string|max:255',
            'com_descripcion' => 'required|string',
            'com_imagen' => 'nullable|string',
            'com_precio' => 'required|numeric',
            'cat_id' => 'required|integer',
        ]);

        // Actualizar el combo existente
        $combo->update([
            'com_nombre' => $request->com_nombre,
            'com_descripcion' => $request->com_descripcion,
            'com_imagen' => $request->com_imagen,
            'com_precio' => $request->com_precio,
            'cat_id' => $request->cat_id,
        ]);

        // Devolver la respuesta con el combo actualizado
        return response()->json($combo);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Combo $combo)
    {
        // Eliminar el combo
        $combo->delete();

        // Devolver una respuesta de éxito
        return response()->json(null, 204);
    }
}

