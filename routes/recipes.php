<?php

use App\Http\Controllers\RecipesController;

Route::get('/recipes/{category_id}', [RecipesController::class, 'category'])->name('recipes_category');
Route::get('/recipe/create', [RecipesController::class, 'create'])->name('new_recipe')->middleware('auth');;
Route::post('/recipe/create', [RecipesController::class, 'post'])->name('new_recipe_post')->middleware('auth');
Route::get('/recipe/{id}', [RecipesController::class, 'recipe'])->name('recipe');
Route::get('/recipes', [RecipesController::class, 'index'])->name('recipes');
