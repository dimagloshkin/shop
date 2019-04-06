<?php
return array(
    'product/([0-9]+)' => 'product/view/$1',                         //ProductController actionView
    'catalog' => 'catalog/index',                                    //CatalogController actionIndex
    'category/([0-9]+)/page-([0-9]+)' => 'catalog/category/$1/$2',   //
    'category/([0-9]+)' => 'catalog/category/$1',                    //CatalogController actionCategory c параметром $1
    'user/register' => 'user/register',                              //Регистрация
    'user/login' => 'user/login',
    'user/logout' => 'user/logout',
    'cabinet/edit' => 'cabinet/edit',
    'cabinet' => 'cabinet/index',
    '' => 'site/index',                                              //SiteController actionIndex
    );