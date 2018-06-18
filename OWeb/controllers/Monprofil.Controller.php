<?php 

if(!empty($_SESSION["user"])){

	$id = $_SESSION["user_id"];

	$sql = $bdd->prepare("SELECT * FROM customers
		WHERE customer_id = ? ");

	$sql->execute(array($id));

	$donnee = $sql->fetch();

	require $_dir["front"]."monprofil.php";
}
else{
	$_SESSION["info"] = "Il faut vous connecter pour accéder à cette page !";
	header('Location: http://localhost/OWeb/');
}
