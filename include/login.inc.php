<h1>login</h1>
<?php
if(isset($_POST["login"])) {
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
            $requete = "SELECT * FROM t_users WHERE USERMAIL='$mail' AND USERPASSWORD='$mdp'";

            if($result = mysqli_query($connexion, $requete)){
                if(mysqli_num_rows($result) > 0) {
                    $_SESSION['login'] = 1;
                    echo "<a href=\"http://localhost/NFactoryBlog/index.php?page=accueil\">Vous êtes connectés, aller sur la page d'accueil</a>";
                }
                else
                    $_SESSION['login'] = 0;
            }
        }
        mysqli_close($connexion);
    }
}
else {
    echo("<p>Je viens d'ailleurs</p>");
    include("./include/formLogin.php");
}