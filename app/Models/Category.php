<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
    use HasFactory;
    protected $with = ['name'];

    public function name(): \Illuminate\Database\Eloquent\Relations\HasOne
    {
        return $this->hasOne(CategoryName::class);
    }

    public $timestamps = false;
}
