<?php
session_start();
?>
<header>
<ul>
    <li><a href="index.php?page=accueil">Accueil</a></li>
    <li><a href="index.php?page=inscription">Inscription</a></li>
    <li><a href="index.php?page=login">Login</a></li>
</ul>
    <?php
    echo("<p>Bienvenue " . $_SESSION['mail'] . "</p>");
    ?>
<hr>
</header>