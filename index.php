<?php
session_start();
include_once("./functions/CallPage.php"); ?>
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
    <script src="https://cloud.tinymce.com/stable/tinymce.min.js"></script>
    <script>tinymce.init({ selector:'textarea' });</script>
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