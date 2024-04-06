<?php
use App\Http\Controllers\Admin\Auth\RegisterController;
use App\Http\Controllers\Admin\Auth\LoginController;

Route::get('/admin/Dashboard', [App\Http\Controllers\Admin\Auth\Dashboard::class, 'index'])->name('user.Dashboard');  // auth library  //middleware

Route::get('/home', [App\Http\Controllers\Auth\HomeController::class, 'index'])->name('Dashboard');  // auth library

//RegisterController
Route::post('/adminreg',[App\Http\Controllers\Admin\Auth\RegisterController::class,'reg'])->name('Admin.register.post');   // request

Route::get('/admin_reg',[App\Http\Controllers\Admin\Auth\RegisterController::class,'showRegistrationForm'])->name('Admin.register');  // Form

//LoginController
Route::Get('/admin/Log',[App\Http\Controllers\Admin\Auth\LoginController::class,'customLogin'])->name('Admin.Login.post');   // request  // middleware

Route::get('/admin/Log_in',[App\Http\Controllers\Admin\Auth\LoginController::class,'showLoginForm'])->name('Admin.Login');  // Form

Route::get('/admin/LogOut',[App\Http\Controllers\Admin\Auth\LoginController::class,'logout'])->name('Admin.LogOut');

