<?php
// app/Models/Ticket.php
namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Tickets extends Model
{
    use HasFactory;

    protected $fillable = ['flight_id', 'ticket_number', 'price'];

    // Relasi Many-to-One dengan Flight
    public function flight()
    {
        return $this->belongsTo(Flight::class);  // Setiap ticket milik satu flight
    }
}

