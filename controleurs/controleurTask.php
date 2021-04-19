<?php
$action=$_GET["action"] ;
require_once "modeles/Client.class.php" ;
require_once "modeles/Categorie.class.php" ;
switch($action)
{
    case "posTask" :
        $categories=categorie::insertCat();
		include ("vues/postTask.php") ;
		break ;
                
    	case "valideTask" :
        
              /*var_dump($_POST["nameTask"]);*/
        $client=new client() ;
        $client->setEmailClient($_POST["emailClient"]) ;
        $client->setMdpClient(md5($_POST["mdpClient"])) ;
        $client->setLastNameClient($_POST["lastNameClient"]) ;
        $client->setFirstNameClient($_POST["firstNameClient"]) ;
        $client->setAdressClient($_POST["adressClient"]) ;
        $client->setPhoneClient($_POST["phoneClient"]) ;
        $client->setCountryClient($_POST["countryClient"]) ;
        $client->setCityClient($_POST["cityClient"]) ;
        $task= new task() ;
        $task->setNameTask($_POST["nameTask"]) ;
        $task->setTopicTask($_POST["topicTask"]) ;
        $task->setDocTask(basename($_FILES["docTask"]["name"])) ; 
        $categorie=new categorie();
        $categorie->setNameCat($_POST["nameCat"]) ;
        client::insertClient($client);

        task::ajouter($task);
        include ("vues/taskOk.php");
     /*var_dump($client->getLastNameClient());    */    
        break ;

        case "showTask":
        $recupCli=$_SESSION['idclient']=$id;
        $recupCli= 104;

        $tasks=task::TaskClient($recupCli);
           include ("vues/dashboardClient.php") ;
            break;
}
