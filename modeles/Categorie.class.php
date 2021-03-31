<?php

class Categorie{
    private $idCat;
    private $nameCat;
    
    function getIdCat(){
        return $this->idCat;
    }
    function getNameCat(){
        return $this->nameCat;
    }
    /*les setter*/
    function setNameCat($nameCat){
        return $this->nameCat=$nameCat;
    }
   
   
    
  public static function insertCat(categorie $nameCat ){
    $req=MonPdo::getInstance()->prepare("SELECT nameCat FROM categorie WHERE nameCat LIKE :nameCat") ;
    $req->setFetchMode(PDO::FETCH_CLASS|PDO::FETCH_PROPS_LATE, 'categorie') ;
    $req->bindValue(':nameCat', '%$nameCat%');
    $nb=$req->execute();
        $_SESSION['alert']="la categorie a été ajouté !" ;
        return $_SESSION['alert'] ;
    
   
    }
}

