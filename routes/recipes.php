<?php

use App\Http\Controllers\RecipesController;

Route::get('/recipes', [RecipesController::class, 'index']);
Route::get('/recipes/{category_id}', [RecipesController::class, 'category']);
Route::get('/recipe/new}', [RecipesController::class, 'create']);
Route::post('/recipe/new}', [RecipesController::class, 'post'])->name('new_recipe');
Route::get('/recipe/{id}', [RecipesController::class, 'recipe']);
