<?php include_once ROOT . '/view/layout/header.php';?>
<section>
   <div class="container">
      <div class="row">

         <h1>Кабинет пользователя</h1>

         <h3>Привет<?php echo ', ' . $user['name'];?> </h3>
         <ul>
            <li><a href="/cabinet/edit">Редактировать данные</a></li>
             <?php
             if($user['role'] == 'admin'){
             ?>
            <li><a href="/admin/">Админпанель</a></li>
            <?php
             }
            ?>
         </ul>

      </div>
   </div>
</section>
<?php include_once ROOT . '/view/layout/footer.php';?>
