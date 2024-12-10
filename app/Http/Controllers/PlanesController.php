<?php

namespace App\Http\Controllers;

use App\Models\Planes;
use App\Http\Requests\StorePlanesRequest;
use App\Http\Requests\UpdatePlanesRequest;

class PlanesController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \App\Http\Requests\StorePlanesRequest  $request
     * @return \Illuminate\Http\Response
     */
    public function store(StorePlanesRequest $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Planes  $planes
     * @return \Illuminate\Http\Response
     */
    public function show(Planes $planes)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Planes  $planes
     * @return \Illuminate\Http\Response
     */
    public function edit(Planes $planes)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \App\Http\Requests\UpdatePlanesRequest  $request
     * @param  \App\Models\Planes  $planes
     * @return \Illuminate\Http\Response
     */
    public function update(UpdatePlanesRequest $request, Planes $planes)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Planes  $planes
     * @return \Illuminate\Http\Response
     */
    public function destroy(Planes $planes)
    {
        //
    }
}
