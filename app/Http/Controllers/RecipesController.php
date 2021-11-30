<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\Photo;
use App\Models\Recipe;
use App\Models\RecipeBody;
use App\Models\RecipeTitle;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Inertia\Inertia;
use Inertia\Response;

class RecipesController extends Controller
{
    public function index(): Response
    {
        $categories = Category::all();
        return Inertia::render('Recipes/RecipeCategories', ['categories' => $categories]);
    }


    public function create(): Response
    {
        $categories = Category::all();
        return Inertia::render('Recipes/NewRecipe', ['categories' => $categories]);
    }

    public function category(Request $request, $category_id): Response
    {

        if (!filter_var($category_id, FILTER_VALIDATE_INT)) abort(404);

        $recipes = Recipe::where('category_id', $category_id)->paginate(5);
        if ($recipes->isEmpty()) abort(404);
        $category = $recipes[0]->category;
        return Inertia::render('Recipes/RecipeCategory', [
                'category' => $category,
                'page' => $recipes
            ]
        );
    }

    public function recipe($id): Response
    {
        if (!filter_var($id, FILTER_VALIDATE_INT)) abort(404);
        $recipe = Recipe::findOrFail($id);
        return Inertia::render('Recipes/Recipe', [
                'recipe' => $recipe,
            ]
        );
    }


    /**
     * @throws \Exception
     */

    public function post(Request $request)
    {
        $this->validate($request, [
            'title' => 'required|string|max:256',
            'body' => 'required|string|max:1024',
            'category' => 'required|integer',
            'photo' => 'nullable|sometimes|image|mimes:jpeg,png,jpg|max:10000',
        ]);

        $imageName = '';
        if ($request->hasFile('photo')) {
            if ($request->file('photo')->isValid()) {
                $imageName = time() . '.' . $request->photo->extension();
                $request->photo->move(public_path('images/recipes'), $imageName);
            }
        }


        $user_id = Auth::id();
        $recipe = new Recipe();
        $recipe->category_id = $request->category;
        $recipe->creator_id = $user_id;

        DB::transaction(function () use ($imageName, $request, $recipe) {
            $recipe->save();
            if ($imageName !== '') {
                $imageName = '/images/recipes/' . $imageName;
                $photo = new Photo(['file_name'=>$imageName]);
                $photo->save();
                $recipe->photo()->associate($photo);
            }
            $recipe->recipe_title()->create(['title' => $request->title]);
            $recipe->recipe_body()->create(['body' => $request->body]);
            $recipe->save();
        });

        return redirect('/')->with('success', 'Thank you for your recipe!');
    }
}
