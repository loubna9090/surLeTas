<?php
require_once "autentification.php";
if(isset($_GET["choix"])){
$choix=$_GET["choix"] ;

switch($choix)
{
// page de connexion client
    case "formConnect" :
		include "vues/clientForm.php" ;
		break;

// verification de connexion client
	case "verif":
		
		// recupe id client 
	$_SESSION['idCli']=client::recurpidClient($_POST["emailClient"]);
	// verification connection 
    	$rep=Client::verifier($_POST["emailClient"], md5($_POST["mdpClient"])) ; 
		if($rep==true){
			$_SESSION["autorisation"]="OK" ;
			$tasks=task::taskClient(htmlspecialchars($_SESSION['idCli']));
		  	include("vues/dashboardClient.php") ;
			}
			else
			{	
		    include("vues/echecConnect.php") ;
			}
		break ;
// deconnexion
	case "deconnexion":
		Client::deconnect() ;
		include "vues/accueil.php" ;
		break;

// affichage des task dans le tableau de bord client
	case "showTask":
        $tasks=task::taskClient(htmlspecialchars($_SESSION['idCli']));
        include ("vues/dashboardClient.php") ;
        break;

// page ajouter les tasks appartir du tableau de bord client
	case "addTask":
		$categories=categorie::insertCat();
		include "vues/addTask.php" ;
		break;
// ajouter les tasks appartir du tableau de bord client
	case "validAddTask":
		$task= new task() ;
        $task->setNameTask($_POST["nameTask"]) ;
        $task->setTopicTask($_POST["topicTask"]) ;
        $task->setDocTask(basename($_FILES["docTask"]["name"])) ; 
        $categorie=new categorie();
        $categorie->setNameCat($_POST["nameCat"]) ;
        $client=new client();
        $client->getIdClient($_SESSION['idClient']);
        task::taskDbor($task);
        include ("vues/addTask.php");
		break;
}
}