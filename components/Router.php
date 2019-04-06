<?php

class Router
{
   private $routes; //массив для хранения маршрутов

   public function __construct()
   {
      $routesPath = ROOT . '/config/routes.php';
      $this->routes = include "$routesPath";
   }//Присваиваем $routes массив с маршрутами
   private function getUri()
   {
      if (!empty($_SERVER['REQUEST_URI'])) {
         return trim($_SERVER['REQUEST_URI'], '/');
      }
   }//Получаем строку запроса

   public function run()
   {
//------------Получаем строку запроса-------------//
      $uri = $this->getUri();
//------------Проверим совпадения запроса с маршрутами-----//
      foreach ($this->routes as $uriPattern => $path) {
         if (preg_match("~$uriPattern~", $uri)) {
            $internalRout = preg_replace("~$uriPattern~", $path, $uri);
            $segments = explode('/', $internalRout);
            $controllerName = ucfirst(array_shift($segments)) . 'Controller';
            $actionName = 'action' . ucfirst(array_shift($segments));
            $parameters = $segments;
//--------Подключение(передать управление) контроллеру-----------------------//
            $controllerFile = ROOT . '/controllers/' . $controllerName . '.php';
            if (file_exists($controllerFile)) {
               include_once($controllerFile);
//---------Подключение метода из контроллера через созданый обЪект------------//
            $controllerObject = new $controllerName();
            $result = call_user_func_array(array($controllerObject, $actionName), $parameters);
               if ($result != null){
               break;
               }
            }
         }
      }
   }


}//Анализ запроса и передача управления на нужный контроллер
