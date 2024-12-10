<?php

// app/Models/Passenger.php
namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Passengers extends Model
{
    use HasFactory;

    protected $fillable = ['name'];

    // Relasi Many-to-Many dengan Flight
    public function flights()
    {
        return $this->belongsToMany(Flight::class);
    }
}
