<?php

use App\Http\Controllers\Client\AuthController;
use App\Http\Controllers\Client\CartController;
use App\Http\Controllers\Client\ClientController;
use App\Http\Controllers\Client\ShippingAddressController;
use App\Http\Controllers\Client\UserController;
use App\Http\Controllers\Client\WishlistController;
use Illuminate\Support\Facades\Route;

Route::name('client.')->group(function () {
    Route::middleware('customAuth:web')->group(function () {
        Route::controller(ClientController::class)->as('home.')->group(function () {
            Route::get('/san-pham-yeu-thich', 'wishlist')->name('wishlist');
            Route::get('/thong-tin-ca-nhan', 'profile')->name('profile');
            Route::get('/dia-chi-nhan-hang', 'addresses')->name('addresses');
            Route::get('/thong-bao', 'notification')->name('notification');
        });

        Route::controller(WishlistController::class)->as('wishlist.')->group(function () {
            Route::post('/add-to-wishlist/{product}', 'store')->name('store');
            Route::post('/delete-wishlist', 'destroy')->name('destroy');
        });

        Route::controller(AuthController::class)->as('auth.')->group(function () {
            Route::post('/dang-xuat', 'logout')->name('logout');
        });

        Route::controller(UserController::class)->as('auth.')->group(function () {
            Route::put('/doi-mat-khau', 'changePassword')->name('changePassword');
            Route::put('/doi-lien-he', 'changeContact')->name('changeContact');
            Route::put('/doi-thong-tin', 'changeInfo')->name('changeInfo');
        });

        Route::controller(ShippingAddressController::class)->as('shippingAddress.')->group(function () {
            Route::post('/them-dia-chi', 'store')->name('store');
            Route::put('/cap-nhat-dia-chi/{shippingAddress}', 'update')->name('update');
            Route::delete('/xoa-dia-chi/{shippingAddress}', 'destroy')->name('destroy');
        });
    });

    Route::middleware('customGuest:web')->group(function () {
        Route::controller(AuthController::class)->as('auth.')->group(function () {
            Route::get('/dang-nhap', 'login')->name('login');
            Route::post('/dang-nhap', 'handleLogin')->name('handleLogin');
            Route::get('/dang-ky', 'register')->name('register');
            Route::post('/dang-ky', 'handleRegister')->name('handleRegister');
            Route::get('/auth/redirect/google', 'redirectGoogleLogin')->name('redirectGoogleLogin');
            Route::get('/auth/callback/google', 'callbackGoogleLogin')->name('callbackGoogleLogin');
        });
    });

    Route::controller(ClientController::class)->as('home.')->group(function () {
        Route::get('/', 'index')->name('index');
        Route::get('/chi-tiet-san-pham/{product}', 'productDetail')->name('productDetail');
    });

    Route::controller(CartController::class)->as('cart.')->group(function () {
        Route::post('/add-to-cart/{product}', 'addToCart')->name('addToCart');
        Route::delete('/remove-item/{key}', 'removeItem')->name('removeItem');
        Route::post('/update-quantity/{key}', 'updateQuantity')->name('updateQuantity');
        Route::get('/gio-hang', 'showCart')->name('showCart');
        Route::delete('/clear-cart', 'clearCart')->name('clearCart');
    });
});

Route::middleware('customAuth:web')->group(function () {
    Route::controller(AuthController::class)->group(function () {
        Route::get('/email/verify', 'verifyEmail')->name('verification.notice');
        Route::get('/email/verify/{id}/{hash}', 'handleVerifyEmail')->name('verification.verify');
    });
});