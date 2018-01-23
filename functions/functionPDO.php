<?php
function connectionPDO(){
    $dsn = "mysql:dbname=nfactoryblog;
            host=localhost;
            charset=utf8";
    $username = "root";
    $password = "";
    $db = new PDO($dsn, $username, $password);
    try {
        $db = new PDO($dsn, $username, $password);
    }
    catch (PDOException $e){
        //echo ($e -> getMessage());
        $fo = fopen("erreur.txt", "a+");
        fwrite($fo,$e->getMessage());
    }
    return $db;
}