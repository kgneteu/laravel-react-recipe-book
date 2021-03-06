<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class RecipeTitle extends Model
{
    use HasFactory;

    protected $fillable = [
        'recipe_id',
        'title',
        'language'
    ];

    public function recipe(): \Illuminate\Database\Eloquent\Relations\BelongsTo
    {
        return $this->belongsTo(Recipe::class);
    }

    public $timestamps = false;
}
