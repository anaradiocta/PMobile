<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Auth\AuthenticatedSessionController;
use App\Http\Controllers\Auth\RegisteredUserController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware(['auth:sanctum'])->get('/user', function (Request $request) {
    return $request->user();
});

// Tambahkan rute autentikasi
Route::post('/register', [RegisteredUserController::class, 'store']); // Registrasi
Route::post('/login', [AuthenticatedSessionController::class, 'store']); // Login
Route::post('/logout', [AuthenticatedSessionController::class, 'destroy'])->middleware('auth:sanctum'); // Logout
