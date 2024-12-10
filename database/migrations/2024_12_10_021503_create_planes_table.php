<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreatePlanesTable extends Migration
{
    public function up()
    {
        Schema::create('planes', function (Blueprint $table) {
            $table->id();
            $table->string('plane_model');
            $table->string('plane_number');
            $table->timestamps();
        });
    }

    public function down()
    {
        Schema::dropIfExists('planes');
    }
}

