<h1>Administration</h1>
<?php
if (isset($_SESSION['admin']) == 1){
    include_once ('./include/tableAdmin.php');
}