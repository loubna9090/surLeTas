TaskClient($recupCli){
        $req=MonPdo::getInstance()->prepare("select * from task where idClient=?") ;
    $req->execute([$recupCli]);
    $lesResulats=$req->fetch();
//    var_dump($lesResulats);
    return $lesResulats ;
    }