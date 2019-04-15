<?php
session_start();
                        //Front Controller
//-----------Общие настройки------------------//
ini_set('display_errors','on');
error_reporting(E_ALL);

//----------Подключение файловой системы------//
define('ROOT', dirname(__FILE__));            //путь к папке с проектом
require_once (ROOT .'/components/autoload.php');
//-------------Вызов роутера------------------//
$callRouter = new Router();
$callRouter->run();
