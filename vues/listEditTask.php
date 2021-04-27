
<?php
if(isset($_SESSION["autorisation"]) and $_SESSION["autorisation"]=="OK"){
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
       <div class="item active"><a href="index.php?uc=client&choix=bienvenu"><i class="fas fa-desktop"></i>Tableau de bord </a></div>
       <div class="item">
         <a class="sub-btn"><i class="fas fa-tasks "></i>Projets<i class="fas fa-angle-right dropdown"></i></a>
         <div class="sub-menu">
           <a href="index.php?uc=client&choix=showTask" class="sub-item">Afficher</a>
           <a href="index.php?uc=client&choix=addTask" class="sub-item">Ajouter </a>
           <a href="index.php?uc=client&choix=listEditTask"class="sub-item">Modifier</a>
           <a href="index.php?uc=client&choix=listDeleteTask" class="sub-item">Supprimer</a>
         </div>
       </div>
       <div class="item">
         <a class="sub-btn"><i class="fas fa-envelope"></i>Messages<i class="fas fa-angle-right dropdown"></i></a>
         <div class="sub-menu">
           <a href="#" class="sub-item">Messgae reçu</a>
           <a href="#" class="sub-item">Chat</a>
         </div>
       </div>

       <div class="item"><a href="index.php?uc=client&choix=editProfilClient"><i class="fas fa-user"></i>Profil</a></div>
       
       <div class="item"><a href="#"><i class="fas fa-cog"></i>Paramétre</a></div>
     </div>
   </div>
   <section>
    <div class="container">
     <h1 class="title1 dis_center my-5">Modifier les Projets &nbsp; <i class="tas_color fas fa-edit"></i></h1> </div>
   </section>
   <section class="main">
    <div class="container">
<div class="row">
 <div class="col-md-12">
  <h4 class="tas_color"> liste des projets</h4>
    <table class="table">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">Titre </th>
      <th scope="col">Description </th>
      <th scope="col">Date</th>
      <th scope="col">Status</th>
      <th scope="col">Modifier</th>
    </tr>
  </thead>
  <tbody>
                    <?php 


      foreach($tasks as $task)
        {
         
/*         var_dump($task);*/
          echo "
    <tr>
      <th scope='row'>".$task->getIdTask() ."</th>
      <td>".$task->getNameTask() ."</td>
      <td>".$task->getTopicTask() ."</td>
      <td>".$task->getDateTask() ."</td>
      <td>".$task->getStatusTask() ."<i class='fas fa-circle color-att'></i></td>
     <td><a id='mywish' href='index.php?uc=client&choix=editTask&idTask=".$task->getIdTask() ."' class='btn btn-success'><i class='fas fa-edit'></i></a></td> 
      

    </tr>
    " ;
  
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