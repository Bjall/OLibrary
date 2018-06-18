<?php 

if(!empty($_SESSION["user"])){

	$id = $_SESSION["user_id"];

	$sql = $bdd->prepare("SELECT * FROM customers
		WHERE customer_id = ? ");

	$sql->execute(array($id));

	$donnee = $sql->fetch();

	$email_de_base = $donnee["customer_email"];


	if(!empty($_POST["adresse"]) && !empty($_POST["cp"]) && !empty($_POST["ville"]) && !empty($_POST["tel"]) && !empty($_POST["password"]) && !empty($_POST["confirmpassword"]) && !empty($_POST["email"])){

		$adresse = htmlspecialchars($_POST["adresse"]);
		$cp = htmlspecialchars($_POST["cp"]);
		$ville = htmlspecialchars($_POST["ville"]);
		$tel = htmlspecialchars($_POST["tel"]);
		$password = htmlspecialchars(hash("sha256", $_POST["password"]));
		$confirmpassword = htmlspecialchars(hash("sha256", $_POST["confirmpassword"]));
		$email = htmlspecialchars($_POST["email"]);

		// On vérifie que l'email n'a jamais été utilisé
		$verif_email = $bdd->prepare("SELECT * FROM customers where customer_email = ?");
		$verif_email->execute(array($email));
		$email_unique = $verif_email->fetch();

		if(empty($email_unique) || $email == $email_de_base){

			if($password == $confirmpassword){

				$update = $bdd->prepare("UPDATE customers SET 
				customer_address = :adresse, 
				customer_cp = :cp, 
				customer_city = :ville, 
				customer_telephone = :tel, 
				customer_password = :password,
				customer_email = :email
				WHERE customer_id = :id");

				$update->execute(array(
					'adresse' => $adresse,
					'cp' => $cp,
					'ville' => $ville,
					'tel' => $tel,
					'password' => $password,
					'email' => $email,
					'id' => $id
					));

				$_SESSION["info"] = "Vos informations ont bien été modifiées.";

				header('Location: http://localhost/OWeb/monprofil/');
			}
			else{
				$_SESSION["info"] = "Attention, la confirmation de votre mot de passe n'est pas identique au premier.";
			}
		}
		else{
			$_SESSION["info"] = "Vous avez déjà un compte avec cet email, il est impossible d'avoir plusieurs comptes.";
		}

	}

	require $_dir["front"]."editprofil.php";
}
else{
	$_SESSION["info"] = "Il faut vous connecter pour accéder à cette page !";
	header('Location: http://localhost/OWeb/');
}
