<?php
echo("<h1>Accueil</h1>");
$connexion = mysqli_connect("localhost", "root", "", "NFactoryBlog");
$reponse = mysqli_query($connexion,"SELECT * FROM `t_articles` ORDER BY `ID_ARTICLE` DESC LIMIT 5");
while ($donnees= mysqli_fetch_array($reponse)){

    echo (html_entity_decode( "<br/>".$donnees['ARTTITRE'] . "<br/>" .   $donnees['ARTCHAPO'] . "<br/>". $donnees['ARTCONTENU'] . "<br/>" ));

}
