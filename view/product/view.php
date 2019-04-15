<?php
include_once ROOT . '/view/layout/header.php';
?>
<section>
   <div class="container">
      <div class="row">
         <div class="col-sm-3">
            <div class="left-sidebar">
               <h2>Каталог</h2>
               <div class="panel-group category-products" id="accordian"><!--category-productsr-->
                   <div class="panel-group category-products">
                      <?php
                      foreach ($categories as $categoryItem) {
                         ?>
                          <div class="panel panel-default">
                              <div class="panel-heading">
                                  <h4 class="panel-title"><a href="/category/<?php echo $categoryItem['id']; ?>">
                                        <?php echo $categoryItem['name']; ?></a></h4>
                              </div>
                          </div>

                      <?php }
                      ?>
                   </div>
               </div><!--/category-products-->

            </div>
         </div>

         <div class="col-sm-9 padding-right">
            <div class="product-details"><!--product-details-->
               <div class="row">
                  <div class="col-sm-5">
                     <div class="view-product">
                        <img src="<?php echo Product::getImage($product['id']); ?>" alt="" />
                     </div>
                  </div>
                  <div class="col-sm-7">
                     <div class="product-information"><!--/product-information-->
                        <img src="/template/images/product-details/new.jpg" class="newarrival" alt="" />
                        <h2><?php echo $product['name'];?></h2>
                        <p>Код товара: <?php echo $product['code'];?></p>
                        <span>
                                            <span><?php echo $product['price'];?></span>
                                            <label>Количество:</label>
                                            <input type="text" value="3" />
                                            <button type="button" class="btn btn-fefault cart">
                                                <i class="fa fa-shopping-cart"></i>
                                                В корзину
                                            </button>
                                        </span>
                        <p><b>Наличие:</b> <?php if($product['status'] == 1){echo ' На складе';}else{echo 'Отсутствует';}?></p>
                        <p><b>Состояние:</b><?php if($product['is_new'] == 1){echo ' Новое';}else{ echo ' Недавнего производства';}?></p>
                        <p><b>Производитель:</b><?php echo $product['brand']?></p>
                     </div><!--/product-information-->
                  </div>
               </div>
               <div class="row">
                  <div class="col-sm-12">
                     <h5>Описание товара</h5>
                     <p><?php echo $product['description'];?></p>

                  </div>
               </div>
            </div><!--/product-details-->

         </div>
      </div>
   </div>
</section>

<br/>
<br/>
<?php
include_once ROOT . '/view/layout/footer.php';
?>

<script src="/template/js/jquery.js"></script>
<script src="/template/js/price-range.js"></script>
<script src="/template/js/jquery.scrollUp.min.js"></script>
<script src="/template/js/bootstrap.min.js"></script>
<script src="/template/js/jquery.prettyPhoto.js"></script>
<script src="/template/js/main.js"></script>
</body>
</html>