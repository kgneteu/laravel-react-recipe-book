<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

class PhotoFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public static $recipe = null;

    /**
     * @throws \Exception
     */
    public function definition(): array
    {
        //dd();
        return [
            'file_name' => '/images/seed/'.self::$recipe->category_id.'/'.random_int(1, 10).'.jpg',
        ];
    }
}
