<?php

namespace App\Actions\Client\ShippingAddress;

use App\Models\ShippingAddress;
use Illuminate\Http\Request;

class StoreShippingAddressAction
{
    /**
     * Constructor
     */
    public function __construct()
    {
        //
    }

    /**
     * Execute the action.
     */
    public function handle(array $data)
    {
        $data['user_id'] = auth()->user()->id;

        if (isset($data['is_default'])) {
            ShippingAddress::where('user_id', $data['user_id'])->update(['is_default' => 0]);
        }

        return ShippingAddress::create($data);
    }
}