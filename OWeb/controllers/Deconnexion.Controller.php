<?php 

$_SESSION["user"] = false;
$_SESSION["employee"] = false;
unset($_SESSION["user_id"]);
unset($_SESSION["employee_id"]);

$_SESSION["info"] = "Vous vous êtes bien deconnecté, à bientôt !";

header("Location: http://localhost/OWeb");