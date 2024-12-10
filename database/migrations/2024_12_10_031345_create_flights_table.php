<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('flights', function (Blueprint $table) {
            $table->id(); 
            $table->string('flight_number'); 
            $table->string('departure_city'); 
            $table->string('arrival_city'); 
            $table->dateTime('departure_time'); 
            $table->dateTime('arrival_time'); 
            $table->decimal('price', 10, 2); 
            $table->integer('seats_available'); 
            $table->boolean('is_active')->default(true); 
            $table->unsignedBigInteger('plane_id');
            $table->foreign('plane_id')->references('id')->on('planes')->onDelete('cascade');
            $table->timestamps(); 
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('flights');
    }
};
