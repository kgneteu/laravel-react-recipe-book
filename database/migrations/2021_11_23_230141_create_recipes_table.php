<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateRecipesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('recipes', function (Blueprint $table) {
            $table->id();
            $table->bigInteger('category_id');
            $table->bigInteger('creator_id');
            $table->bigInteger('photo_id')->nullable();
            $table->timestamps();
        });

        Schema::table('recipes', function (Blueprint $table) {
            $table->foreign(['creator_id'], 'recipes_creator_id_fkey')->references(['id'])->on('users')->onUpdate('CASCADE')->onDelete('CASCADE');
            $table->foreign(['photo_id'], 'recipes_photo_id_fkey')->references(['id'])->on('photos')->onUpdate('CASCADE')->onDelete('CASCADE');
            $table->foreign(['category_id'], 'recipes_category_id_fkey')->references(['id'])->on('categories')->onUpdate('CASCADE')->onDelete('CASCADE');
        });

    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('recipes', function (Blueprint $table) {
            $table->dropForeign('recipes_creator_id_fkey');
            $table->dropForeign('recipes_photo_id_fkey');
            $table->dropForeign('recipes_category_id_fkey');
        });
        Schema::dropIfExists('recipes');
    }
}
