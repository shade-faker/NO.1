<?php

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

Route::get('index/index', 'IndexController@index');

Route::get('/welcome',function (){
    return view('欢迎！');
});

Route::get('/bootstrap',function(){
    return view('bootstrap');
});

Route::get('user/show/{id}/{name}','UserController@show');
