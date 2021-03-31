<?php

class Task{
    private $idTask; 
    private $docTask; 
    private $nameTask; 
    private $topicTask;
/*    private $idCat;  
    private $idClient; */
    
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
/*    function getIdCat() {
        return $this->idCat;
    }
    function getIdClient() {
        return $this->idClient;
    }*/
    
 
  /*  
    function setEmailClient($emailClient) {
        return client::insertClient($this->emailClient);
    }
    function getMdpClient() {
        return client::insertClient($this->mdbClient);
    }
    function getAdressClient() {
        return client::insertClient($this->adressClient);
    }
    function getCountryClient() {
        return client::insertClient($this->countryClient);
    }
    function getCityClient() {
        return client::insertClient($this->cityClient);
    }
    function getPhoneClient() {
        return client::insertClient($this->phoneClient);
    }
    function getLastNameClient(){
       return client::insertClient($this->lastNameClient) ;
    }
    function getFirstNameClient(){
        return client::insertClient($this->firstNameClient) ;
    }*/
   

    public static function ajouter(task $task){
        $req=MonPdo::getInstance()->prepare("insert into task ( docTask, nameTask, topicTask) values(:docTask, :nameTask, :topicTask )") ;
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
    
}
