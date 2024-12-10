<?php
// database/migrations/xxxx_xx_xx_xxxxxx_create_tickets_table.php
use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTicketsTable extends Migration
{
    public function up()
    {
        Schema::create('tickets', function (Blueprint $table) {
            $table->id();
            $table->foreignId('flight_id')->constrained()->onDelete('cascade'); // Relasi One-to-Many
            $table->string('ticket_number');
            $table->bigInteger('price');
            $table->timestamps();
        });
    }

    public function down()
    {
        Schema::dropIfExists('tickets');
    }
}
