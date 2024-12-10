<?php

// app/Models/Flight.php
namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Flight extends Model
{
    use HasFactory;

    protected $fillable = [
        'flight_number', 'departure_city', 'arrival_city', 
        'departure_time', 'arrival_time', 'price', 'is_active','plane_id'
    ];

    // Relasi One-to-One dengan Plane
    public function plane()
    {
        return $this->hasOne(Plane::class);
    }

    // Relasi Many-to-Many dengan Passenger
    public function passengers()
    {
        return $this->belongsToMany(Passengers::class);
    }
}
