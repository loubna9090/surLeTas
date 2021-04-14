<?php

class Client{
    public $idClient; 
    private $lastNameClient; 
    private $firstNameClient; 
    private $phoneClient; 
    private $adressClient; 
    private $countryClient;
    private $cityClient;
    private $emailClient; 
    private $mdpClient;
                
    function getidClient() {
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
    
    $req->execute();
        $_SESSION['alert']="le client a été ajouté !" ;
        return $_SESSION['alert'] ;
}


    public static function verifier($emailClient, $mdpClient){
        $req=MonPdo::getInstance()->prepare("select * from client where emailClient =:emailClient and mdpClient=:mdpClient") ;
        $req->setFetchMode(PDO::FETCH_CLASS|PDO::FETCH_PROPS_LATE,'client') ;
        $req->bindParam('emailClient', $emailClient);
        $req->bindParam('mdpClient', $mdpClient);
        $req->execute();
        $leResultat=$req->fetchAll();
        $nb_lignes= count($leResultat) ;
        
        if ($nb_lignes==0) 
        {
        $rep= false;
        }
        else
        {
        $rep=true ;
        }   
                
        return $rep ;
       }
       

       
    public static function deconnecter()
       {
           unset($_SESSION["autorisation"]) ;
       }


    public static function recurpidClient(){
        $req=MonPdo::getInstance()->prepare("select idClient from client where emailClient=:emailClient");
        $req->setFetchMode(PDO::FETCH_CLASS|PDO::FETCH_PROPS_LATE, 'client') ;
        $req->execute(array(':emailClient'=>$emailClient));
        $leResultat=$req->fetch();
        return $leResultat ;
    }

}
