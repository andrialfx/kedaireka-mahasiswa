<?php

use App\Http\Controllers\MajorController;
use App\Http\Controllers\StudentController;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

// Route::get('/', function () {
//     return view('welcome');
// });

Route::resource('students', StudentController::class);
Route::get('/majors/count', [MajorController::class, 'count'])->name('majors.count');
Route::resource('majors', MajorController::class);

Route::get('/dashboard', function(){
    return view('homes.dashboard');
})->name('homes.dashboard');