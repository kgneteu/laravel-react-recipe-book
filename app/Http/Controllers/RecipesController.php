<?php

namespace App\Http\Controllers;

use App\Models\Category;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Redirect;
use Inertia\Inertia;
use Inertia\Response;

class RecipesController extends Controller
{
    public function index(): Response
    {
        //$categories = Category::with('name:name,category_id')->get();
        $categories = Category::all();
//        foreach ($categories as $category){
//            echo $category->name;
//        }
        return Inertia::render('Recipes/NewRecipe', ['categories'=>$categories]);
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

    public function post(Request $request)
    {
        $this->validate($request, [
            'title' => 'required|string|max:256',
            'body' => 'required|string',
            'category' =>'required|integer'
        ]);
        return redirect('/')->with('success','Thank you for your recipe!');
        //->with('success','Product successfully added.'); Redirect::route('home');;
    }
}
