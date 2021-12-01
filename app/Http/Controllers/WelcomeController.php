<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\Recipe;
use Inertia\Inertia;

class WelcomeController extends Controller
{
    public function __invoke(): \Inertia\Response
    {
        $categories = Category::all();
        $recipes = Recipe::orderByDesc('created_at')->limit(4)->get();
        return Inertia::render('Welcome', ['categories' => $categories, 'recipes' => $recipes]);
    }
}
