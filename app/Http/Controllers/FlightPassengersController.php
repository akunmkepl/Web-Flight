<?php

namespace App\Http\Controllers;

use App\Models\Flight_Passengers;
use App\Http\Requests\StoreFlight_PassengersRequest;
use App\Http\Requests\UpdateFlight_PassengersRequest;

class FlightPassengersController extends Controller
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
     * @param  \App\Http\Requests\StoreFlight_PassengersRequest  $request
     * @return \Illuminate\Http\Response
     */
    public function store(StoreFlight_PassengersRequest $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Flight_Passengers  $flight_Passengers
     * @return \Illuminate\Http\Response
     */
    public function show(Flight_Passengers $flight_Passengers)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Flight_Passengers  $flight_Passengers
     * @return \Illuminate\Http\Response
     */
    public function edit(Flight_Passengers $flight_Passengers)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \App\Http\Requests\UpdateFlight_PassengersRequest  $request
     * @param  \App\Models\Flight_Passengers  $flight_Passengers
     * @return \Illuminate\Http\Response
     */
    public function update(UpdateFlight_PassengersRequest $request, Flight_Passengers $flight_Passengers)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Flight_Passengers  $flight_Passengers
     * @return \Illuminate\Http\Response
     */
    public function destroy(Flight_Passengers $flight_Passengers)
    {
        //
    }
}
