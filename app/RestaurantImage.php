<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class RestaurantImage extends Model
{
    protected $fillable = [
        'restaurant_id',
        'image'
    ];
}
