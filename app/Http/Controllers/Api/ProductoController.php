<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Producto;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use Orion\Concerns\DisableAuthorization;
use Orion\Concerns\DisablePagination;

class ProductoController extends Controller
{
    use DisableAuthorization, DisablePagination;
    protected $model = Producto::class;

    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $productos = Producto::all();
        return response()->json($productos);
    }


    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        // Validar la entrada
        $request->validate([
            'prod_nombre' => 'required|string|max:255',
            'prod_precio_un' => 'required|numeric',
            'prod_precio_co' => 'required|numeric',
            'prod_agregado' => 'required|boolean',
            'prod_imagen' => 'nullable|image|max:2048',  // Validación de imagen
        ]);

        // Manejar la subida de la imagen si se proporciona
        $path = null;
        if ($request->hasFile('prod_imagen')) {
            $path = $request->file('prod_imagen')->store('productos/' . date('FY'));
        }

        // Crear un nuevo producto
        $producto = Producto::create([
            'prod_nombre' => $request->prod_nombre,
            'prod_precio_un' => $request->prod_precio_un,
            'prod_precio_co' => $request->prod_precio_co,
            'prod_agregado' => $request->prod_agregado,
            'prod_imagen' => $path,
        ]);

        // Devolver la respuesta con el producto creado
        return response()->json($producto, 201);
    }

    /**
     * Display the specified resource.
     */
    public function show(Producto $producto)
    {
        // Devolver los detalles de un producto específico
        return response()->json($producto);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Producto $producto)
    {
        // Validar la entrada
        $request->validate([
            'prod_nombre' => 'required|string|max:255',
            'prod_precio_un' => 'required|numeric',
            'prod_precio_co' => 'required|numeric',
            'prod_agregado' => 'required|boolean',
            'prod_imagen' => 'nullable|image|max:2048',  // Validación de imagen
        ]);

        // Manejar la subida de una nueva imagen si se proporciona
        if ($request->hasFile('prod_imagen')) {
            // Eliminar la imagen antigua si existe
            if ($producto->prod_imagen && Storage::exists($producto->prod_imagen)) {
                Storage::delete($producto->prod_imagen);
            }

            // Guardar la nueva imagen
            $producto->prod_imagen = $request->file('prod_imagen')->store('productos/' . date('FY'));
        }

        // Actualizar el producto existente
        $producto->update([
            'prod_nombre' => $request->prod_nombre,
            'prod_precio_un' => $request->prod_precio_un,
            'prod_precio_co' => $request->prod_precio_co,
            'prod_agregado' => $request->prod_agregado,
            'prod_imagen' => $producto->prod_imagen,
        ]);

        // Devolver la respuesta con el producto actualizado
        return response()->json($producto);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Producto $producto)
    {
        // Eliminar la imagen del producto si existe
        if ($producto->prod_imagen && Storage::exists($producto->prod_imagen)) {
            Storage::delete($producto->prod_imagen);
        }

        // Eliminar el producto
        $producto->delete();

        // Devolver una respuesta de éxito
        return response()->json(null, 204);
    }
}
