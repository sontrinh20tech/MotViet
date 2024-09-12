<?php

namespace App\Traits;

trait ModelScopeTrait
{
    public function scopeActive($query)
    {
        $model = new (self::class);
        return $query->where($model->getTable() . '.is_active', 1);
    }
}