<h1>login</h1>
<?php
if(isset($_POST["formulaire"])) {
    $tabErreur = array();
    $mail = $_POST['mail'];
    $mdp = $_POST['password'];
    if($_POST["mail"] == "")
        array_push($tabErreur, "Veuillez saisir votre e-mail");
    if($_POST["password"] == "")
        array_push($tabErreur, "Veuillez saisir un mot de passe");
    if(count($tabErreur) != 0) {
        $message = "<ul>";
        for($i = 0 ; $i < count($tabErreur) ; $i++) {
            $message .= "<li>" . $tabErreur[$i] . "</li>";
        }
        $message .= "</ul>";
        echo($message);
        include("./include/formLogin.php");
    }
    else {
        $connexion = mysqli_connect("localhost", "root", "", "nfactoryblog");
        if (!$connexion) {
            die("Erreur MySQL " . mysqli_connect_errno() . " : " . mysqli_connect_error());
        }
        else {
            $mdp = sha1($_POST['password']);
            $requete = "SELECT * FROM t_users WHERE USERMAIL='$mail' #operator_and target=\"mysql_doc\">AND USERPASSWORD='$mdp'";
            mysqli_query($connexion, $requete);
            mysqli_close($connexion);
            "SELECT COUNT(*) FROM t_users";
            session_start();

            $_SESSION['mail'] = $mail;
            $_SESSION['password'] = $mdp;
        }
    }
}
else {
    echo("<p>Je viens d'ailleurs</p>");
    include("./include/formLogin.php");
}