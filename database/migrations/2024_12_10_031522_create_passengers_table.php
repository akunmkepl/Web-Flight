<?php
// database/migrations/xxxx_xx_xx_xxxxxx_create_passengers_table.php
use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreatePassengersTable extends Migration
{
    public function up()
    {
        Schema::create('passengers', function (Blueprint $table) {
            $table->id();
            $table->string('name');
            $table->timestamps();
        });
    }

    public function down()
    {
        Schema::dropIfExists('passengers');
    }
}

