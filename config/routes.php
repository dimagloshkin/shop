<?php
return array(
    'product/([0-9]+)' => 'product/view/$1',
    'catalog' => 'catalog/index',
    'category/([0-9]+)/page-([0-9]+)' => 'catalog/category/$1/$2',
    'category/([0-9]+)' => 'catalog/category/$1',
//----------------------Корзина покупок-------------------------------//
    'cart/delete/([0-9]+)' => 'cart/delete/$1',
    'cart/add/([0-9]+)' => 'cart/add/$1',
    'cart/checkout' => 'cart/checkout',
    'cart' => 'cart/index',

//-------------Регистрация, авторизация, выход из ЛК -----------------//
    'user/register' => 'user/register',
    'user/login' => 'user/login',
    'user/logout' => 'user/logout',
//--------------------------------------------------------------------//
    'cabinet/edit' => 'cabinet/edit',
    'cabinet' => 'cabinet/index',
//-------------------Управление товарами------------------------------//
    'admin/product/update/([0-9]+)' => 'adminProduct/update/$1',
    'admin/product/delete/([0-9]+)' => 'adminProduct/delete/$1',
    'admin/product/create' => 'adminProduct/create',
    'admin/product' => 'adminProduct/index',
//----------------------Управление категориями------------------------//
    'admin/category/update/([0-9]+)' => 'adminCategory/update/$1',
    'admin/category/delete/([0-9]+)' => 'adminCategory/delete/$1',
    'admin/category/create' => 'adminCategory/create',
    'admin/category' => 'adminCategory/index',
//--------------------Админпанель-------------------------------------//
    'admin' => 'admin/index',
//--------------------------------------------------------------------//
    '' => 'site/index',
    );