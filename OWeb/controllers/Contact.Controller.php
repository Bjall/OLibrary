<?php 

if(!empty($_SESSION["user"])){

	$id = $_SESSION["user_id"];

	// Récupération du référent (nom et id)

	$referent = $bdd->prepare("SELECT * FROM customers c
		INNER JOIN employees e
		ON c.contact = e.employee_id
		WHERE c.customer_id = ? ");

	$referent->execute(array($id));

	$donnee = $referent->fetch();

	$contact = $donnee["employee_firstname"].' '.$donnee["employee_lastname"];
	$employee_id = $donnee["employee_id"];


	//Envoi du message


	if(!empty($_POST["objet"]) && !empty($_POST["message"])){

		$objet = htmlspecialchars($_POST["objet"]);
		$message = htmlspecialchars($_POST["message"]);

		$sql = $bdd->prepare("INSERT INTO messages(message_id, customer_id, employee_id, objet, message) VALUES (DEFAULT, :customer_id, :employee_id, :objet, :message) ");

		$sql->execute(array(
			'customer_id' => $id,
			'employee_id' => $employee_id,
			'objet' => $objet,
			'message' => $message
			));

		$_SESSION["info"] = "Votre message à bien été envoyé, votre référent en prendra compte dès que possible.";

	}

	require $_dir["front"]."contact.php";

}
else{
	$_SESSION["info"] = "Il faut vous connecter pour accéder à cette page !";
	header('Location: http://localhost/OWeb/');
}


