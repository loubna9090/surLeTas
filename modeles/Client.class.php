<?php

class Client{
    private $idClient; 
    private $lastNameClient; 
    private $firstNameClient; 
    private $phoneClient; 
    private $adressClient; 
    private $countryClient;
    private $cityClient;
    private $emailClient; 
    private $mdpClient;
                
    function getIdClient() {
        return $this->idClient;
    }
    function getLastNameClient(){
        return $this->lastNameClient;
    }
    function getFirstNameClient(){
        return $this->firstNameClient;
    }
    function getPhoneClient(){
        return $this->phoneClient;
    }
    function getAdressClient(){
        return $this->adressClient;
    }
     function getCountryClient(){
        return $this->countryClient;
    }
     function getCityClient(){
        return $this->cityClient;
    }
    function getEmailClient(){
        return $this->emailClient;
    }
    function getMdpClient(){
        return $this->mdpClient;
    }
    /*les setter*/
    function setLastNameClient($lastNameClient){
        return $this->lastNameClient=$lastNameClient;
    }
    function setFirstNameClient($firstNameClient){
        return $this->firstNameClient=$firstNameClient;
    }
    function setPhoneClient($phoneClient){
        return $this->phoneClient=$phoneClient;
    }
     function setCountryClient($countryClient){
        return $this->countryClient=$countryClient;
    }
     function setCityClient($cityClient){
        return $this->cityClient=$cityClient;
    }
    
    function setEmailClient($emailClient){
        return $this->emailClient=$emailClient;
    }
    function setAdressClient($adressClient){
        return $this->adressClient=$adressClient;
    }
    function setMdpClient($mdpClient){
        return $this->mdpClient=$mdpClient;
    }
    
    public static function insertClient(client $client){
    $req=MonPdo::getInstance()->prepare("insert into client (lastNameClient, firstNameClient, phoneClient, adressClient, countryClient, cityClient, emailClient, mdpClient) values (:lastNameClient, :firstNameClient, :phoneClient, :adressClient, :countryClient, :cityClient, :emailClient, :mdpClient) ") ;
    $lastNameClient=$client->getLastNameClient() ;
    $req->bindParam('lastNameClient', $lastNameClient);
    
    $firstNameClient=$client->getFirstNameClient() ;
    $req->bindParam('firstNameClient', $firstNameClient);
    
    $phoneClient=$client->getPhoneClient() ;
    $req->bindParam('phoneClient', $phoneClient);
    
    $adressClient=$client->getAdressClient() ;
    $req->bindParam('adressClient', $adressClient);
    
    $countryClient=$client->getCountryClient() ;
    $req->bindParam('countryClient', $countryClient);
    
    $cityClient=$client->getCityClient() ;
    $req->bindParam('cityClient', $cityClient);
    
    $emailClient=$client->getEmailClient() ;
    $req->bindParam('emailClient', $emailClient);
    
    $mdpClient=$client->getMdpClient() ;
    $req->bindParam('mdpClient', $mdpClient);
    
    $nb=$req->execute();
        $_SESSION['alert']="le client a été ajouté !" ;
        return $_SESSION['alert'] ;
}
}