<?php
require_once "modeles/Client.class.php" ;
class Task{
    private $idTask; 
    private $docTask; 
    private $nameTask; 
    private $topicTask;
    private $idCat; 
    private $idClient; 
    private $statusTask;
    private $dateTask;

//les getters 
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
    function getStatusTask() {
        return $this->statusTask;
    }
    function getDateTask() {
        return $this->dateTask;
    }

// les setters
    function setDateTask($dateTask) {
        $this->dateTask=$dateTask;
    }
    function setStatusTask($statusTask) {
        $this->statusTask=$statusTask;
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

// les methodes

    // methode insertion des taches 
    public static function add(task $task)
    {
        $req=MonPdo::getInstance()->prepare("insert into task ( docTask, nameTask, topicTask, idCat, idClient, dateTask) values(:docTask, :nameTask, :topicTask,'" .  $_POST["nameCat"]. "', LAST_INSERT_ID(), NOW() )") ;
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

    // methode d'insertion des tache dans la compte client 
    public static function taskDbor (task $task)
    {
        $req=MonPdo::getInstance()->prepare("insert into task ( docTask, nameTask, topicTask, idCat, idClient, dateTask) values(:docTask, :nameTask, :topicTask,'" .  $_POST["nameCat"]. "','".$_SESSION['idClient']."', NOW())") ;
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

    // methode d'affichage des taches dans le tableau de bord client 
    public static function taskClient($idCli)
    {
        $req=MonPdo::getInstance()->prepare("select * from task where idClient=:idCli") ;
        $req->setFetchMode(PDO::FETCH_CLASS|PDO::FETCH_PROPS_LATE, 'task') ;
        $req->execute(['idCli'=>$idCli]);
        $lesResulats=$req->fetchAll();
        return $lesResulats ;
    }

   
}
