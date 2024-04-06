<?php

use App\Http\Controllers\member\Auth\RegisterController;
use App\Http\Controllers\member\Auth\LoginController;
use App\Http\Controllers\members_crud;
use App\Http\Controllers\orders_crud;

Route::get('/member/Dashboard', [App\Http\Controllers\member\Auth\Dashboard::class, 'index'])->name('member.Dashboard');  // auth library  //middleware

Route::get('/home', [App\Http\Controllers\Auth\HomeController::class, 'index'])->name('Dashboard');  // auth library

//RegisterController
Route::post('/memberreg',[App\Http\Controllers\member\Auth\RegisterController::class,'reg'])->name('member.register.post');   // request

Route::get('/member_reg',[App\Http\Controllers\member\Auth\RegisterController::class,'showRegistrationForm'])->name('member.register');  // Form

//LoginController
Route::Get('/member/Log',[App\Http\Controllers\member\Auth\LoginController::class,'customLogin'])->name('member.Login.post');   // request  // middleware

Route::get('/member/Log_in',[App\Http\Controllers\member\Auth\LoginController::class,'showLoginForm'])->name('member.Login');  // Form

Route::get('/member/LogOut',[App\Http\Controllers\member\Auth\LoginController::class,'logout'])->name('member.LogOut');


Route::POST('member/Dashboard/update',[App\Http\Controllers\members_crud::class,'update'])->name('member.update');


Route::POST('member/Dashboard/DEL',[App\Http\Controllers\members_crud::class,'destory'])->name('member.destory');


Route::POST('member/Dashboard/orderscreate',[App\Http\Controllers\orders_crud::class,'create'])->name('orders.create');


