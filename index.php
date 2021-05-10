<?php
session_start() ;
require_once "modeles/monPdo.php" ;
require_once "modeles/Task.class.php" ;
require_once "modeles/Client.class.php" ;
require_once "modeles/Categorie.class.php" ;
require_once "modeles/Categorie.class.php" ;


if(empty($_GET["uc"]))
{
    $uc="accueil" ;

} 
else {
$uc=$_GET["uc"] ;    
}

switch($uc){
    case "accueil":
        include("vues/accueil.php");
        break ;
             
 	case "task":
     include("controleurs/controleurTask.php") ;
	break ;

	case "client" :
	 include ("controleurs/controleurClient.php");
	break;
}

include("vues/footer.php");