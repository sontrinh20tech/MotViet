<?php

namespace App\Actions\Client\ShippingAddress;

use App\Models\ShippingAddress;
use Illuminate\Http\Request;

class UpdateShippingAddressAction
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
    public function handle(array $data, ShippingAddress $shippingAddress)
    {
        if (isset($data['is_default'])) {
            ShippingAddress::where('user_id', $shippingAddress->user_id)->update(['is_default' => 0]);
        }
        
        return $shippingAddress->update($data);
    }
}