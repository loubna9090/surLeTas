<?php
require_once "modeles/Client.class.php" ;
class Task{
    private $idTask; 
    private $docTask; 
    private $nameTask; 
    private $topicTask;
    private $idCat; 
    private $idClient; 

    function getIdTask() {
        return $this->idTask;
    }
     function getDocTask() {
        return $this->docTask;
    }
     function getNameTask() {
        return $this->nameTask;
    }
     function getTopicTask() {
        return $this->topicTask;
    }

     function setTopicTask($topicTask) {
        $this->topicTask=$topicTask;
    }
      function setDocTask($docTask) {
        $this->docTask=$docTask;
    }
      function setNameTask($nameTask) {
        $this->nameTask=$nameTask;
    }
    public function getIdCat() {
         return $this->idCat;
    }
     function setIdCat($idCat) {
        $this->idCat=$idCat;
    }

    /*public function __construct(Client $idClient ) { 
      if(is_null($idClient)) $idClient = new Client();
      $this->setCli($idClient);
   }

     public function getidClient() {
         return $this->idClient;
    }
    public function setidClient(client $idClient) {
        $this->client=$idClient;
    }*/

    public static function ajouter(task $task){
        $req=MonPdo::getInstance()->prepare("insert into task ( docTask, nameTask, topicTask, idCat, idClient) values(:docTask, :nameTask, :topicTask,'" .  $_POST["nameCat"]. "', LAST_INSERT_ID() )") ;
        $docTask=$task->getDocTask() ;
        $req->bindParam('docTask', $docTask);
        $nameTask=$task->getNameTask() ;
        $req->bindParam('nameTask', $nameTask);
        $topicTask=$task->getTopicTask() ;
        $req->bindParam('topicTask', $topicTask);
        $req->execute();
        $_SESSION['alert']="la tache a été ajouté !" ;
        return $_SESSION['alert'] ;
    }  

   public static function TaskClient($recupCli){
        $req=MonPdo::getInstance()->prepare("select * from task where idClient=?") ;
    $req->execute([$recupCli]);
    $lesResulats=$req->fetch();
//    var_dump($lesResulats);
    return $lesResulats ;
    }

   
}
