<?php

// 后台路由写这里
Route::group('admin', function(){
    Route::rule('/', 'admin/index/login', 'get|post');              # 后台登录页
    Route::rule('register', 'admin/index/register', 'get|post');    # 后台注册
    Route::rule('forget', 'admin/index/forget', 'get|post');        # 后台忘记密码
    Route::rule('reset', 'admin/index/reset', 'post');              # 后台重置密码
    Route::rule('index', 'admin/home/index', 'get');                # 后台首页
    Route::rule('signout', 'admin/home/signout', 'post');           # 后台退出

    Route::rule('catelist', 'admin/cate/list', 'get');              # 后台分类列表
    Route::rule('cateadd', 'admin/cate/add', 'get|post');           # 后台分类添加

    Route::rule('adminlist', 'admin/admin/list', 'get');            # 后台管理列表
    Route::rule('adminadd', 'admin/admin/add', 'get|post');         # 后台管理添加
    Route::rule('adminedit/[:id]', 'admin/Admin/edit', 'get|post');       # 后台管理编辑

    Route::rule('system', 'admin/system/index', 'get|post');        # 后台系统设置页
});

// 前台路由写这里
Route::group('index', function (){
    Route::rule('/', 'index/Index/index', 'get|post');              # 后台首页跳转login
    Route::rule('lister','index/Lister/index', 'get|post');
    Route::rule('teacher','index/Lister/teacher', 'get|post');
    Route::rule('Details','index/Details/index', 'get|post');
    Route::rule('Clas','index/Clas/index', 'get|post');
    Route::rule('Player','index/Player/index', 'get|post');
    Route::rule('Zixun','index/Zixun/index', 'get|post');
    Route::rule('Study','index/Study/index', 'get|post');
    Route::rule('Svip','index/Svip/index', 'get|post');
    Route::rule('Login','index/Login/index', 'get|post');
    Route::rule('register','index/Login/register', 'get|post');
});