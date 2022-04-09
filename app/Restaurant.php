<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Restaurant extends Model
{
    protected $fillable = [
        'name',
        'code',
        'description',
        'phone_no',
        'email'
    ];

    public function resimage()
    {
        return $this->belongsTo(RestaurantImage::class, 'id', 'restaurant_id');
    }
}
