<?php
$action=$_GET["action"] ;
require_once "modeles/Client.class.php" ;
require_once "modeles/Categorie.class.php" ;
switch($action)
{
// page de formulaire 
    case "posTask" :
        $categories=categorie::insertCat();
		include ("vues/postTask.php") ;
		break ;

// insertion de la task et du client avec verification de lieuhtenticité de l'email et sa fiabilité 
    	case "valideTask" :
        $client=new client() ; 
        if (filter_var($_POST["emailClient"], FILTER_VALIDATE_EMAIL))  
         {
            $client->setEmailClient($_POST["emailClient"]) ;
        }
        else{
            echo "L'email n'est pas valide";
            include ("vues/postTask.php") ;
        }
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
        $rep=Client::exist($_POST["emailClient"]) ; 
        if($rep==false){
            client::insertClient($client);
            task::add($task);
            include ("vues/taskOk.php"); 
        }
        else{
            include ("vues/mailExist.php") ;
        }
        break ;

        
}
