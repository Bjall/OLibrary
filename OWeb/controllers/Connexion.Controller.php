<?php

if(empty($_SESSION["employee"]) && empty($_SESSION["user"])){

	if(!empty($_POST["email"]) && !empty($_POST["password"])){

		$email = htmlspecialchars($_POST["email"]);
		$password = htmlspecialchars(hash("sha256", $_POST["password"]));


		$sql = $bdd->prepare("SELECT * FROM customers 
			WHERE customer_email = :email
			AND customer_password = :password");

		$sql->execute(array(
			'email' => $email,
			'password' => $password
			));

		$user = $sql->fetch();

		if(!empty($user)){
			$_SESSION["user"] = true;
			$_SESSION["user_id"] = $user["customer_id"];

			header('Location: http://localhost/OWeb');
		}
		else{

			$sql = $bdd->prepare("SELECT * FROM employees 
			WHERE employee_login = :email
			AND employee_password = :password");

			$sql->execute(array(
				'email' => $email,
				'password' => $password
				));

			$employee = $sql->fetch();

			if(!empty($employee)){
				$_SESSION["employee"] = true;
				$_SESSION["employee_id"] = $employee["employee_id"];

				header('Location: http://localhost/OWeb/sigbcatalogue/');
			}
			else{
				$_SESSION["info"] = "Mauvais identifiants";
			}
		}

	}

	require $_dir["front"]."connexion.php";
}
else{
	$_SESSION["info"] = "Vous êtes déjà connectez, si vous désirez vous connecter avec un autre compte, veuillez vous <a href='/OWeb/deconnexion/'>déconnecter</a> de celui sur lequel vous êtes connecté.";
	header('Location: http://localhost/OWeb/');
}