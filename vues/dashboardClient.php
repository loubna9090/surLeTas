<?php
if($_SESSION["autorisation"]=="OK"){
  ?>
<!DOCTYPE html>
<html lang="en" dir="ltr">
 <head>
   <meta charset="utf-8">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>Sur le tas - Tableau de bord</title>
   <link rel="stylesheet" href="css/dashboard/style.css">
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
   <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js" charset="utf-8"></script>
 </head>


   <div class="menu-btn">
     <i class="fas fa-bars"></i>
   </div>
   <div class="side-bar">
     <div class="close-btn">
       <i class="fas fa-times"></i>
     </div>
     <div class="menu">
       <div class="item active"><a href="dashboardClient.php"><i class="fas fa-desktop"></i>Tableau de bord </a></div>
       <div class="item">
         <a class="sub-btn"><i class="fas fa-tasks "></i>Projets<i class="fas fa-angle-right dropdown"></i></a>
         <div class="sub-menu">
           <a href="index.php?uc=client&choix=showTask" class="sub-item">Afficher</a>
           <a href="index.php?uc=client&choix=addTask" class="sub-item">Ajouter </a>
           <a href="#" class="sub-item">Modifier</a>
           <a href="#" class="sub-item">Supprimer</a>
         </div>
       </div>
       <div class="item">
         <a class="sub-btn"><i class="fas fa-envelope"></i>Messages<i class="fas fa-angle-right dropdown"></i></a>
         <div class="sub-menu">
           <a href="#" class="sub-item">Messgae reçu</a>
           <a href="#" class="sub-item">Chat</a>
         </div>
       </div>

       <div class="item"><a href="#"><i class="fas fa-user"></i>Profil</a></div>
       
       <div class="item"><a href="#"><i class="fas fa-cog"></i>Paramétre</a></div>
     </div>
   </div>
   <section class="main">
    <div class="container">
     <h1 class="title1">Bienvenu dans le tableau de bord</h1>
 <div class="row">
 <div class="col-md-12 ">
<h2 class="title2">Liste des projets </h2>
      
    </div>
</div>
<div class="row">
 <div class="col-md-12">
    <table class="table">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">Titre </th>
      <th scope="col">Description </th>
      <th scope="col">Date</th>
      <th scope="col">Status</th>
    </tr>
  </thead>
  <tbody>
                    <?php 

if (is_array($tasks))
{
      foreach((array)$tasks as $task)
        {
         
/*         var_dump($task);*/
          echo "
    <tr>
      <th scope='row'>".$task->getIdTask() ."</th>
      <td>".$task->getNameTask() ."</td>
      <td>".$task->getTopicTask() ."</td>
      <td>".$task->getDateTask() ."</td>
      <td>".$task->getStatusTask() ."<i class='fas fa-circle color-att'></i></td>

    </tr>
    " ;
  
    }
        }else{
          echo "erreur";
        }
        ?>
  </tbody>
</table>
</div>
</div>
</div>
   </section>

   <script type="text/javascript">
   $(document).ready(function(){
     //jquery for toggle sub menus
     $('.sub-btn').click(function(){
       $(this).next('.sub-menu').slideToggle();
       $(this).find('.dropdown').toggleClass('rotate');
     });

     //jquery for expand and collapse the sidebar
     $('.menu-btn').click(function(){
       $('.side-bar').addClass('active');
       $('.menu-btn').css("visibility", "hidden");
     });

     $('.close-btn').click(function(){
       $('.side-bar').removeClass('active');
       $('.menu-btn').css("visibility", "visible");
     });
   });
   </script>

 </body>
</html>
      <?php
}
  ?>