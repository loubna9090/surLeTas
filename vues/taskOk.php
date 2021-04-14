<?php $displayHeader = true; ?>
<section id="slider"><!-- slider  -->
  <div class="container-fluid">
    <div class="row bg-black  block_slide">
      <div class="col-lg-12 w-50">
        <div class="title"> 

          <h1 class="txt-white"> Votre projet a été envoyer avec succée <i class=" tas_color fas fa-clipboard-check"></i> </h1>
          <h2 class="tas_color  my-3 "> On s'occupe du reste</h2>
        </div>
        
      </div>

    </div>
  </div>
</section> <!-- fin slider -->

<section id="formConnect">
<div class="container dis_center my-5" >
<div class="row">
<div class="col-md-8 text-center">
<h2> Veuillez entrer vos identifiants de connexion  </h2>
</div>
</div>

<form method="POST" action='index.php?uc=client&choix=verif'>
  <div class="form-group">
    <label>Identifiant</label>
    <input type="text" class="form-control" name="emailClient"  placeholder="votre e-mail">
    </div>
  <div class="form-group mt-3">
    <label>Mot de passe</label>
    <input type="password" class="form-control" name="mdpClient" placeholder="votre mot de passe ?">
  </div>
 <div class="g-recaptcha" data-sitekey="6LcxndoUAAAAAJOvuE1ippjECty28WQAG54owwGk"></div>
  <input type="submit" class="btn btn-tas_color mt-3" value="Connexion">
</form>


</div>
</section>




