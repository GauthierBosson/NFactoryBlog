<?php
function arrayLogin(){
    $tabErreur = array();
    $mail = $_POST['mail'];
    $password = $_POST['password'];
    if ($mail == "" || !filter_var($mail , FILTER_VALIDATE_EMAIL))
        array_push($tabErreur, "Veuillez saisir une adresse");
    if ($password == "")
        array_push($tabErreur, "Veuillez saisir un mot de passe");
    if (count($tabErreur) > 0) {
        $message = "<ul>";
        for ($i = 0 ; $i < count($tabErreur) ; $i++) {
            $message .= "<li>" . $tabErreur[$i] . "</li>";
        }
        $message .= "</ul>";
        echo ($message);
        include ("./include/formLogin.php");
    }
}