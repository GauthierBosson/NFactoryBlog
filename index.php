<?php
if (isset($_COOKIE['visite'])) {
    setCookie('visite', $_COOKIE['visite'] + 1, time() + 365*24*3600);
} else {
    setCookie('visite', 1);

}
?>
<?php
session_start();
include_once("./functions/CallPage.php");
echo($_COOKIE['visite'] . " visites");
?>

<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="./assets/css/normalize.css">
    <link rel="stylesheet" href="./assets/css/styles.css">
    <title>Blog</title>
    <script src="./assets/js/functions.js"></script>
    <script type="text/javascript" src="./assets/js/tinymce/tinymce.min.js"></script>
    <script type="text/javascript">
        tinymce.init({
            selector: 'textarea'
        });
    </script>
</head>
<body>
<div id="container">
<?php include_once("./include/header.php"); ?>
<main>
    <?php
    callpage();
    ?>
</main>
<?php include_once("./include/footer.php");
?>
</div>
</body>
</html>