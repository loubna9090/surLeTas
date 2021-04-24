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
  <div class="dis_center">
  <form class="bg_white"  method="POST" action="index.php?uc=client&choix=validAddTask" enctype='multipart/form-data'>
    <div class="mb-3">
      <label for="formGroupExampleInput" class="form-label">Nom du Projet</label>
      <input type="text" class="form-control" id="formGroupExampleInput" placeholder="Projet..." name="nameTask">
    </div>

    <div class="mb-3">
      <label for="exampleFormControlTextarea1" class="form-label">Parlez-nous de votre projet</label>
      <textarea class="form-control" id="exampleFormControlTextarea1" rows="3" name="topicTask"></textarea>
    </div>

    <div class="mb-3">
      <label for="formFile" class="form-label">Document joint </label>

      <input class="form-control" type="file" id="formFile" name="docTask">
    </div>
     <div class="mb-3 col-md-12">
      <label  class="form-label">Domaine du projet</label>
      <select id="choice" class="form-select" aria-label="Default select example" required="required"   name="nameCat">
<!--       <option selected >Sélectionné</option> -->
      <?php 
      foreach($categories as $categorie)
        {

      echo "<option value='".$categorie->getIdCat() . "'>".$categorie->getNameCat() ."</option>";
       } 
      ?>


    </select>
    </div>
    <input type="hidden" name="idClient" >
    <div class="mb-3 col-12">
    <button type="submit" class="btn btn-tas_color">Envoyer</button>
  </div>
    </div>  
  </form>
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
      