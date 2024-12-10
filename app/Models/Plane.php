<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Plane extends Model
{
    use HasFactory;

    protected $fillable = ['plane_model', 'plane_number'];

    // Relasi One-to-One dengan Flight
    public function flight()
    {
        return $this->belongsTo(Flight::class);
    }
}


