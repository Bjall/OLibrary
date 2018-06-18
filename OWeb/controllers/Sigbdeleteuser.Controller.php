<?php 

if(!empty($_SESSION["employee"])){

	$user_id = $_GET["id"];

	$delete_user = $bdd->prepare("DELETE FROM customers WHERE customer_id = ? ");

	$delete_user->execute(array($user_id));


	$_SESSION["supprimer"] = "L'utilisateur a bien été supprimé.";

	header('Location: http://localhost/OWeb/sigbviewuser/');
}
else{

	$_SESSION["info"] = "Vous ne disposez pas des droits d'accès pour accéder à cette page !";
	header('Location: http://localhost/OWeb/');

}


