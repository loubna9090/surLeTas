<?php

class Task{
    private $idTask; 
    private $docTask; 
    private $nameTask; 
    private $topicTask; 
    private $idCat; 
    private $idDeveloper; 
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
      function setNameTask() {
        $this->nameTask=$nameTask;
    }
    
 
    function getNameCat($nameCat) {
        return categorie::insertCat($this->nameCat);
    }
    function getEmailClient() {
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
    }
    
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
     
    
    
    
    
}
