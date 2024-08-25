<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Categoria;
use Illuminate\Http\Request;
use Orion\Concerns\DisableAuthorization;
use Orion\Concerns\DisablePagination;

class CategoriaController extends Controller
{
    use DisableAuthorization, DisablePagination;

    protected $model = Categoria::class;

    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $categoria = Categoria::all();
        return response()->json($categoria);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        // Validar la entrada
        $request->validate([
            'cat_nombre' => 'required|string|max:255',
            'cat_imagen' => 'nullable|string|max:255',
        ]);

        // Crear una nueva categoría
        $categoria = Categoria::create([
            'cat_nombre' => $request->cat_nombre,
            'cat_imagen' => $request->cat_imagen,
        ]);

        // Devolver la respuesta con la categoría creada
        return response()->json($categoria, 201);
    }

    /**
     * Display the specified resource.
     */
    public function show(Categoria $categoria)
    {
        // Devolver los detalles de una categoría específica
        return response()->json($categoria);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Categoria $categoria)
    {
        // Validar la entrada
        $request->validate([
            'cat_nombre' => 'required|string|max:255',
            'cat_imagen' => 'nullable|string|max:255',
        ]);

        // Actualizar la categoría existente
        $categoria->update([
            'cat_nombre' => $request->cat_nombre,
            'cat_imagen' => $request->cat_imagen,
        ]);

        // Devolver la respuesta con la categoría actualizada
        return response()->json($categoria);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Categoria $categoria)
    {
        // Eliminar la categoría
        $categoria->delete();

        // Devolver una respuesta de éxito
        return response()->json(null, 204);
    }
}

