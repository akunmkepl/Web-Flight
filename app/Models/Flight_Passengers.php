<?php
// app/Models/FlightPassenger.php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Flight_Passengers extends Model
{
    use HasFactory;

    // Nama tabel secara eksplisit jika menggunakan tabel pivot
    protected $table = 'flight_passenger';

    // Kolom-kolom yang dapat diisi
    protected $fillable = [
        'flight_id',
        'passenger_id',
    ];

    /**
     * Relasi ke model Flight.
     * Setiap entri di tabel flight_passengers terhubung ke satu flight.
     */
    public function flight()
    {
        return $this->belongsTo(Flight::class);
    }

    /**
     * Relasi ke model Passenger.
     * Setiap entri di tabel flight_passengers terhubung ke satu passenger.
     */
    public function passenger()
    {
        return $this->belongsTo(Passengers::class);
    }
}
