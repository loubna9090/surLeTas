<?php 
$displayHeader = true; 
require_once 'modeles/monPdo.php';
require_once "autentification.php";
init();
if ( isset( $_POST['connexion'])) {
  if (isset($_POST['emailClient']) && isset($_POST['mdpClient']) && empty($_POST['emailClient']) && empty($_POST['mdpClient'])) 
  {
   $emailUser=$_POST['emailClient'] ;
   $mdpUser= $_POST['mdpClient'];
   $sql="select * from client where emailClient=:emailClient";
   $fileds=['emailClient'=>$emailUser];
   $req=MonPdo::getInstance()->request($sql, $fileds);
    if ($req==true) 
    {
      if (password_verify($mdpUser , $req->mdpClient)) {

        $_SESSION['emailClient']= $emailUser;
        $_SESSION['idClient']=$req->idClient;
        include "vues/accueil.php";
      }
    }else{
  echo "erreur";
}

   }

}
?>
<section id="slider"><!-- slider  -->
  <div class="container-fluid">
    <div class="row bg-black  block_slide">
      <div class="col-lg-12 w-50">
        <div class="title"> 

          <h1 class="txt-white"> Veuillez entrer vos identifiants de connexion   <i class=" tas_color fas fa-id-card-alt"></i> </h1>
        </div>
        
      </div>

    </div>
  </div>
</section> <!-- fin slider -->

<section id="formConnect">
<div class="container dis_center my-5" >


  <form method="POST" action=''>
  <div class="form-group">
    <label>Identifiant</label>
    <input type="text" class="form-control" name="emailClient"  placeholder="votre e-mail">
    </div>
  <div class="form-group mt-3">
    <label>Mot de passe</label>
    <input type="password" class="form-control" name="mdpClient" placeholder="votre mot de passe ?">
  </div>
 <div class="g-recaptcha" data-sitekey="6LcxndoUAAAAAJOvuE1ippjECty28WQAG54owwGk"></div>
  <input type="submit" class="btn btn-tas_color mt-3" value="connexion">
</form>




</div>
</section>




