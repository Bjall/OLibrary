<?php

if(!empty($_POST["email"]) && !empty($_POST["nom"]) && !empty($_POST["prenom"]) && !empty($_POST["birth"]) && !empty($_POST["password"]) && !empty($_POST["confirmpassword"]) && !empty($_POST["telephone"]) && !empty($_POST["adresse"]) && !empty($_POST["codepostal"]) && !empty($_POST["ville"]) && !empty($_POST["conditions"])){

	$email = htmlspecialchars($_POST["email"]);
	$nom = htmlspecialchars($_POST["nom"]);
	$prenom = htmlspecialchars($_POST["prenom"]);
	$birth = htmlspecialchars($_POST["birth"]);
	$password = htmlspecialchars(hash("sha256", $_POST["password"]));
	$confirmpassword = htmlspecialchars(hash("sha256", $_POST["password"]));
	$telephone = htmlspecialchars($_POST["telephone"]);
	$adresse = htmlspecialchars($_POST["adresse"]);
	$codepostal = htmlspecialchars($_POST["codepostal"]);
	$ville = htmlspecialchars($_POST["ville"]);
	$conditions = htmlspecialchars($_POST["conditions"]);
	$subscription = date("Y-m-d");

	// On compte le nombre d'employés et on en prend un au hasard
	$employees = $bdd->prepare("SELECT COUNT(employee_id) FROM employees");
	$employees->execute();
	$nb_employees = $employees->fetch();

	$contact = rand(1, $nb_employees[0]);



	// On vérifie que l'email n'a jamais été utilisé
	$verif_email = $bdd->prepare("SELECT * FROM customers where customer_email = ?");
	$verif_email->execute(array($email));
	$email_unique = $verif_email->fetch();


	if(empty($email_unique)){

		if($password == $confirmpassword){

		$sql = $bdd->prepare("INSERT INTO customers(customer_id, customer_lastname, customer_firstname, customer_address, customer_cp, customer_city, customer_telephone, customer_email, customer_dateofbirth, customer_password, customer_subscriptiondate, contact) VALUES (DEFAULT, :nom, :prenom, :adresse, :codepostal, :ville, :telephone, :email, :birth, :password, :subscription, :contact)");

		$sql->execute(array(
			'nom' => $nom,
			'prenom' => $prenom,
			'adresse' => $adresse,
			'codepostal' => $codepostal,
			'ville' => $ville,
			'telephone' => $telephone,
			'email' => $email,
			'birth' => $birth,
			'password' => $password,
			'subscription' => $subscription,
			'contact' => $contact
			));

		$_SESSION["info"] = "Votre inscription a bien été enregistrée, vous pouvez vous connecter.";

		header('Location: http://localhost/OWeb/connexion/');

		}
		else{
			$_SESSION["info"] = "Attention, la confirmation de votre mot de passe n'est pas identique au premier.";
		}
	}
	else{
		$_SESSION["info"] = "Vous avez déjà un compte avec cet email, il est impossible d'avoir plusieurs comptes.";
	}

}



require $_dir["front"]."inscription.php";