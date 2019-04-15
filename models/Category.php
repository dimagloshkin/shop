<?php

class Category
{
   public static function getCategoriesList()
   {
   $db = DB::getConnection();
   $categoryList = [];

   $result = $db->query("SELECT `id`,`name` FROM `category` ORDER BY `sort_order`");

   $i = 0;
       while( $row = $result->fetch(PDO::FETCH_ASSOC)){
               $categoryList[$i]['id'] = $row['id'];
               $categoryList[$i]['name'] = $row['name'];
               $i++;
       }

      return $categoryList;
   }
   public static function getCategoriesListAdmin()
   {
      // Соединение с БД
      $db = Db::getConnection();
      // Запрос к БД
      $result = $db->query('SELECT id, name, sort_order, status FROM category ORDER BY sort_order ASC');
      // Получение и возврат результатов
      $categoryList = array();
      $i = 0;
      while ($row = $result->fetch()) {
         $categoryList[$i]['id'] = $row['id'];
         $categoryList[$i]['name'] = $row['name'];
         $categoryList[$i]['sort_order'] = $row['sort_order'];
         $categoryList[$i]['status'] = $row['status'];
         $i++;
      }
      return $categoryList;
   }
   public static function createCategory($name, $sortOrder, $status)
   {
      // Соединение с БД
      $db = Db::getConnection();
      // Текст запроса к БД
      $sql = 'INSERT INTO category (name, sort_order, status) '
          . 'VALUES (:name, :sort_order, :status)';
      // Получение и возврат результатов. Используется подготовленный запрос
      $result = $db->prepare($sql);
      $result->bindParam(':name', $name, PDO::PARAM_STR);
      $result->bindParam(':sort_order', $sortOrder, PDO::PARAM_INT);
      $result->bindParam(':status', $status, PDO::PARAM_INT);
      return $result->execute();
   }
   public static function getCategoryById($id)
   {
      // Соединение с БД
      $db = Db::getConnection();
      // Текст запроса к БД
      $sql = 'SELECT * FROM category WHERE id = :id';
      // Используется подготовленный запрос
      $result = $db->prepare($sql);
      $result->bindParam(':id', $id, PDO::PARAM_INT);
      // Указываем, что хотим получить данные в виде массива
      $result->setFetchMode(PDO::FETCH_ASSOC);
      // Выполняем запрос
      $result->execute();
      // Возвращаем данные
      return $result->fetch();
   }
   public static function updateCategoryById($id, $name, $sortOrder, $status)
   {
      // Соединение с БД
      $db = Db::getConnection();
      // Текст запроса к БД
      $sql = "UPDATE category
            SET 
                name = :name, 
                sort_order = :sort_order, 
                status = :status
            WHERE id = :id";
      // Получение и возврат результатов. Используется подготовленный запрос
      $result = $db->prepare($sql);
      $result->bindParam(':id', $id, PDO::PARAM_INT);
      $result->bindParam(':name', $name, PDO::PARAM_STR);
      $result->bindParam(':sort_order', $sortOrder, PDO::PARAM_INT);
      $result->bindParam(':status', $status, PDO::PARAM_INT);
      return $result->execute();
   }
   public static function deleteCategoryById($id)
   {
      // Соединение с БД
      $db = Db::getConnection();
      // Текст запроса к БД
      $sql = 'DELETE FROM category WHERE id = :id';
      // Получение и возврат результатов. Используется подготовленный запрос
      $result = $db->prepare($sql);
      $result->bindParam(':id', $id, PDO::PARAM_INT);
      return $result->execute();
   }
   public static function getStatusText($status)
   {
      switch ($status) {
         case '1':
            return 'Отображается';
            break;
         case '0':
            return 'Скрыта';
            break;
      }
   }

}