<?php 

if(!empty($_SESSION["employee"])){

	$id = $_SESSION["employee_id"];

	$sql = $bdd->prepare("SELECT * FROM messages m
		INNER JOIN customers c
		ON m.customer_id = c.customer_id
		WHERE m.employee_id = ? ");

	$sql->execute(array($id));

	$messages = $sql->fetchAll();

	require $_dir["back"]."sigbmessages.php";
}
else{

	$_SESSION["info"] = "Vous ne disposez pas des droits d'accès pour accéder à cette page !";
	header('Location: http://localhost/OWeb/');

}