<?php
class AdminController extends AdminBase
{

   public function actionIndex()
   {
      // Проверка доступа
      self::checkAdmin();
      // Подключаем вид
      require_once(ROOT . '/view/admin/index.php');
      return true;
   }
}