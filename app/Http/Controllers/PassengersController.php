<?php

namespace App\Http\Controllers;

use App\Models\Passengers;
use App\Http\Requests\StorePassengersRequest;
use App\Http\Requests\UpdatePassengersRequest;

class PassengersController extends Controller
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
     * @param  \App\Http\Requests\StorePassengersRequest  $request
     * @return \Illuminate\Http\Response
     */
    public function store(StorePassengersRequest $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Passengers  $passengers
     * @return \Illuminate\Http\Response
     */
    public function show(Passengers $passengers)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Passengers  $passengers
     * @return \Illuminate\Http\Response
     */
    public function edit(Passengers $passengers)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \App\Http\Requests\UpdatePassengersRequest  $request
     * @param  \App\Models\Passengers  $passengers
     * @return \Illuminate\Http\Response
     */
    public function update(UpdatePassengersRequest $request, Passengers $passengers)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Passengers  $passengers
     * @return \Illuminate\Http\Response
     */
    public function destroy(Passengers $passengers)
    {
        //
    }
}
