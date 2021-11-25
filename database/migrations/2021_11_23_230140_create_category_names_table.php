<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateCategoryNamesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('category_names', function (Blueprint $table) {
            $table->id();
            $table->string('name', 256);
            $table->bigInteger('category_id');
            $table->string('language', 2)->default('en');
            $table->unique(['id', 'language']);
        });
        Schema::table('category_names', function (Blueprint $table) {
            $table->foreign(['category_id'], 'category_names_id_fkey')->references(['id'])->on('categories')->onUpdate('CASCADE')->onDelete('CASCADE');
        });

        DB::table('category_names')->insert(
            ['category_id' => 1, 'name' => 'Beer']
        );
        DB::table('category_names')->insert(
            ['category_id' => 2, 'name' => 'Wine']
        );
        DB::table('category_names')->insert(
            ['category_id' => 3, 'name' => 'Whiskey']
        );
        DB::table('category_names')->insert(
            ['category_id' => 4, 'name' => 'Vodka']
        );
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('category_names', function (Blueprint $table) {
            $table->dropForeign('category_names_id_fkey');
        });
        Schema::dropIfExists('category_names');
    }
}
