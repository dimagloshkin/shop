<?php

class SiteController
{
   public function actionIndex()
   {
      $categories = array();
      $categories = Category::getCategoriesList();
      $LatestProduct = array();
      $LatestProduct = Product::getLatestProduct(3);

      require_once ROOT . '/view/site/index.php';
      return true;
   }


}