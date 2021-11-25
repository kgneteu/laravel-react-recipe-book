<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateCategoriesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('categories', function (Blueprint $table) {
            $table->id();
        });
        DB::table('categories')->insert(
            ['id' => '1']
        );
        DB::table('categories')->insert(
            ['id' => '2']
        );
        DB::table('categories')->insert(
            ['id' => '3']
        );
        DB::table('categories')->insert(
            ['id' => '4']
        );
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('categories');
    }
}
