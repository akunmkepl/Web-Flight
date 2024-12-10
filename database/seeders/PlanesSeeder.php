<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class PlanesSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::table('planes')->insert([
            ['plane_number' => 'PK-BGK', 'plane_model' => 'Boeing 737-800', 'created_at' => now(), 'updated_at' => now()],
            ['plane_number' => 'PK-AKA', 'plane_model' => 'Airbus A320neo', 'created_at' => now(), 'updated_at' => now()],
            ['plane_number' => 'PK-JKT', 'plane_model' => 'Boeing 747-400', 'created_at' => now(), 'updated_at' => now()],
            ['plane_number' => 'PK-SBY', 'plane_model' => 'Airbus A330-300', 'created_at' => now(), 'updated_at' => now()],
            ['plane_number' => 'PK-MNL', 'plane_model' => 'Embraer E195-E2', 'created_at' => now(), 'updated_at' => now()],
        ]);
    }
}
