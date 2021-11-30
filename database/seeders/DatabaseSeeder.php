<?php

namespace Database\Seeders;

use App\Models\Photo;
use App\Models\Recipe;
use App\Models\RecipeBody;
use App\Models\RecipeTitle;
use App\Models\User;
use Database\Factories\PhotoFactory;
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
                RecipeTitle::factory()->create(['recipe_id' => $recipe->id]);
                RecipeBody::factory()->create(['recipe_id' => $recipe->id]);
                PhotoFactory::$recipe = $recipe;
                $recipe->photo_id = Photo::factory()->create()->id;
                $recipe->save();
            }
        );
    }
}
