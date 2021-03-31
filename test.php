<?php
class MonPdo
{

private static $serveur='mysql:host=localhost';
private static $bdd='dbname=jobboysn'; 
private static $user='root' ; 
private static $mdp='' ;
private static $monPdo;
private static $unPdo = null;

//	Constructeur privé, crée l'instance de PDO qui sera sollicitée
//	pour toutes les méthodes de la classe
private function __construct()
{
    MonPdo::$unPdo = new PDO(MonPdo::$serveur.';'.MonPdo::$bdd, MonPdo::$user, MonPdo::$mdp);
    MonPdo::$unPdo->query("SET CHARACTER SET utf8");
    MonPdo::$unPdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
}
public function __destruct()
{ 
    MonPdo::$unPdo = null;
}
/**
*	Fonction statique qui cree l'unique instance de la classe
* Appel : $instanceMonPdo = MonPdo::getMonPdo();
*	@return l'unique objet de la classe MonPdo
*/
public static function getInstance()
{
    if(self::$unPdo == null)
    {
        self::$monPdo= new MonPdo();
    }
    return self::$unPdo;
}

}
      
   $docTask= "images/image.png"; 
   $nameTask= "test1"; 
   $topicTask = "testts"; 
   $nameCat="design";
   
   public static function ajouter(task $task)
    {
        
        $req=MonPdo::getInstance()->prepare("insert into task( docTask, nameTask, topicTask, nameCat) values( :docTask, :nameTask, :topicTask, :nameCat)") ;
        $docTask=$task->getDocTask() ;
        $req->bindParam('docTask', $docTask);
        $nameTask=$task->getNameTask() ;
        $req->bindParam('nameTask', $nameTask);
        $topicTask=$task->getTopicTask() ;
        $req->bindParam('topicTask', $topicTask);
        $nameCat=$categorie->getNameCat() ;
        $req->bindParam('nameCat', $nameCat);

        $req->execute();
       
        $_SESSION['alert']="le le projet a été ajouté !" ;
        return $_SESSION['alert'] ;
       
    
    }

    

