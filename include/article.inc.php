<h1>Article</h1>
<?php
if(isset($_POST["article"])) {
    $tabErreur = array();
    $titre = $_POST['titre'];
    $chapo = $_POST['chapo'];
    $corps = $_POST['corps'];
    $date = $_POST['date'];
    if($_POST["titre"] == "")
        array_push($tabErreur, "Veuillez saisir votre titre");
    if($_POST["chapo"] == "")
        array_push($tabErreur, "Veuillez saisir votre chapô");
    if($_POST["corps"] == "")
        array_push($tabErreur, "Veuillez saisir votre article");
    if($_POST["date"] == "")
        array_push($tabErreur, "Veuillez saisir une date");
    if(count($tabErreur) != 0) {
        $message = "<ul>";
        for($i = 0 ; $i < count($tabErreur) ; $i++) {
            $message .= "<li>" . $tabErreur[$i] . "</li>";
        }
        $message .= "</ul>";
        echo($message);
        include("./include/formArticle.php");
    }
    else {
        $connexion = mysqli_connect("localhost", "root", "", "nfactoryblog");
        if (!$connexion) {
            die("Erreur MySQL " . mysqli_connect_errno() . " : " . mysqli_connect_error());
        }
        else {
            $requete = "INSERT INTO t_articles (ID_ARTICLE, ARTTITRE, ARTCHAPO,
                        ARTCONTENU, ARTDATE)
                        VALUES (NULL, '$titre', '$chapo', '$corps', '$date');";
            mysqli_query($connexion, $requete);
            mysqli_close($connexion);
            }
        }
    }
else {
    include ("./include/formArticle.php");
}