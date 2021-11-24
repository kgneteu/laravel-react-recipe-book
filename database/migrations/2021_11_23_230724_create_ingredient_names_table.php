<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateIngredientNamesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('ingredient_names', function (Blueprint $table) {
            $table->bigInteger('id')->primary();
            $table->string('name', 256);
            $table->bigInteger('ingredient_id');
            $table->string('language', 2)->default('en');
            $table->unique(['id', 'language']);
        });
        Schema::table('ingredient_names', function (Blueprint $table) {
            $table->foreign(['ingredient_id'], 'ingredient_names_recipe_id_fkey')->references(['id'])->on('ingredients')->onUpdate('CASCADE')->onDelete('CASCADE');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('ingredient_names', function (Blueprint $table) {
            $table->dropForeign('ingredient_names_recipe_id_fkey');
        });
        Schema::dropIfExists('ingredient_names');
    }
}
