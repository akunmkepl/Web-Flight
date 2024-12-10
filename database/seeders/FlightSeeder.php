<?php
namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Flight;
use App\Models\Plane;

class FlightSeeder extends Seeder
{
    public function run()
    {
        $planes = Plane::all();

        if ($planes->isEmpty()) {
            $this->command->info('Tidak ada data di tabel planes. Harap jalankan PlaneSeeder terlebih dahulu.');
            return;
        }

        foreach ($planes as $plane) {
            for ($i = 1; $i <= 3; $i++) { 
                Flight::create([
                    'flight_number' => 'FL' . rand(1000, 9999),
                    'departure_city' => 'City ' . rand(1, 10),
                    'arrival_city' => 'City ' . rand(11, 20),
                    'departure_time' => now()->addDays(rand(1, 10)),
                    'arrival_time' => now()->addDays(rand(1, 10))->addHours(rand(1, 5)),
                    'price' => rand(100, 1000) * 1000,
                    'seats_available' => rand(40, 80) ,
                    'is_active' => rand(0, 1),
                    'plane_id' => $plane->id, // Foreign key ke planes
                ]);
            }
        }
    }
}
