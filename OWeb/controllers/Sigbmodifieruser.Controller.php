<?php 

if(!empty($_SESSION["employee"])){

	// GET les infos du user

	$user_id = $_GET["id"];

	$modifier_user = $bdd->prepare("SELECT * FROM customers WHERE customer_id = ?");

	$modifier_user->execute(array($user_id));

	$user = $modifier_user->fetch();

	// GET le référant

	$ref_id = $user['contact'];

	$get_ref_name = $bdd->prepare("SELECT * FROM employees WHERE employee_id = ?");

	$get_ref_name->execute(array($ref_id));

	$ref_name = $get_ref_name->fetch();

	// UPDATE

	if(!empty($_POST)){
		if(!empty($_POST["email"]) && !empty($_POST["adresse"]) && !empty($_POST["cp"]) && !empty($_POST["ville"]) && !empty($_POST["telephone"]));
		{

			$email = $_POST["email"];
			$adresse = $_POST["adresse"];
			$cp = $_POST["cp"];
			$ville = $_POST["ville"];
			$telephone = $_POST["telephone"];

			$update_user = $bdd->prepare("UPDATE customers SET customer_email = :email, customer_address = :adresse, customer_cp = :cp, customer_city = :ville, customer_telephone = :telephone WHERE customer_id = :user_id");

			$update_user->execute(array(
				'email' => $email,
				'adresse' => $adresse,
				'cp' => $cp,
				'ville' => $ville,
				'telephone' => $telephone,
				'user_id' => $user_id
				));

			$_SESSION["modifier"] = "Les données de l'utilisateur ont bien été modifiées";

			header('Location: http://localhost/OWeb/sigbviewuser/');
		}

	}

	require $_dir["back"]."sigbmodifieruser.php";
}
else{

	$_SESSION["info"] = "Vous ne disposez pas des droits d'accès pour accéder à cette page !";
	header('Location: http://localhost/OWeb/');

}