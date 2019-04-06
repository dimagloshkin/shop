<?php

class DB
{
   public static function getConnection()
   {
      $paramsPath = ROOT . "/config/db_params.php";
      $params = include ($paramsPath);

      $dns = "mysql:host={$params['host']};dbname={$params['dbname']};charset=utf8";
      $db = new PDO($dns, $params['user'], $params['password']);
      $db->exec("set_names_utf8");

      return $db;
   }
}