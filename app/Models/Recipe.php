<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Recipe extends Model
{
    use HasFactory;
    protected $with = ['recipe_title', 'recipe_body', 'category', 'photo'];

    public function user(): \Illuminate\Database\Eloquent\Relations\BelongsTo
    {
        return $this->belongsTo(User::class);
    }

    public function photo(): \Illuminate\Database\Eloquent\Relations\BelongsTo
    {
        return $this->belongsTo(Photo::class);
    }

    public function category(): \Illuminate\Database\Eloquent\Relations\BelongsTo
    {
        return $this->belongsTo(Category::class);
    }

    public function recipe_title(): \Illuminate\Database\Eloquent\Relations\HasOne
    {
        return $this->hasOne(RecipeTitle::class,'recipe_id','id');
    }

    public function recipe_body(): \Illuminate\Database\Eloquent\Relations\HasOne
    {
        return $this->hasOne(RecipeBody::class);
    }
}
