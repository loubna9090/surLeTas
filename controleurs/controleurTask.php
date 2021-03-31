<?php
$action=$_GET["action"] ;
require_once "modeles/Client.class.php" ;
require_once "modeles/Categorie.class.php" ;
switch($action)
{
    case "posTask" :
		include ("vues/postTask.php") ;
		break ;
                
    	case "valideTask" :
                echo 'on est dans la validTask';
                /*var_dump($_POST["nameTask"]);*/
                
        $task= new task() ;
        $task->setNameTask($_POST["nameTask"]) ;
        $task->setTopicTask($_POST["topicTask"]) ;
        $task->setDocTask(basename($_FILES["docTask"]["name"])) ;
        task::ajouter($task);
        $client=new client() ;
        $client->setEmailClient($_POST["emailClient"]) ;
        $client->setMdpClient($_POST["mdpClient"]) ;
        $client->setLastNameClient($_POST["lastNameClient"]) ;
        $client->setFirstNameClient($_POST["firstNameClient"]) ;
        $client->setAdressClient($_POST["adressClient"]) ;
        $client->setPhoneClient($_POST["phoneClient"]) ;
        $client->setCountryClient($_POST["countryClient"]) ;
        $client->setCityClient($_POST["cityClient"]) ;
        $categorie=new categorie() ;
        $categorie->setNameCat($_POST["nameCat"]) ;

         
       client::insertClient($client);
        categorie::insertCat($categorie);

     /*var_dump($client->getLastNameClient());    */    
        break ;
}
