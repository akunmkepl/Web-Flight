<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class PassengerSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::table('passengers')->insert([
            ['name' => 'John Doe', 'created_at' => now(), 'updated_at' => now()],
            ['name' => 'Jane Smith', 'created_at' => now(), 'updated_at' => now()],
            ['name' => 'Alice Johnson', 'created_at' => now(), 'updated_at' => now()],
            ['name' => 'Bob Brown', 'created_at' => now(), 'updated_at' => now()],
            ['name' => 'Charlie White', 'created_at' => now(), 'updated_at' => now()],
        ]);
    }
}
