<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('universities', function (Blueprint $table) {
            $table->bigIncrements('id');

            $table->unsignedBigInteger('address_id')->nullable(); 

            $table->foreign('address_id') 
                  ->references('id') 
                  ->on('addresses') 
                  ->onDelete('set null') 
                  ->onUpdate('set null'); 

            $table->string('name');
            $table->string('campus');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('universities');
    }
};
