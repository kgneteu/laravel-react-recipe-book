<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Inertia\Inertia;
use Inertia\Response;

class RecipesController extends Controller
{
    public function index(): Response
    {
        return Inertia::render('Recipes/NewRecipe', []);
    }

    public function category(): Response
    {
        return Inertia::render('Recipes/New', []);
    }

    public function recipe(): Response
    {
        return Inertia::render('Recipes/New', []);
    }

    public function create(): Response
    {
        return Inertia::render('Recipes/NewRecipe', []);
    }
}
