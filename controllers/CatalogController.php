<?php


class CatalogController
{
   public function actionIndex()
   {
      $categories = array();
      $categories = Category::getCategoriesList();

      $LatestProduct = array();
      $LatestProduct = Product::getLatestProduct(3);


      require_once ROOT . '/view/catalog/index.php';
      return true;
   }

   public function actionCategory($categoryId, $page = 1)
   {

      $categories = array();
      $categories = Category::getCategoriesList();

      $categoryProducts = array();
      $categoryProducts = Product::getProductsListByCategory($categoryId, $page);

      $total = Product::getTotalProductsInCategory($categoryId);
      $pagination = new Pagination($total, $page, Product::SHOW_DY_DEFAULT,'page-');

      include_once ROOT . '/view/catalog/category.php';

      return true;
   }


}