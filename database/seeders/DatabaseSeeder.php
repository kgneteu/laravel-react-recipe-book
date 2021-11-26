<?php

namespace Database\Seeders;

use App\Models\Recipe;
use App\Models\RecipeBody;
use App\Models\RecipeTitle;
use App\Models\User;
use Illuminate\Database\Seeder;


class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        User::factory(100)->create();
        Recipe::factory(100)->create()->each(
            function ($recipe) {
                RecipeTitle::factory()->create(['recipe_id'=>$recipe->id]);
                RecipeBody::factory()->create(['recipe_id'=>$recipe->id]);
            }
        );
    }
}
