<?php

Route::get('index/index', 'IndexController@index');

Route::get('/', function () {
    return view('留言板');
});

Route::group(['prefix' => 'demo'], function(){
    Route::resource('users', 'UsersController');
});