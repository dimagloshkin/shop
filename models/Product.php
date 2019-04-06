<?php

class Product
{
   const SHOW_DY_DEFAULT = 3;//количество товаров которые мы хотим получить

   public static function getLatestProduct($count = self::SHOW_DY_DEFAULT)
   {
      $count = intval($count);
      $db = DB::getConnection();
      $productsList = [];

      $result = $db->query("SELECT `id`,`name`,`price`,`image`,`is_new` FROM `product` "
          . "WHERE `status` = '1' "
          . "ORDER BY `id` DESC LIMIT " . $count);

      $i = 0;
      while ($row = $result->fetch(PDO::FETCH_ASSOC)) {
         $productsList[$i]['id'] = $row['id'];
         $productsList[$i]['name'] = $row['name'];
         $productsList[$i]['price'] = $row['price'];
         $productsList[$i]['image'] = $row['image'];
         $productsList[$i]['is_new'] = $row['is_new'];
         $i++;
      }
      return $productsList;
   }//получение массива с последними товарами

   public static function getProductsListByCategory($categoryId = false, $page = 1)
   {
      if ($categoryId) {
         $db = Db::getConnection();
         $products = array();
         $offset = ($page - 1) * self::SHOW_DY_DEFAULT;

         $result = $db->query("SELECT `id`,`name`,`price`,`image`,`is_new` FROM `product` "
             . "WHERE `status` = '1' AND `category_id` = '$categoryId' "
             . "ORDER BY `id` DESC LIMIT "
             . self::SHOW_DY_DEFAULT
             . " OFFSET " . $offset);

         $i = 0;
         while ($row = $result->fetch()) {
            $products[$i]['id'] = $row['id'];
            $products[$i]['name'] = $row['name'];
            $products[$i]['image'] = $row['image'];
            $products[$i]['price'] = $row['price'];
            $products[$i]['is_new'] = $row['is_new'];
            $i++;
         }
         return $products;
      }
   }//получаем список категорий

   public static function getProductById($id)
   {
      $id = intval($id);
      if ($id) {
         $db = Db::getConnection();
         $result = $db->query("SELECT * FROM `product` WHERE `id` = " . $id);
         $result->setFetchMode(PDO::FETCH_ASSOC);
         return $result->fetch();
      }
   }

   public static function getTotalProductsInCategory($categoryId)
   {
      $db = DB::getConnection();
      $result = $db->query('SELECT count(`id`) AS count FROM `product` '
            . ' WHERE `status` = "1" AND `category_id` ="' . $categoryId .'"');
      $result->setFetchMode(PDO::FETCH_ASSOC);
      $row = $result->fetch();
      return $row['count'];
   }
}