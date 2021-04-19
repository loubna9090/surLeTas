<?php
/*$adssmail= "loubnadamri12@gmail.com";*/
if(isset($_GET["choix"])){
$choix=$_GET["choix"] ;

switch($choix)
{
    case "formConnect" :
		include "vues/clientForm.php" ;
		break;
	
	case "verif":
		$id=client::recurpidClient($_POST["emailClient"]);
    	$rep=Client::verifier($_POST["emailClient"], md5($_POST["mdpClient"])) ; 
		if($rep==true){
			$_SESSION["autorisation"]="OK" ;
			$tasks=task::TaskClient($id);
		  	include("vues/dashboardClient.php") ;

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