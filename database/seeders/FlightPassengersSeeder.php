<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Flight_Passengers;

class FlightPassengersSeeder extends Seeder
{
    public function run()
    {
        Flight_Passengers::create([
            'flight_id' => 1,
            'passenger_id' => 1, 
        ]);

        Flight_Passengers::create([
            'flight_id' => 1, 
            'passenger_id' => 2, 
        ]);

        Flight_Passengers::create([
            'flight_id' => 2, 
            'passenger_id' => 3, 
        ]);

        Flight_Passengers::create([
            'flight_id' => 2, 
            'passenger_id' => 4, 
        ]);
    }
}

