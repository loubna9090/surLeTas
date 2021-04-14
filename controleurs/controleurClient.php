<?php
if(isset($_GET["choix"])){
$choix=$_GET["choix"] ;

switch($choix)
{
    case "formConnect" :
		include "vues/clientForm.php" ;
		break;
	
	case "verif":
		client::recurpidClient();
    	$rep=Client::verifier($_POST["emailClient"], md5($_POST["mdpClient"])) ; 
		if($rep==true){
			$_SESSION["autorisation"]="OK" ;
		  	include("vues/dashboardClient.php") ;
			// $clientTask=task::TaskClient();
			// include ("vues/listetask.php") ;
			}
			else
			{	
		    include("vues/echecConnect.php") ;
			}
		break ;
	
	case "deconnexion":
		Client::deconnecter() ;
		include "vues/accueil.php" ;
		break;
}
}