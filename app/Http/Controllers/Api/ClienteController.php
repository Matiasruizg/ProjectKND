<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Cliente;
use Illuminate\Http\Request;
use Orion\Concerns\DisableAuthorization;
use Orion\Concerns\DisablePagination;

class ClienteController extends Controller
{
    use DisableAuthorization, DisablePagination;
    protected $model = Cliente::class;

    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $cliente = Cliente::all();
        return response()->json($cliente);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     */
    public function show(Cliente $cliente)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Cliente $cliente)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Cliente $cliente)
    {
        //
    }
}
