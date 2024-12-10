<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\Tickets;

class TicketsSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Tickets::create([
            'flight_id' => 1,  
            'ticket_number' => 'TICKET001',
            'price' => 1200000,
        ]);

        Tickets::create([
            'flight_id' => 1,  
            'ticket_number' => 'TICKET002',
            'price' => 1200000,
        ]);

        Tickets::create([
            'flight_id' => 2,  
            'ticket_number' => 'TICKET003',
            'price' => 1500000,
        ]);

        Tickets::create([
            'flight_id' => 2, 
            'ticket_number' => 'TICKET004',
            'price' => 1500000,
        ]);
    }
}
