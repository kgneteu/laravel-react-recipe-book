<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateRecipeTitlesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('recipe_titles', function (Blueprint $table) {
            $table->id();
            $table->string('title', 256);
            $table->bigInteger('recipe_id');
            $table->string('language', 2)->default('en');
            $table->unique(['id', 'language']);
            $table->index(['title']);
        });
        Schema::table('recipe_titles', function (Blueprint $table) {
            $table->foreign(['recipe_id'], 'recipe_titles_recipe_id_fkey')->references(['id'])->on('recipes')->onUpdate('CASCADE')->onDelete('CASCADE');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('recipe_titles', function (Blueprint $table) {
            $table->dropForeign('recipe_titles_recipe_id_fkey');
        });
        Schema::dropIfExists('recipe_titles');
    }
}
